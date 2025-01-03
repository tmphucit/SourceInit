# Microsoft Developer Studio Project File - Name="LuaLibDll" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=LuaLibDll - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "LuaLibDll.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "LuaLibDll.mak" CFG="LuaLibDll - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "LuaLibDll - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "LuaLibDll - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/Library/LuaLib/LuaLibDll", IUBAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "LuaLibDll - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LUALIBDLL_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I ".\LuaLibDll\src" /I ".\src" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LUALIBDLL_EXPORTS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy Release\lualibdll.lib ..\..\..\Lib\lualibdll.lib	copy Release\lualibdll.dll ..\..\..\Lib\lualibdll.dll	md ..\..\..\..\bin\client\release\	copy Release\lualibdll.dll ..\..\..\..\bin\client\lualibdll.dll	copy Release\lualibdll.dll ..\..\..\..\bin\client\release\lualibdll.dll	md ..\..\..\..\bin\server\release\	copy Release\lualibdll.dll ..\..\..\..\bin\Server\lualibdll.dll	copy Release\lualibdll.dll ..\..\..\..\bin\Server\release\lualibdll.dll
# End Special Build Tool

!ELSEIF  "$(CFG)" == "LuaLibDll - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LUALIBDLL_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I ".\src" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "LUALIBDLL_EXPORTS" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy debug\lualibdll.lib ..\..\..\Lib\lualibdll.lib	copy debug\lualibdll.dll ..\..\..\Lib\lualibdll.dll	md ..\..\..\..\bin\client\debug\	copy debug\lualibdll.dll ..\..\..\..\bin\client\lualibdll.dll	md ..\..\..\..\bin\server\debug\	copy debug\lualibdll.dll ..\..\..\..\bin\server\lualibdll.dll
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "LuaLibDll - Win32 Release"
# Name "LuaLibDll - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\lapi.c
# End Source File
# Begin Source File

SOURCE=.\src\lcode.c
# End Source File
# Begin Source File

SOURCE=.\src\ldebug.c
# End Source File
# Begin Source File

SOURCE=.\src\ldo.c
# End Source File
# Begin Source File

SOURCE=.\src\lfunc.c
# End Source File
# Begin Source File

SOURCE=.\src\lgc.c
# End Source File
# Begin Source File

SOURCE=.\src\llex.c
# End Source File
# Begin Source File

SOURCE=.\src\lmem.c
# End Source File
# Begin Source File

SOURCE=.\src\lobject.c
# End Source File
# Begin Source File

SOURCE=.\src\lparser.c
# End Source File
# Begin Source File

SOURCE=.\src\lstate.c
# End Source File
# Begin Source File

SOURCE=.\src\lstring.c
# End Source File
# Begin Source File

SOURCE=.\src\ltable.c
# End Source File
# Begin Source File

SOURCE=.\src\ltests.c
# End Source File
# Begin Source File

SOURCE=.\src\ltm.c
# End Source File
# Begin Source File

SOURCE=.\src\lua.c
# End Source File
# Begin Source File

SOURCE=.\src\LuaExtend.c
# End Source File
# Begin Source File

SOURCE=.\src\lundump.c
# End Source File
# Begin Source File

SOURCE=.\src\lvm.c
# End Source File
# Begin Source File

SOURCE=.\src\lzio.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\src\lapi.h
# End Source File
# Begin Source File

SOURCE=.\src\lauxlib.h
# End Source File
# Begin Source File

SOURCE=.\src\lcode.h
# End Source File
# Begin Source File

SOURCE=.\src\ldebug.h
# End Source File
# Begin Source File

SOURCE=.\src\ldo.h
# End Source File
# Begin Source File

SOURCE=.\src\lfunc.h
# End Source File
# Begin Source File

SOURCE=.\src\lgc.h
# End Source File
# Begin Source File

SOURCE=.\src\llex.h
# End Source File
# Begin Source File

SOURCE=.\src\llimits.h
# End Source File
# Begin Source File

SOURCE=.\src\lmem.h
# End Source File
# Begin Source File

SOURCE=.\src\lobject.h
# End Source File
# Begin Source File

SOURCE=.\src\lopcodes.h
# End Source File
# Begin Source File

SOURCE=.\src\lparser.h
# End Source File
# Begin Source File

SOURCE=.\src\lstate.h
# End Source File
# Begin Source File

SOURCE=.\src\lstring.h
# End Source File
# Begin Source File

SOURCE=.\src\ltable.h
# End Source File
# Begin Source File

SOURCE=.\src\ltm.h
# End Source File
# Begin Source File

SOURCE=.\src\lua.h
# End Source File
# Begin Source File

SOURCE=.\src\luadebug.h
# End Source File
# Begin Source File

SOURCE=.\src\LuaDef.h
# End Source File
# Begin Source File

SOURCE=.\src\lualib.h
# End Source File
# Begin Source File

SOURCE=.\src\lundump.h
# End Source File
# Begin Source File

SOURCE=.\src\lvm.h
# End Source File
# Begin Source File

SOURCE=.\src\lzio.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "BaseLib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\baselib\lauxlib.c
# End Source File
# Begin Source File

SOURCE=.\src\baselib\lbaselib.c
# End Source File
# Begin Source File

SOURCE=.\src\baselib\ldblib.c
# End Source File
# Begin Source File

SOURCE=.\src\baselib\liolib.c
# End Source File
# Begin Source File

SOURCE=.\src\baselib\lmathlib.c
# End Source File
# Begin Source File

SOURCE=.\src\baselib\lstrlib.c
# End Source File
# End Group
# End Target
# End Project
