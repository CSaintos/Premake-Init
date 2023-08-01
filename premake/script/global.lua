-- global.lua

-- OS specific vars
if os.host() == "windows" then
  makeCmd = "mingw32-make"
  soSuffix = ".dll"
  soPrefix = "/"
else
  makeCmd = "make"
  soSuffix = ".so"
  soPrefix = "/lib"
end

-- paths
gL = ".."
mL = gL .. "/make"
tL = gL .. "/build"
bL = gL .. "/bin"

workspaceL = "/workspace"
  projectL = workspaceL .. "/project"

-- workspace paths
wGL = "../../.." -- root dir relative to wks
wML = (wGL .. "/make") -- make dir relative to wks

-- project paths
prjL = "%{wks.location}/%{prj.name}"
tarL = "%{wks.location}/../../build/%{wks.name}/%{prj.name}"
objL = "%{wks.location}/../../bin/%{wks.name}/%{prj.name}"

-- project functions
function initPrjLocs()
  location (prjL)
  targetdir (tarL)
  objdir (objL)
end

-- build functions
  -- copies shared object library
function copySO(fromDir, toDir, fireName)
  so.execute("{COPYFILE} "..tL..fromDir..soPrefix..fileName..soSuffix.." "..tL..toDir)
end