# cpp development boilerplate

- <https://github.com/madduci/docker-cpp-env/blob/master/README.md>
- <https://medium.com/@aharon.amir/develop-c-on-docker-with-vscode-98fb85b818b2>
- <https://www.runoob.com/docker/docker-container-usage.html>

``` bash
# 构建镜像
$ docker build --tag cpp-dev:latest ./

# 运行容器
$ docker run -itd \
         -v /d/learn/cpp_env:/home/develop/project \
         --name cpp-env-container \
         cpp-dev

# 通过容器执行命令
$ docker exec -it cpp-env-container cat main.cpp

```