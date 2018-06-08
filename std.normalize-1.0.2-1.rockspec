-- This file was automatically generated for the LuaDist project.

local _MODREV, _SPECREV = '1.0.2', '-1'

package = 'std.normalize'
version = _MODREV .. _SPECREV

description = {
   summary = 'Normalized Lua Functions',
   detailed = [[
      This module can inject deterministic versions of core Lua
      functions that do not behave identically across all supported Lua
      implementations into your module's lexical environment.   Each
      function is as thin and fast a version as is possible in each Lua
      implementation, evaluating to the Lua C implementation with no
      overhead when semantics allow.
   ]],
   homepage = 'https://lua-stdlib.github.io/normalize',
   license = 'MIT/X11',
}

-- LuaDist source
source = {
  tag = "1.0.2-1",
  url = "git://github.com/LuaDist-testing/std.normalize.git"
}
-- Original source
-- source = {
--    url = 'http://github.com/lua-stdlib/normalize/archive/v' .. _MODREV .. '.zip',
--    dir = 'normalize-' .. _MODREV,
-- }

dependencies = {
   'lua >= 5.1, < 5.4',
}

build = {
   type = 'builtin',
   modules = {
      ['std.normalize']	           = 'lib/std/normalize/init.lua',
      ['std.normalize._base']      = 'lib/std/normalize/_base.lua',
      ['std.normalize._debug']     = 'lib/std/normalize/_debug.lua',
      ['std.normalize._strict']    = 'lib/std/normalize/_strict.lua',
      ['std.normalize._typecheck'] = 'lib/std/normalize/_typecheck.lua',
      ['std.normalize.version']	   = 'lib/std/normalize/version.lua',
   },
}