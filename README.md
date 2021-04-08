# cpp development boilerplate

`CMake`, `VSCode`

## CMake


## VSCode

1. install extensions:
  - CMake
  - CMake Tools

2. .vscode

## Flow

- configure:
  - `F1`/`Ctrl + Shift + p`
  - `CMake: Configure`
    1. select `create CMakeLists.txt`
    2. enter `<new project name>`. 
    3. select `Executable`
    4. copy `CMakeLists.sample.txt` to `CMakeLists.txt` and keep `<new project name>`
    5. copy `<new project name>` to `.vscode/launch.json` for debugging
    6. remove `./main.cpp`, `CMakeLists.sample.txt`


- debug(VSCode): 
  - `F5`. Note: `.vscode/launch.json` for debug compiled file.

- build(VSCode): 
  - `F1`/`Ctrl + Shift + p`
  - `CMake: Clean Rebuild`

- run:
  - `$ ./build/<program:new project name>`
