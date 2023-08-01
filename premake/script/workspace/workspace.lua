-- workspace.lua

require "script/global"

workspace "workspace"
  configurations {"Debug", "Release"}
  location (wML..workspaceL)

  filter {"configurations:Debug"}
    defines {"DEBUG"}
    symbols "On"

  filter {"configurations:Release"}
    defines {"RELEASE"}
    optimize "On"
  
  filter {}

  -- include projects
  include "script"..projectL..".lua"

workspace "workspace"