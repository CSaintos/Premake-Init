-- build.lua

require "script/global"

function makeBuild(path)
  local cwd = os.getcwd()
  os.chdir(path)
  os.execute(makeCmd)
  os.chdir(cwd)
end

newaction {
  trigger = "build",
  description = "Build project with make",

  newoption {
    trigger = "workspace",
    value = "project",
    description = "Build project",
    allowed = {
      {"project", "project lib|exe"},
      {"all", "all workspace projects"}
    }
  },

  execute = function()
    if (_OPTIONS["workspace"] == "project") then
      print "Building project lib|exe"
      makeBuild(mL..projectL)
      copySO(projectL, projectL, "project")
    elseif (_OPTIONS["workspace"] == "all") then
      print "Building all projects in workspace"
      makeBuild(mL..workspaceL)
    end
  end
}