[TOC]
# 关于使用jetty部署war包后调用其他接口不通的问题
## 1、现象描述
> 用eclipse工具开发java的web项目，eclipse上也是集成jetty服务器，开发调试的时候调用外部接口都一切正常的，（当时调用的tencent的地图的接口），但是把项目打成war后，扔到jetty的webapp目录下面，通过命令java -jar start.jar启动后，本省系统功能都是一切正常的，但是当访问地图接口时就出现异常的，感觉是连接有异常的原因，整了很久都不知道原因，开始考虑过是jetty版本的问题，但是换了好几个版本都是不行。后来是觉得是编码是不是有什么问题，然后就查找问问同事，试了一下还真是。
## 2.解决办法
> 启动的时候，启动命令如下：java -Dfile.encoding=UTF-8 -jar start.jar  
> ![](https://i.imgur.com/73x12A4.png)
> 图中我把命令写为一个bat文件，双击直接运行就行了，但是启动后发现，启动日志中的中文都变成了乱码，估计就是项目的编码和jetty服务器的编码有冲突造成了，因为比较急所以没去纠结怎么觉得这个乱码的问题，
## 3.扩充
> 直接像上图那样启动，会默认在C:\Users\Administrator\AppData\Local\Temp目录下解压war包，直接在jetty的根目录下间一个work文件夹，jetty就会把war文件解压到这里。