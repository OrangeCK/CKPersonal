## Linux的常用快捷键
- .**Ctrl + C**：这个是用来终止当前命令的快捷键，当然你也可以输入一大串字符，不想让它运行直接Ctrl + C，光标就会跳入下一行
- .**Tab：** 这个键是最有用的键了，也是笔者敲击概率最高的一个键。因为当你打一个命令打一半时，它会帮你补全的。不光是命令，当你打一个目录时，同样可以补全，不信你试试
- .**Ctrl + D：** 退出当前终端，同样你也可以输入exit。
- .**Ctrl + Z：** 暂停当前进程，比如你正运行一个命令，突然觉得有点问题想暂停一下，就可以使用这个快捷键。暂停后，可以使用fg 恢复它。
- .**Ctrl + L：** 清屏，使光标移动到第一行。
## linux切换用户
- 在linux中切换账户可以使用命令su,不论是root账户切换成普通用户，还是反之。
- 用法：使用root用户切换普通用户时直接 su 普通用户名 就可以了；使用普通用户切换至root用户时 su -或者 su root 然后输入root密码就可以了。
- 在大都的linux的版本中，都可以使用su或者su -，但是su和su -还是有一定的差别的：su只是切换了root身份，但Shell环境仍然是普通用户的Shell；而su -连用户和Shell环境一起切换成root身份了。只有切换了Shell环境才不会出现PATH环境变量错误。su切换成root用户以后，pwd一下，发现工作目录仍然是普通用户的工作目录；而用su -命令切换以后，工作目录变成root的工作目录了。用echo $PATH命令看一下su和su -以后的环境变量有何不同。以此类推，要从当前用户切换到其它用户也一样，应该使用su -命令。
## linux的后缀名
- 对于后缀名这个概念，相信你不陌生吧。在linux系统中，文件的后缀名并没有具体意义，也就是说，你加或者不加，都无所谓。但是为了容易区分，linux爱好者们都习惯给文件加一个后缀名，这样当用户看到这个文件名时就会很快想到它到底是一个什么文件。例如1.sh, 2.tar.gz, my.cnf, test.zip等等，如果你首次接触这些文件，你也许会感到很晕，没有关系，随着学习的深入，你就会逐渐的了解这些文件了。笔者所列举的几个文件名中1.sh代表它是一个shell script ，2.tar.gz 代表它是一个压缩包，my.cnf 代表它是一个配置文件，test.zip 代表它是一个压缩文件。
- 另外需要你知道的是，早期Unix系统文件名最多允许14个字符，而新的Unix或者linux系统中，文件名最长可以到达 256 个字符！