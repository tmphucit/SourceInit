// Lock.cpp: implementation of the CLockXXXX class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Lock.h"


//////////////////////////////////////////////////////////////////////
// CLockSRSW Construction/Destruction
//////////////////////////////////////////////////////////////////////

CLockSRSW::CLockSRSW()
{
	::InitializeCriticalSection(&m_csExclusive);
}

CLockSRSW::~CLockSRSW()
{
	::DeleteCriticalSection(&m_csExclusive);
}


void CLockSRSW::EnterRead()
{
	::EnterCriticalSection(&m_csExclusive);
}

void CLockSRSW::LeaveRead()
{
	::LeaveCriticalSection(&m_csExclusive);
}

void CLockSRSW::EnterWrite()
{
	::EnterCriticalSection(&m_csExclusive);
}

void CLockSRSW::LeaveWrite()
{
	::LeaveCriticalSection(&m_csExclusive);
}



//////////////////////////////////////////////////////////////////////
// CLockMRSW Construction/Destruction
//////////////////////////////////////////////////////////////////////

CLockMRSW::CLockMRSW()
	: m_eventIdle(::CreateEvent(NULL, TRUE, TRUE, NULL)), m_lUsing(-1L)
{
	::InitializeCriticalSection(&m_csModi);
	::InitializeCriticalSection(&m_csExclusive);
}

CLockMRSW::~CLockMRSW()
{
	::DeleteCriticalSection(&m_csExclusive);
	::DeleteCriticalSection(&m_csModi);
	::CloseHandle(m_eventIdle);
}


void CLockMRSW::EnterRead()
{
	::EnterCriticalSection(&m_csExclusive);
	::EnterCriticalSection(&m_csModi);
	if (++m_lUsing == 0)
		::ResetEvent(m_eventIdle);
	::LeaveCriticalSection(&m_csModi);
	::LeaveCriticalSection(&m_csExclusive);
}

void CLockMRSW::LeaveRead()
{
	::EnterCriticalSection(&m_csModi);
	if (--m_lUsing < 0)
		::SetEvent(m_eventIdle);
	::LeaveCriticalSection(&m_csModi);
}

void CLockMRSW::EnterWrite()
{
	::EnterCriticalSection(&m_csExclusive);
	::WaitForSingleObject(m_eventIdle, INFINITE);
}

void CLockMRSW::LeaveWrite()
{
	::LeaveCriticalSection(&m_csExclusive);
}

