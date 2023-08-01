-- project.lua

require "script/global"
require "script/libs"

--! Change me
project "project"
  kind "SharedLib|ConsoleApp"
  language "C++"
  initPrjLocs()
  -- buildoptions {}
  -- linkoptions {}

  files {
    (wGL.."/workspace/src/**.cpp")
  }

  includedirs {
    (wGL.."/workspace/inc")
  }

  useExampleLib()

project "project"