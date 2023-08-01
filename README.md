# Premake_Init

## What is it?
--- 
PremakeInit is my personal [Premake](https://github.com/premake/premake-core) build setup snippet for building C++ projects using premake and GNU make.

Unlike other build setups that may be commonly found online, PremakeInit uses only Lua and doesn't require any other language scripts such as Batch, Powershell, Python, Bash, etc... to automate Premake.

## Default Project Structure
---
By default or convention (personal), the typical project structure is shown as follows:
```
- root/
  - premake/
    - script/
      - cmd/
        build.lua
        clean.lua
      - workspace/
        project.lua
        workspace.lua
      - global.lua
      libs.lua
    LICENSE.txt
    premake5
    premake5.lua
    .gitignore
  - workspace/
    - inc/
    - src/
```

## How to Install?

- Step 1. [Download Premake](https://premake.github.io/download/)
- Step 2. Clone PremakeInit (this repo) somewhere on your machine where you keep code snippets or the sort.
- Step 3. Copy the Premake binaries you downloaded into your local PremakeInit repo.
- Step 4 (Optional). Create a terminal command that copies your local repo **contents** (not the repo itself) into your current working directory. 
  - Make sure to delete the `README.md` in this repo to avoid `README.md` collision.
  - Make sure your copy command doesn't copy the `.git` directory. (You can also just delete the `.git` directory).
  - You are free to delete the `.gitignore` and modify the `premake/.gitignore`.

## How to Use?

When you want to create a new C++ project and build it using Make, make a copy of your PremakeInit local repo **contents** into your new project directory.
- If you followed [step 4](#how-to-install), then you can simply call the terminal command to do this for you.
If you haven't done so already, create a C++ project workspace with your source code and headers in your project folder following the [convention](#default-project-structure).
Next, configure the Premake build scripts in the premake directory to build your workspace. For more info on Premake and writing build scripts see their [documentation](https://premake.github.io/docs/).
Finally, open a terminal in the premake directory and execute your premake commands for building your C++ project.
- `./premake5 gmake2`
- `./preamek5 build --{workspace}={project}`
- For a list of premake commands:
  - `./premake5 --help`

[//]: # (## Extras)
