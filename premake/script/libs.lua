-- libs.lua

require "global"

--! Change me
function useExampleLib()
  libdirs {
    (wGL .. "path/to/library")
  }
  links {
    ("libName:shared|static")
  }
end