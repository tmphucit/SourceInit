/*
** $Id: lualib.h,v 1.14 2000/10/27 16:15:53 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/


#ifndef lualib_h
#define lualib_h

#include "lua.h"

/*
#ifndef LUALIB_API
#define LUALIB_API	extern
#endif
*/

#ifndef LUALIB_API
#define LUA_EXPORTS
#ifdef LUA_EXPORTS
#define LUALIB_API extern __declspec(dllexport)
#else
#define LUALIB_API extern __declspec(dllimport)
#endif
#endif







#ifdef __cplusplus
extern "C" {
#endif 

#define LUA_ALERT               "_ALERT"

LUALIB_API void lua_baselibopen (lua_State *L);
LUALIB_API void lua_iolibopen (lua_State *L);
LUALIB_API void lua_strlibopen (lua_State *L);
LUALIB_API void lua_mathlibopen (lua_State *L);
LUALIB_API void lua_dblibopen (lua_State *L);



/* Auxiliary functions (private) */

const char *luaI_classend (lua_State *L, const char *p);
int luaI_singlematch (int c, const char *p, const char *ep);

#ifdef __cplusplus
}
#endif 
	

#endif
