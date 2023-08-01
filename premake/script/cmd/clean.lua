-- clean.lua

require "script/global"

newaction {
  trigger = "clean",
  description = "Clean workspace (build) default",

  newoption {
    trigger = "make",
    value = "workspace",
    description = "Clean make files",
    allowed = {
      {"workspace", "A workspace"},
      {"all", "all workspaces"}
    }
  },

  newoption {
    trigger = "build",
    value = "project",
    description = "Clean build(s)",
    allowed = {
      {"workspace-project", "workspace: project"},
      {"workspace-all", "workspace: all projects"},
      {"all", "all workspaces: all projects"}
    }
  },

  newoption {
    trigger = "bin",
    description = "Clean binaries"
  },

  newoption {
    trigger = "all",
    description = "All options"
  },

  execute = function()
    -- evaluate options and execute clean
    if (_OPTIONS["make"] == "workspace") then
      print("Deleting "..mL..workspaceL)
      os.rmdir(mL..workspaceL)
    elseif (_OPTIONS["make"] == "all") then
      print("Deleting "..mL)
      os.rmdir(mL)
    elseif (_OPTIONS["build"] == "workspace-project") then
      print("Deleting "..tL..projectL)
      os.rmdir(tL..projectL)
    elseif (_OPTIONS["build"] == "workspace-all") then
      print("Deleting "..tL..workspaceL)
      os.rmdir(tL..workspaceL)
    elseif (_OPTIONS["build"] == "all") then
      print("Deleting "..tL)
      os.rmdir(tL)
    elseif (_OPTIONS["bin"]) then
      print("Deleting "..bL)
      os.rmdir(bL)
    elseif (_OPTIONS["all"]) then
      print("Deleting "..mL..", "..tL..", and "..bL)
      os.rmdir(mL)
      os.rmdir(tL)
      os.rmdir(bL)
    end
  end
}