# Microsoft Developer Studio Project File - Name="Goddess" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Goddess - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Goddess.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Goddess.mak" CFG="Goddess - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Goddess - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Goddess - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/SwordOnline/Sources/MultiServer/Goddess", KFTAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Goddess - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\Common\\" /I "..\Rainbow\Interface" /I "..\Heaven\Interface" /I "..\..\..\lib" /I "..\..\..\Headers" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib LIBCMTD.lib libcmt.lib /nologo /subsystem:windows /map /debug /machine:I386
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=md ..\..\..\..\bin\Server\release\	copy release\Goddess.exe ..\..\..\..\bin\Server\Goddess.exe	copy release\Goddess.exe ..\..\..\..\bin\Server\release\Goddess.exe
# End Special Build Tool

!ELSEIF  "$(CFG)" == "Goddess - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\Common\\" /I "..\Rainbow\Interface" /I "..\Heaven\Interface" /I "..\..\..\lib" /I "..\..\..\Headers" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib LIBCMTD.lib libcmt.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=md ..\..\..\..\bin\Server\debug\	copy debug\Goddess.exe ..\..\..\..\bin\Server\Goddess.exe	copy debug\Goddess.exe ..\..\..\..\bin\Server\debug\Goddess.exe
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "Goddess - Win32 Release"
# Name "Goddess - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\ClientNode.cpp
# End Source File
# Begin Source File

SOURCE=.\DBBackup.cpp
# End Source File
# Begin Source File

SOURCE=.\DBDumpLoad.cpp
# End Source File
# Begin Source File

SOURCE=.\DBTable.cpp
# End Source File
# Begin Source File

SOURCE=.\FilterTextLib.cpp
# End Source File
# Begin Source File

SOURCE=.\Goddess.cpp
# End Source File
# Begin Source File

SOURCE=.\IDBRoleServer.cpp
# End Source File
# Begin Source File

SOURCE=.\RoleNameFilter.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\ClientNode.h
# End Source File
# Begin Source File

SOURCE=.\db.h
# End Source File
# Begin Source File

SOURCE=.\DBBackup.h
# End Source File
# Begin Source File

SOURCE=.\DBDumpLoad.h
# End Source File
# Begin Source File

SOURCE=.\DBTable.h
# End Source File
# Begin Source File

SOURCE=.\FilterTextLib.h
# End Source File
# Begin Source File

SOURCE=.\IDBRoleServer.h
# End Source File
# Begin Source File

SOURCE=.\RoleNameFilter.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\goddess.ico
# End Source File
# Begin Source File

SOURCE=.\Goddess.rc
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "lib"

# PROP Default_Filter ""
# Begin Group "debug"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\..\Lib\debug\common.lib

!IF  "$(CFG)" == "Goddess - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Goddess - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "release"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\..\Lib\release\common.lib

!IF  "$(CFG)" == "Goddess - Win32 Release"

!ELSEIF  "$(CFG)" == "Goddess - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\libdb41s.lib
# End Source File
# End Target
# End Project
