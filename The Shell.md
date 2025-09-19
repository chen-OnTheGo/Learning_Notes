## 
当我们与计算机交互时，一旦我们想要做更多的事情，而不仅仅是可以使用的可视化界面，那么 shell 将会成为我们与我们的计算机交互的主要方式之一。这些可视化界面在某种程度上限制了我们所能做的事情，因为你只能做那些用于输入域的滑块的 | | 按钮的事情，因为这些文本工具通常是建立在可以相互组合的基础上，而且还有大量的不同方法来组合它们或对它们进行编程和自动化，这就是为什么需要我们重点关注这些命令行和基于文本的工具。而shell将是我们完成大部分工作的地方，因此对于不熟悉shell的人来说大多数平台


| often these textual tools are built to       | 通常这些文本工具被构建                                     |     |
| -------------------------------------------- | ----------------------------------------------- | --- |
| be both composable with one another but      | 为 两者都可以相互组合，而且                                  |     |
| also to have tons of different ways to       | 还有大量不同的方法来                                      |     |
| combine them or ways to program and          | 组合它们或对它们进行编程和                                   |     |
| automate them and that is why in this        | 自动化，这就是为什么在本                                    |     |
| class we will be focusing on these           | 课程中我们将重点关注这些                                    |     |
| command line or text-based tools and the     | 命令行或基于文本的工具，而                                   |     |
| shell is the place that you would do         | shell 是 您将完成                                    |     |
| most of this work so for those of you        | 大部分工作，因此对于那些                                    |     |
| are not familiar with the shell most         | 不熟悉 shell 的人来说，大多数                              |     |
| platform provides some kind of shell on      | 平台在 Windows 上提供某种 shell，                        |     |
| Windows this is often PowerShell but         | 这通常是 PowerShell，但在 Linux 上的 Windows 上           |     |
| there are also other shells available on     | 也有其他可用的 shell，                                  |     |
| Windows on Linux you will find tons of       | 您会发现大量                                          |     |
| terminals these are windows that allow       | 终端，这些是 允许                                       |     |
| you to display shells and you'll also        | 您显示 shell 的窗口，您还会                               |     |
| find many different types of shells the      | 发现许多不同类型的 shell，                                |     |
| most common of which is bash or the born     | 其中最常见的是 bash 或                                  |     |
| again shell because it's such a common       | 重生 shell，因为它是一种常见的                              |     |
| shell it is the one we're primarily          | shell，我们                                        |     |
| going to be covering in these lectures       | 将在这些 shell 中主要介绍它                               |     |
| if you're on Mac OS you will probably        | 如果你使用 Mac OS，你可能还会                              |     |
| also have bash maybe an older version of     | 有 bash，                                         |     |
| it if you open the terminal app and so       | 如果你打开终端应用程序，可能还会有 bash 的旧版本，因此，                 |     |
| if you want to follow along on any of        | 如果你想在任何                                         |     |
| these platforms feel free but keep in        | 这些平台上学习，请随意，但请                                  |     |
| mind that most of this is going to be        | 记住，其中大部分是 就                                     |     |
| sort of Linux centric in terms of how we     | 我们如何教授它而言，将以 Linux 为中心，                         |     |
| teach it even though most of these tools     | 即使这些工具中的大多数都可以                                  |     |
| work on all the platforms if you want to     | 在所有平台上运行，如果您想                                   |     |
| install a terminal and a shell and you       | 安装终端和 shell 并且您                                 |     |
| don't know how to do it well we're happy     | 不知道如何做好，我们很高兴                                   |     |
| to show you at office hours or it's          | 在办公时间向您展示，或者                                    |     |
| usually very easy to just Google like        | 通常很容易只是谷歌喜欢                                     |     |
| your platform plus like terminal and you     | 您的平台加上喜欢终端，                                     |     |
| will get one now when you open a             | 现在当您打开                                          |     |
| terminal you get something that looks a      | 终端时，您会得到一个看起来有点                                 |     |
| little bit like this so it will usually      | 像这样的东西，所以它通常                                    |     |
| have just a single line at the top and       | 只有一行 在顶部，                                       |     |
| this is what's known as the shell prompt     | 这就是所谓的 shell 提示符，                               |     |
| you can see that my shell prompt looks       | 您可以看到我的 shell 提示符看起来                            |     |
| like this it has my user name the name       | 像这样，它有我的用户名、我所在的                                |     |
| of the machine that I'm on the current       | 当前路径上的计算机的名称，                                   |     |
| path I'm on and we will talk about paths     | 我们将讨论路径 过了一会儿，                                  |     |
| a little bit later and then it's really      | 然后它真的                                           |     |
| just sort of blinking they're asking me      | 只是眨眼，他们要求我                                      |     |
| for input and this is the shell prompt       | 输入，这是 shell 提示符，                                |     |
| where you tell the shell what you want       | 你可以在其中告诉 shell 你想要                              |     |
| it to do and you can customize this          | 它做什么，你可以自定义这个                                   |     |
| prompt a lot and when you open it on         | 提示符很多，当你打开它时                                    |     |
| your machine it might not look exactly       | 你的机器它可能看起来不完全                                   |     |
| like this it might look something like       | 像这样                                             |     |
| this if you've configured it a little or     | 如果你稍微配置了它它可能看起来像这样或者                            |     |
| it might look all sorts of different         | 它可能看起来有各种不同的                                    |     |
| ways we won't go too much into               | 方式我们不会过多地                                       |     |
| customizing your shell in this               | 定制你的shell，                                      |     |
| particularly                                 | 特别是                                             |     |
| we'll do that later here we're just          | 我们会这样做 稍后我们将                                    |     |
| going to talk about how do you use this      | 讨论如何使用这个                                        |     |
| shell to do useful things and this is        | shell 来做有用的事情，这是                                |     |
| our the main textual interface you have      | 我们的主要文本界面，您可以通过                                 |     |
| to your computer's through this shell on     | 这个 shell 在                                      |     |
| the shell prompt you get to write            | shell 提示符上编写                                    |     |
| commands and commands can be relatively      | 命令，并且命令可以是 相对                                   |     |
| straightforward things usually it'll be      | 简单的事情通常                                         |     |
| something like executing programs with       | 就像执行带参数的程序一样，                                   |     |
| arguments what does that look like well      | -                                               |     |
| one program we can execute is the date       | 我们可以执行的一个程序是日期                                  |     |
| program we just type date and press          | 程序，我们只需键入日期并按                                   |     |
| enter and then it will show you              | Enter 键，然后它就会                                   |     |
| unsurprisingly the date and time you can     | 毫不奇怪地显示您也可以执行的日期和时间 使用                          |     |
| also execute a program with arguments        | 参数执行程序                                          |     |
| this is one way to modify the behavior       | 这是修改程序行为的一种方法，                                  |     |
| of the program so for example there is a     | 例如有一个                                           |     |
| program called echo and echo just prints     | 名为 echo 的程序，echo 只是打印                           |     |
| out the arguments that you give it and       | 出您提供的参数，而                                       |     |
| arguments are just white space separated     | 参数只是程序名称后面的空格分隔的                                |     |
| things that follow the program name so       | 内容，因此                                           |     |
| we can say hello and then it will print      | 我们可以说你好，然后它会打印                                  |     |
| hello back                                   | 你好，                                             |     |
| perhaps not terribly surprising but this     | 也许这并不令人惊讶，但这                                    |     |
| is the very basics of arguments one          | 是参数的基础知识，                                       |     |
| thing that you'll notice is that I said      | 你会注意到的一件事是我说                                    |     |
| that arguments are separated by              | 参数是用                                            |     |
| whitespace and you might wonder well         | 空格分隔的，你可能想知道                                    |     |
| what if I want an argument as multiple       | 如果我想要一个参数怎么办？ 参数作为多个                            |     |
| words you can also quote things so you       | 单词，您也可以引用一些东西，这样您就                              |     |
| can do things like echo hello space          | 可以执行诸如 echo hello space                         |     |
| world and now the echo program receives      | world 之类的操作，现在 echo 程序接收                        |     |
| one argument that contains the string        | 一个包含字符串                                         |     |
| hello world with a space well you can        | hello world 和空格的参数，您                            |     |
| also use single quotes for this and the      | 也可以为此使用单引号以及单引号和                                |     |
| difference between single quotes and         | 单引号之间的区别 引号和                                    |     |
| double quotes will get back to and when      | 双引号将回到当                                         |     |
| we talk about bash scripting you can         | 我们谈论 bash 脚本时，您                                 |     |
| also just escape single characters so        | 也可以只转义单个字符，因此                                   |     |
| for example hello world this will also       | 例如 hello world 这也将                              |     |
| work just fine all of these rules about      | 很好地工作所有这些关于                                     |     |
| how you escape and how you parse and         | 如何转义以及如何解析和                                     |     |
| quote various arguments and variables        | 引用各种参数的规则以及                                     |     |
| we'll cover a little bit later hopefully     | 我们稍后会介绍一些变量，希望                                  |     |
| you won't run into too many we oughta        | 您不会遇到太多我们应该                                     |     |
| tease about this just keep in mind at        | 嘲笑的变量，只要记住                                      |     |
| least that spaces separate arguments so      | 至少用空格分隔参数，所以                                    |     |
| if you want to do something like make a      | 如果您想做一些类似创建一个                                   |     |
| directory called my photos                   | 名为“我的照片”的目录之类的事情，                               |     |
| you can't just type like make directory      | 您可以' 不只是像 make directory                        |     |
| my photos it will create two directories     | my photos 这样输入，它会创建两个目录，                        |     |
| one called my and one called photos and      | 一个称为 my，一个称为 photos，                            |     |
| that is probably not what you want now       | 这可能不是您想要的，现在                                    |     |
| one thing you might ask is how does the      | 您可能会问的一件事是，                                     |     |
| shell know what these programs are when      | 当                                               |     |
| I type date or when I type echo how does     | 我输入 date 或何时时，shell 如何知道这些程序是什么 我输入 echo 它如何    |     |
| it know what these programs are supposed     | 知道这些程序应                                         |     |
| to do and the answer to this is your         | 该做什么，答案是您的                                      |     |
| program your                                 | 程序您的                                            |     |
| computer has a bunch of built-in             | 计算机有一堆内置                                        |     |
| programs that comes with the machine         | 程序，这些程序与机器一起提供，                                 |     |
| just like you your machine my chip with      | 就像您一样，您的机器，我的芯片，                                |     |
| like the terminal app or it might chip       | 例如终端应用程序或 它可能与                                  |     |
| with like Windows Explorer or at my chip     | Windows 资源管理器或我的芯片上的                            |     |
| with some kind of browser it also ships      | 某种浏览器一起使用，它还附带                                  |     |
| with a bunch of terminal centric             | 了一堆以终端为中心的                                      |     |
| applications and these are stored on         | 应用程序，这些应用程序存储在                                  |     |
| your file system and your shell has a        | 您的文件系统中，并且您的 shell 有一种                          |     |
| way to determine where a program is          | 方法来确定程序所在的位置，                                   |     |
| located basically has a way to search        | 基本上有一个                                          |     |
| for programs it does this through            | 搜索程序的方法是通过                                      |     |
| something called an invariant                | 称为不变                                            |     |
| environment variable an environment          | 环境变量的东西来实现的。环境                                  |     |
| variable is a variable like you might be     | 变量是一个像您可能                                       |     |
| used to for programming languages it         | 习惯的编程语言一样的变量，事实                                 |     |
| turns out that the shell and the             | 证明，shell 和                                      |     |
| bourne-again shell in particular is          | 特别是 bourne-again shell 实际上是                     |     |
| really a programming language this           | 一种编程语言，这                                        |     |
| prompt that you're given here is not         | 这里给出的提示                                         |     |
| just able to run a program with              | 不仅仅是能够运行带                                       |     |
| arguments. You can also do things like       | 参数的程序。 您还可以执行                                   |     |
| while loops, for loops, conditionals...      | while 循环、for 循环、条件语句等操作...                      |     |
| All of these - you can define                | 所有这些 - 您可以定义                                    |     |
| functions, you can have variables, and all   | 函数、可以拥有变量，以及                                    |     |
| of these things you can do in the shell.     | 所有这些操作都可以在 shell 中执行。                           |     |
| We'll cover a lot of that in the next        | 我们将在下一个关于                                       |     |
| lecture, on shell scripting. For now,        | shell 脚本的讲座中介绍很多内容。                             |     |
| though, let's just look at this              | 不过，现在我们只看一下这个                                   |     |
| particular environment variable.             | 特定的环境变量。                                        |     |
| Environment variables are things that        | 环境变量是                                           |     |
| are set whenever you start your shell        | 每次启动 shell 时设置的东西，                              |     |
| they're not things you have to set every     | 它们不是每次                                          |     |
| time you run your shell there are a          | 运行 shell 时都必须设置的东西，有                            |     |
| bunch of these that are set things like      | 很多设置的东西，例如                                      |     |
| where is your home directory what is         | 你的主目录在哪里，                                       |     |
| your username and there's also one           | 你的用户名是什么，还有                                     |     |
| that's critical for this particular          | 对于这个特定                                          |     |
| purpose which is the path variable so if     | 目的来说至关重要的是路径变量，所以如果                             |     |
| I echo out dollar path this is going to      | 我回显美元路径，这将向                                     |     |
| show me all of the paths on my machine       | 我显示我的机器上                                        |     |
| that the shell will search for programs      | shell 将搜索程序的所有路径，                               |     |
| you'll notice that this is a list that       | 您会注意到这是一个列表 用                                   |     |
| is colon separated it might be kind of       | 冒号分隔的它可能有点                                      |     |
| long and hard to read but the essentials     | 长且难以阅读，但要点                                      |     |
| is that - whenever you type the name of      | 是 - 每当您键入                                       |     |
| a program is gonna search through this       | 程序名称时，都会搜索                                      |     |
| list of paths on your machine and it's       | 计算机上的路径列表，并且                                    |     |
| gonna look in each directory for a           | 会在每个目录中查找                                       |     |
| program or a file whose name matches the     | 程序或文件 其名称与您                                     |     |
| command you try to run so in my case         | 尝试运行的命令相匹配，因此在我的情况下，                            |     |
| when I try to run date or echo it's          | 当我尝试运行 date 或 echo 时，它                          |     |
| gonna walk through these one at a time       | 会一次遍历这些命令，                                      |     |
| until it finds one that contains the         | 直到找到一个包含                                        |     |
| program called date or echo and then         | 名为 date 或 echo 的程序，然后                           |     |
| it's gonna run it if we want to know         | 如果我们运行它，它将运行它 想要知道它                             |     |
| which one it actually runs there's a         | 实际运行的是哪一个，有一个                                   |     |
| command called which which lets us do        | 名为 which 的命令可以让我们这样做，                           |     |
| that so I can type which echo and will       | 这样我就可以输入 which echo 并                           |     |
| tell me that if I were to run a program      | 告诉我，如果我要运行一个                                    |     |
| called echo I would run this one it's        | 名为 echo 的程序，我会运行这个程序，                           |     |
| worth pausing here to talk about what        | 值得在这里暂停一下来讨论一下                                  |     |
| paths are so paths are a way to name the     | 路径是什么，所以路径是                                     |     |
| location of a file on your computer on       | 在                                               |     |
| Linux and Oh Mac OS these paths are          | Linux 和 Mac OS 上命名计算机上文件位置的一种方式，这些路径            |     |
| separated by slashes forward slashes so      | 由斜杠正斜杠分隔，因此                                     |     |
| you'll see here that this is in the in       | 您会在这里看到它位于                                      |     |
| the root directory so the slash at the       | 根目录中，因此斜杠                                       |     |
| very beginning indicates that this is        | 最开始表示这是                                         |     |
| starting from the top of the file system     | 从文件系统的顶部开始，                                     |     |
| then look inside the directory called        | 然后查看名为                                          |     |
| USR then look inside the directory bin       | USR 的目录，然后查看目录 bin，                             |     |
| and then look for the file called echo       | 然后在 Windows 上查找名为 echo 的文件，                     |     |
| on windows paths like this are usually       | 这样的路径通常                                         |     |
| separated by back slashes instead and        | 由反斜杠分隔，                                         |     |
| we're on Linux and Mac OS everything         | 我们在 Linux 和 Mac OS 上，所有内容都                      |     |
| lives under the root name space so all       | 位于根名称空间下，因此所有                                   |     |
| paths start with a slash or all absolute     | 路径都以斜杠开头，或者                                     |     |
| paths on Windows there is one root for       | Windows 上的所有绝对路径都以绝对路径开头，每个分区都有一个根，             |     |
| every partition so you might have seen       | 因此您可能会看到诸如                                      |     |
| things like C colon backslash or D colon     | C 冒号反斜杠或 D 冒号反斜杠之类的内容，                          |     |
| backslash so Windows has separate sort       | 因此 Windows 为您拥有的每个驱动器都有单独的                      |     |
| of file system path hierarchies for each     | 文件系统路径层次结构，                                     |     |
| each Drive that you have                     | -                                               |     |
| whereas on Linux and Mac OS these are        | 而在 Linux 和 Mac OS 上，这些                          |     |
| all mounted under one namespace you'll       | 都安装在同一个名称空间下，您会                                 |     |
| notice that I said the word absolute         | 注意到我说的是“绝对                                      |     |
| path and you might not know what that        | 路径”一词，您可能不知道这                                   |     |
| means so absolute paths are paths that       | 意味着什么，所以绝对 路径是                                  |     |
| fully determine the location of a file       | 完全确定文件位置的路径，                                    |     |
| so in this case this is saying this is       | 因此在这种情况下，这意味着这                                  |     |
| talking only about a specific echo file      | 仅讨论特定的回显文件，                                     |     |
| and it's giving you the the full path to     | 并且它为您提供                                         |     |
| that file but there are also things          | 该文件的完整路径，但也有一些                                  |     |
| known as relative paths so a relative        | 称为相对路径的东西，因此相对路径                                |     |
| path is relative to where you currently      | 路径是相对于您当前所在位置的                                  |     |
| are and so the way we find out where we      | ，因此我们找出                                         |     |
| currently are is you can type PWD for        | 当前所在位置的方法是您可以输入 PWD 作为                          |     |
| present working directory present print      | 当前工作目录 当前打印                                     |     |
| working directory so if I type PWD it        | 工作目录，因此如果我输入 PWD 它将                             |     |
| will print out the current path that I'm     | 打印出我所在的当前路径                                     |     |
| in right so currently I'm in the home        | 所以目前我位于                                         |     |
| directory under the root and then John       | 根目录下的主目录中，然后是约翰                                 |     |
| under that and then dev under that etc       | 在该目录下，然后是开发在该目录下，等等，                            |     |
| from here I can then choose to change my     | 然后我可以选择更改我                                      |     |
| current working directory and all            | 当前的工作目录，并且所有                                    |     |
| relative paths are relative to the           | 相对路径都是相对于                                       |     |
| current working directory which is           | 当前工作目录的，这基本上是                                   |     |
| basically where you                          | -                                               |     |
| they are in this case for example I can      | 在这种情况下，例如，我可以                                   |     |
| do CD / home CDs change directory this       | 执行 CD / home CD 更改目录，这                          |     |
| is the way that I change what my current     | 是我更改当前                                          |     |
| working directory is in this case I          | 工作目录的方式，在这种情况下，我                                |     |
| change to home and I am now you'll see       | 更改为 home，现在您将看到                                 |     |
| my my shell prompt change to say that I      | 我的 shell 提示符更改 说我                               |     |
| am now in home it just gives me the name     | 现在在家，它只会给我                                      |     |
| of the last segment of the path but you      | 路径最后一段的名称，但你                                    |     |
| can also configure your terminal to give     | 也可以配置你的终端，                                      |     |
| you the full path whenever you're            | 无论你在哪里，都可以给你完整路径，                               |     |
| anywhere and now if I type PWD again it      | 现在如果我再次输入 PWD，它                                 |     |
| will tell me I'm in slash home there are     | 会告诉我 我在斜杠主页中                                    |     |
| also a couple of special directories         | 还存在一些特殊目录，其中                                    |     |
| that exist there is dot and dot dot dot      | 有点和点点                                           |     |
| means the current directory dot dot          | 表示当前目录点点                                        |     |
| means the parent directory so this is a      | 表示父目录，因此这是                                      |     |
| way that you can easily navigate around      | 您可以轻松地在系统中导航的一种方式，                              |     |
| the system for example here if I type CD     | 例如这里如果 我输入 CD                                   |     |
| dot dot it will tell me that I am now in     | dot dot 它会告诉我，我现在在                              |     |
| slash so I'm now in the root of the file     | 斜杠中，所以我现在在文件系统的根目录中，                            |     |
| system I was in slash home now I'm in        | 我在斜杠 home 中，现在我在                                |     |
| slash and indeed if I type PWD well it       | 斜杠中，实际上，如果我正确输入 PWD，它                           |     |
| will do that right thing and I can also      | 会正确执行此操作 然后我还可以                                 |     |
| then use relative paths to go down into      | 使用相对路径进入                                        |     |
| the file system right so I can do CD dot     | 文件系统，这样我就可以执行 CD 点                              |     |
| slash home and this is gonna CD into the     | 斜杠主页，这将 CD 进入                                   |     |
| home directory under the current             | 当前目录下的主目录，                                      |     |
| directory right so this will bring me        | 所以这将使我                                          |     |
| back to slash home if I now tried CD dot     | 回到斜杠主页，如果我 现在再次尝试 CD 点                          |     |
| slash home again it will say there's no      | 斜杠 home ，它会说没有                                  |     |
| such directory because there is no home      | 这样的目录，因为                                        |     |
| directory under the current directory        | 当前目录下没有主目录，我                                    |     |
| I'm on which I changed by doing CD right     | 通过正确执行 CD 进行了更改，                                |     |
| and I can sort of see de all the way         | 我可以一路看到 de                                      |     |
| back to the place that I was using           | 回到原来的位置 我使用的是                                   |     |
| relative paths and I can also do things      | 相对路径，我还可以执行                                     |     |
| like dot dot dot dot dot to get back to      | 诸如 dot dot dot dot 之类的操作来返回到                    |     |
| somewhere deep in my file system this        | 文件系统深处的某个位置，这恰好是一直                              |     |
| happens to be all the way back to the        | 返回到                                             |     |
| root so here there's a bin directory and     | 根目录，所以这里有一个 bin 目录，                             |     |
| another bin there's an echo file and so      | 另一个 bin 中有一个 echo 文件，                           |     |
| then I could do world and that runs the      | 然后我可以做 world 并                                  |     |
| echo program under bin alright so this       | 在 bin 下运行 echo 程序，所以这                           |     |
| is a way that you can construct paths to     | 是一种你可以构造路径来                                     |     |
| arbitrarily traverse your filesystem         | 任意遍历文件系统的方法，                                    |     |
| sometimes you want to absolute paths and     | 有时你想要绝对路径，                                      |     |
| sometimes you want relative ones usually     | 有时你想要相对路径，通常                                    |     |
| you want to use whichever one is shorter     | 你想使用哪个 一个更短，                                    |     |
| but if you want to for example run a         | 但是如果您想要运行一个                                     |     |
| program or write                             | 程序或编写                                           |     |
| a program that runs the program like         | 一个运行该程序的程序（例如                                   |     |
| echo or date and you want it to be able      | echo 或 date），并且您希望它能够                           |     |
| to run be run from anywhere you either       | 从任何地方运行，您要么                                     |     |
| want to just give the name of the            | 只想给出程序的名称，                                      |     |
| program like date or echo and let the the    | 例如 date 或 echo 并让                               |     |
| shell use the path to figure out where       | shell 使用路径来确定它在哪里，                              |     |
| it is or you want to give its absolute       | 或者你想给出它的绝对                                      |     |
| path because if you gave a relative path     | 路径，因为如果你给出了相对路径，                                |     |
| then if I ran it in my home directory        | 那么如果我在我的主目录中运行它，                                |     |
| and you ran it in some other directory       | 而你在其他目录中运行它                                     |     |
| it might work for me but not for you in      | 可能对我有用，但一般不适合你，                                 |     |
| general when we run a program it is          | 当我们运行一个程序时，它至少默认                                |     |
| going to be operating on the current         | 在当前工作目录上运行，                                     |     |
| working directory at least by default        | -                                               |     |
| unless we give it any other arguments        | 除非我们给它任何其他参数，                                   |     |
| and this is really handy because it          | 这真的很方便，因为这                                      |     |
| means that often we don't have to give       | 意味着我们经常不这样做 不必提供                                |     |
| full paths for things we can just use        | 完整路径，我们只需使用                                     |     |
| the name of files and in the directory       | 文件名和当前所在目录中的内容，                                 |     |
| that we're currently in one thing that's     | -                                               |     |
| really useful is to figure out what is       | 真正有用的一件事就是找出                                    |     |
| in the current directory we're in so we      | 当前目录中的内容，这样我们                                   |     |
| already saw PWD which prints where you       | 就已经看到了 PWD 它打印你                                 |     |
| currently are there's a command called       | 当前所在的位置，有一个名为                                   |     |
| LS which will show you it will list the      | LS 的命令，它会向你显示它将列出                               |     |
| files in the current directory so if i       | 当前目录中的文件，因此如果我在                                 |     |
| type LS here this is all the files in        | 此处键入 LS，这就是当前目录中的所有文件，                          |     |
| the current directory right and this is      | 这是                                              |     |
| a handy way to just quickly navigate         | 快速导航的便捷方法                                       |     |
| through the filesystem you'll see that       | 通过文件系统，你会看到，                                    |     |
| if I sort of CD dot and then do LS it'll     | 如果我排序 CD 点，然后执行 LS，它会                           |     |
| show me the files in that directory          | 显示该目录中的文件，                                      |     |
| instead but with LS I can also give it       | 但是使用 LS，我也可以给它                                  |     |
| LS dot dot like I can give it a path and     | LS 点，就像我可以给它一个路径一样，                             |     |
| then will LS that file instead of the        | 然后将 LS 该文件而不是                                   |     |
| one that I'm currently in or LS that         | 我当前所在的文件，或者 LS 该                                |     |
| directory and you can see this if I go       | 目录，如果我一路走到根目录，您可以看到这一点，                         |     |
| all the way to the root as well right        | 右                                               |     |
| root has different files one handy trick     | 根目录有不同的文件，                                      |     |
| you might not know about here is there       | 您可能不知道这里有一个方便的技巧：                               |     |
| are two other special things you can do      | 你可以做的另外两件事                                      |     |
| one is the tilde character this              | 是波浪号字符，这个                                       |     |
| character brings you to your home            | 字符将你带到你的主                                       |     |
| directory so tilde always expands to the     | 目录，所以波浪号总是扩展到                                   |     |
| home directory and you can do relative       | 主目录，你可以做                                        |     |
| paths to it so I can do tilde slash dev      | 它的相对路径，这样我就可以做波浪号斜线 dev                         |     |
| slash P DOS classes missing semester and     | 斜线 P DOS 课程缺少学期和                                |     |
| now I'm there because tilde expanded to      | 现在我在那里，因为波形符扩展为                                 |     |
| slash home slash John there is also for      | 斜杠主斜杠约翰，对于                                      |     |
| CD in particular a really handy argument     | CD，特别是您可以给出一个非常方便的参数，                           |     |
| you can give which is - if you do CD -       | 即 - 如果您执行 CD -                                  |     |
| it will CD to the directory you were         | 它将 CD 到您                                        |     |
| previously in so if I do CD - I go back      | 之前所在的目录，所以如果我执行 CD -                            |     |
| to root                                      | -                                               |     |
| if I do CD - again I go back to missing      | 如果我做 CD，我会回到 root - 我会再次回到错过的                   |     |
| semester so this is a handy way if you       | 学期，所以如果你                                        |     |
| want to toggle between two different         | 想在                                              |     |
| directories in the case of LS or in the      | LS 的情况下或在                                       |     |
| case of CD there might be arguments do       | CD 的情况下在两个不同的目录之间切换，那么这是一个方便的方法，你可能会遇到争论吗？      |     |
| you don't know about right currently we      | 目前不知道，除了提供路径之外，我们                               |     |
| haven't really been doing anything           | 还没有真正做任何事情，                                     |     |
| except giving paths but how do you even      | 但是您如何                                           |     |
| discover that you can give a path to LS      | 发现您可以首先提供一条通往 LS 的路径，                           |     |
| in the first place well most programs        | 大多数程序都                                          |     |
| take what are known as arguments like        | 采用所谓的参数，例如                                      |     |
| flags and options these are things that      | 标志和选项这些 是                                       |     |
| usually start with a - one of the Hemi       | 通常以 a 开头的东西 - Hemi                              |     |
| is one of these is - help most programs      | 是其中之一 - 帮助大多数程序                                 |     |
| implement this and if you run for            | 实现这一点，如果你运行                                     |     |
| example LS - help it all helpfully print     | 例如 LS - help it all 帮助打印                        |     |
| out a bunch of information about that        | 出有关该                                            |     |
| command and you'll see here that it says     | 命令的一堆信息，你会在这里看到 它说                              |     |
| the usage is LS and you can give some        | 用法是 LS，你可以给出一些                                  |     |
| number of options and you can give some      | 选项，你可以给出一些                                      |     |
| number of files the way to read that         | 文件的读取方式，                                        |     |
| usage line is triple dot means one like      | 用法行是三点表示一个，如                                    |     |
| zero or one or more and the square           | 零或一个或多个，方                                       |     |
| bracket means optional so in this case       | 括号表示可选，所以在这个 如果                                 |     |
| there's an optional number of options        | 有可选数量的选项                                        |     |
| and there's an optional number of files      | 和可选数量的文件，                                       |     |
| and you'll see that it says what the         | 您会看到它说明了                                        |     |
| program does and also specifies a number     | 程序的功能，并且还指定了您可以提供的许多                            |     |
| of different types of flags and options      | 不同类型的标志和选项，                                     |     |
| you can give usually we call things that     | 通常我们称之为                                         |     |
| are a single dash in a single letter a       | 单个破折号的东西 在单个字母中，                                |     |
| flag and anything that or anything that      | 标志和任何                                           |     |
| doesn't take a value a flag and anything     | 不带值的东西 标志和任何带                                   |     |
| that does take a value an option so for      | 值的东西 选项，                                        |     |
| example - a and - all are both flags and     | 例如 - a 和 - all 都是标志，                            |     |
| - C or - color R is an option one thing      | - C 或 - color R 是一个选项                           |     |
| you'll see under here if you scroll down     | 如果你向下滚动得足够远，你会在这里看到的一件事                         |     |
| far enough is the - L flag and that's        | 是 -L 标志，这                                       |     |
| unhelpful the - L flag the - L flag uses     | 没有帮助 -L 标志 -L 标志                                |     |
| a long listing format now that's             | 现在使用长列表格式，它                                     |     |
| particularly helpful in and of itself        | 本身特别有用，                                         |     |
| but let's see what it actually does so       | 但让我们看看它实际上做了什么 因此，                              |     |
| if I do LS dash L it still prints the        | 如果我执行 LS dash L，它仍然会打印                          |     |
| files in the current directory but it        | 当前目录中的文件，但它为                                    |     |
| gives me a lot more information about        | 我提供了有关                                          |     |
| those files and this is something you'll     | 这些文件的更多信息，这是您会                                  |     |
| find yourself using quite a lot because      | 发现自己经常使用的东西，因为                                  |     |
| the additional information it gives you      | 它为您提供的附加信息                                      |     |
| is often quite handy let's look at what      | 通常相当多 让我们看看                                     |     |
| some of that information                     | 其中的一些信息                                         |     |
| ah so first of all the D at the              | 啊首先，                                            |     |
| beginning of some of these entries           | 其中一些条目开头的 D                                     |     |
| indicate that something is a directory       | 表示某物是一个目录，                                      |     |
| so the underscore data entry here for        | 因此这里的下划线数据条目                                    |     |
| example is a directory                       | 是一个目录，                                          |     |
| whereas for for hTML is not a directory      | 而对于 hTML 来说不是一个目录，                              |     |
| it's a file the following letters after      | 它是 一个文件，后面的字母                                   |     |
| that indicate the permissions that are       | 表示                                              |     |
| set for that file so this like we saw        | 为该文件设置的权限，所以就像我们                                |     |
| earlier I might not be able to open a        | 之前看到的那样，我可能无法打开给定                               |     |
| given file or I might not be able to CD      | 的文件，或者我可能无法将 CD                                 |     |
| into a given directory and this is all       | 插入给定的目录，这一切                                     |     |
| dictated by the permissions on that          | 都由 该                                            |     |
| particular file or directory the way to      | 特定文件或目录的权限                                      |     |
| read these is that the the first group       | 读取这些的方法是第一组                                     |     |
| of three are the permissions are set for     | 三个字符是为文件所有者设置的权限                                |     |
| the owner of the file all of these files     | -                                               |     |
| you'll see are owned by me the second        | 您将看到的所有这些文件都归我所有第二                              |     |
| group of three characters is for the         | 组三个字符 是                                         |     |
| permissions for the group that owns this     | 拥有该文件的组的权限，                                     |     |
| file in this case all of these files are     | 在这种情况下，所有这些文件                                   |     |
| also known by the john group and a final     | 也被 john 组所知，最后                                  |     |
| group of three is a list of the              | 三个组是                                            |     |
| permissions for everyone else so anyone      | 其他所有人的权限列表，因此                                   |     |
| who's not a user owner or a group owner      | 不是用户所有者或组的任何人                                   |     |
| this directory is perhaps kind of boring     | 这个目录可能有点无聊，                                     |     |
| because all of the things are owned by       | 因为所有的东西都归                                       |     |
| me but if we do something like CD to         | 我所有，但是如果我们执行诸如 CD                               |     |
| slash and do LS dash L you'll see that       | 斜线和 LS dash L 之类的操作，您会看到                        |     |
| here all of them are owned by root we'll     | 这里所有的东西都归 root 所有，我们将                           |     |
| get back to what the root user is but        | 回到 root 用户是什么，但                                 |     |
| here you see some of the permissions are     | 在这里您可以看到一些权限                                    |     |
| a little bit more interesting the groups     | 更有趣，                                            |     |
| of three are read write and execute what     | 三组是读写和执行，                                       |     |
| these mean differs for files and for         | 这些权限对于文件和文件目录来说是不同的，                            |     |
| directories for files it's pretty            | -                                               |     |
| straightforward if you have read             | 如果您                                             |     |
| permissions on a file then you can read      | 对文件具有读取权限，则非常简单 那么你可以读取它                        |     |
| its contents if you have write               | 的内容，如果你                                         |     |
| permissions on a file then you can save      | 对文件有写权限，那么你可以保存                                 |     |
| the file you can add more to it or you       | 文件，你可以添加更多内容，或者你                                |     |
| can replace it entirely and if you have      | 可以完全替换它，如果你已经                                   |     |
| execute to the X bit on a file then          | 执行到文件上的 X 位，那么                                  |     |
| you're allowed to execute that file so       | 你可以 执行该文件，因此                                    |     |
| if we do LS al in slash bin that's a         | 如果我们在斜杠 bin 中执行 LS al 这是一                       |     |
| novel and user bin you'll see that all       | 本小说和用户 bin，您将看到所有                               |     |
| of them have the execute bit set even        | 这些都设置了执行位，即使对于                                  |     |
| for people who are not the owner of the      | 不是文件所有者的人也是如此，                                  |     |
| file and this is because the echo            | 这是因为 echo                                       |     |
| program for example we want everyone on      | 程序 例如，我们希望计算机上的每个人都                             |     |
| the computer to be able to execute           | 能够执行，                                           |     |
| there's no reason to say only certain        | 没有理由说只有某些                                       |     |
| users can run echo that doesn't really       | 用户可以运行 echo，这对于目录来说没有                           |     |
| make any make any sense                      | 任何意义，                                           |     |
| for directories though these permissions     | 尽管这些权限                                          |     |
| are a little bit different so read           | 有点不同，所以阅读                                       |     |
| translates - are you allowed to see          | 翻译 - 你允许吗 查看                                    |     |
| which files are inside this directory so     | 此目录中的文件，因此将读取                                   |     |
| think of read as lists for a directory       | 视为目录的列表，                                        |     |
| are you allowed to list its contents         | 是否允许列出其内容，                                      |     |
| write for a directory is whether you are     | 为目录写入是是否                                        |     |
| allowed to rename create or remove files     | 允许重命名，                                          |     |
| within that directory so it's still kind     | 在该目录中创建或删除文件，所以它仍然是                             |     |
| of right but notice that this means that     | 正确的，但请注意 这意味着，                                  |     |
| if you have write permissions on a file      | 如果您对文件有写权限，                                     |     |
| but you do not have write permissions on     | 但对其目录没有写权限，则                                    |     |
| its directory you cannot delete the file     | 无法删除该文件，                                        |     |
| you can empty it but you cannot delete       | 您可以清空它，但不能删除                                    |     |
| it because that would require writing to     | 它，因为这需要写入                                       |     |
| the directory itself and finally execute     | 目录本身并最终                                         |     |
| on directories is something that trips       | 在目录上执行                                          |     |
| people up a lot execute on a directory       | 在一个目录上执行的东西                                     |     |
| is what's known as search and that's not     | 就是所谓的搜索，这个                                      |     |
| terribly helpful a name but what that        | 名字并不是很有帮助，但这                                    |     |
| means is are you allowed to enter this       | 意味着                                             |     |
| directory if you want to get to a file       | 如果你想访问一个文件，                                     |     |
| if you want to open it or read it or         | 如果你想打开它，你是否可以进入这个目录 或者读取它或                      |     |
| write it whatever you want to do             | 将其写入任何您想要执行的操作，                                 |     |
| basically to CD into a directory you         | 基本上将 CD 放入目录中，您                                 |     |
| must have the execute permission on all      | 必须对该                                            |     |
| parent directories of that directory and     | 目录的所有父目录和                                       |     |
| the directory itself so for example for      | 目录本身具有执行权限，例如，对于                                |     |
| me to access a file inside slash user        | 我来说，要访问斜杠用户                                     |     |
| slash bin such as user bin echo I must       | 斜杠 bin 内的文件，例如 user bin echo 我必须                |     |
| have executed on route I must have           | 在路由上执行 我必须                                      |     |
| execute on user and I must have execute      | 在用户上执行并且我必须在                                    |     |
| on bin if I do not have all those            | bin 上执行 如果我没有所有这些                               |     |
| execute bits I will not be allowed to        | 执行位 我将不被允许                                      |     |
| access that file because I won't be able     | 访问该文件，因为我将无法                                    |     |
| to enter the directories along the way       | 输入 一路上的目录，                                      |     |
| there are a number of other bits that        | -                                               |     |
| you might come across like you might see     | 您可能会遇到许多其他位，例如您可能会                              |     |
| esses or T's in these lists you might        | 在这些列表中看到 esses 或 T，您可能会                         |     |
| see LS those we can talk about in office     | 看到 LS，如果您好奇的话，我们可以在办公时间讨论这些内容，                  |     |
| hours if you're curious                      | -                                               |     |
| they will mostly not matter for anything     | 它们大多对任何事情都无关紧要                                  |     |
| you will do in this class but they are       | 你会在这门课上做，但它们很                                   |     |
| handy to know about so if you're curious     | 容易了解，所以如果你对                                     |     |
| about them look them up on your own or       | 它们感到好奇，可以自己查找它们，或者                              |     |
| come ask us in office hours there are        | 在办公时间来询问我们，还有                                   |     |
| some other programs that are handy to        | 一些其他很容易了解的程序                                    |     |
| know about oh sorry there's one more         | 哦，抱歉，还有一个                                       |     |
| thing as I mentioned if you just have a      | 正如我提到的，如果您只有一个                                  |     |
| dash it means you do not have that           | 破折号，则意味着您没有该                                    |     |
| permission right so if it says for           | 权限，因此，如果它显示                                     |     |
| example our dash X it means that you         | 例如我们的破折号 X，则意味着您                                |     |
| have read and execute but you do not         | 已阅读并执行，但您                                       |     |
| have right there are some other handy        | 没有权限，还有其他一些方便的                                  |     |
| programs to know about at this point         | 程序需要了解 大约在这一点上，                                 |     |
| one of them is move or the MV command so     | 其中之一是移动或 MV 命令，所以                               |     |
| if I CD back to missing semester here MV     | 如果我 CD 回到丢失的学期，MV                               |     |
| lets me rename a file and rename here        | 让我重命名一个文件，并且这里重命名                               |     |
| takes two paths it takes the old path in     | 需要两个路径，它会在新路径中使用旧路径，                            |     |
| the new path this is means that move         | 这意味着移动                                          |     |
| lets you both rename a file like if you      | 可以让你 两者都重命名文件，就像您                               |     |
| change the name of the file but not the      | 更改文件名但不更改                                       |     |
| directory or it lets you move a file to      | 目录一样，或者它允许您将文件移动到                               |     |
| a completely different directory it just     | 完全不同的目录，只需提供                                    |     |
| you give the path to the current file        | 当前文件的路径                                         |     |
| and the path to where you want that file     | 以及您想要该文件所在位置的路径                                 |     |
| to be and that can change its location       | 这可以更改它的位置                                       |     |
| and its name so for example I can move       | 和名称，例如我可以将                                      |     |
| dot files dot MD to be food MD               | 点文件点 MD 移动为食物 MD                                |     |
| unhelpfully right and similarly I can        | 无济于事，类似地，我可以将                                   |     |
| move it back there's also the CP command     | 其移回来，还有 CP 命令，                                  |     |
| the CP or copy is very similar it lets       | CP 或复制非常相似，它可以让                                 |     |
| you copy a file CP also takes two            | 您复制文件 CP 还采用两个                                  |     |
| arguments it takes the path you want to      | 参数，它采用您要                                        |     |
| copy from and the path you want to copy      | 复制的路径和要复制到的路径，                                  |     |
| to and these are full paths so I could       | 这些是完整路径，因此我可以                                   |     |
| use this for example to say I want to        | 使用它来表示我想将                                       |     |
| copy dot files out MD - dot dot slash        | 点文件复制出 MD - 点点斜线                                |     |
| food MD sure food MD and now if I do LS      | 食物 MD 确定 food MD，现在如果我执行 LS                     |     |
| dot you'll see that there's a food MD        | dot，您会看到该目录中有一个 food MD                         |     |
| file in that directory so CP as well         | 文件，因此 CP 也                                      |     |
| take two paths it does not have to be in     | 采用两个路径，它不必位于                                    |     |
| the same directory and similarly there's     | 同一目录中，类似地，还有                                    |     |
| the RM command which lets you remove a       | RM 命令可以让您删除 一个                                  |     |
| file and there - you can give paths in       | 文件，在那里 - 你可以给出路径，在                              |     |
| this case I'm removing dot dot slash         | 这种情况下，我正在删除点点斜线                                 |     |
| food you should be aware for removing        | 食物，你应该注意删除，                                     |     |
| especially on Linux removal is by            | 特别是在Linux上，                                     |     |
| default not recursive so you cannot          | 默认情况下，删除不是递归的，所以你不能                             |     |
| remove a directory using RM you can pass     | 使用RM删除目录，你可以传递                                  |     |
| the - our flag which lets you do a           | - 我们的标志 它可以让你进行                                 |     |
| recursive remove and then give a path        | 递归删除，然后给出一个                                     |     |
| that you want to remove and it will          | 你想要删除的路径，它将                                     |     |
| remove everything below it there is also     | 删除它下面的所有内容，还有                                   |     |
| the RM dr dir command which lets you         | RM dr dir 命令，它可以让你                              |     |
| remove a directory but it only lets you      | 删除一个目录，但它只允许你                                   |     |
| remove that directory if it is empty so      | 删除该目录（如果它是空的） 所以                                |     |
| the idea here is to sort of be a safety      | 这里的想法是                                          |     |
| mechanism for you so you don't               | 为您提供一种安全机制，这样您就不会                               |     |
| accidentally throw away a bunch of your      | 意外地丢弃一堆                                         |     |
| files and the final little command           | 文件，最后一个                                         |     |
| that's handy to use is make there which      | 方便使用的小命令是 make There，它                          |     |
| lets you create a new directory and as       | 可以让您创建一个新目录，正如                                  |     |
| we talked about before you don't want to     | 我们所说 大约在你不想                                     |     |
| do something like this because it will       | 做这样的事情之前，因为它会为                                  |     |
| create two directories for you one           | 你创建两个目录，一个                                      |     |
| called my and one called photos if you       | 叫 my，一个叫 photos，如果你                             |     |
| actually want to create a directory like     | 真的想创建一个像                                        |     |
| this you would either                        | 这样的目录，你要么                                       |     |
| escape the space or quote the string if      | 转义空格，要么引用字符串，如果                                 |     |
| you ever want more information about how     | 你曾经 想要更多关于                                      |     |
| any command to basically on these            | 这些平台上的任何命令基本上如何                                 |     |
| platforms work there's a really handy        | 工作的信息，有一个非常方便的                                  |     |
| command for that as well                     | 命令，还有一个                                         |     |
| there is the program called man for          | 名为 man 的                                        |     |
| manual pages this program takes as an        | 手册页程序，该程序将                                      |     |
| argument the name of another program and     | 另一个程序的名称作为参数，并为                                 |     |
| gives you its manual page so for example     | 您提供其手册页，以便 例如，                                  |     |
| we could do man LS and this shows us a       | 我们可以执行 man LS，这向我们显示了                           |     |
| manual page for LS you'll notice that in     | LS 的手册页，您会注意到，在                                 |     |
| the case of LS it is fairly similar to       | LS 的情况下，它与                                      |     |
| what we got with LS - help but it's a        | 我们使用 LS - help 获得的非常相似，但                        |     |
| little easier to navigate a little           | 导航起来更容易，                                        |     |
| easier to read usually towards the           | 通常更容易阅读 在                                       |     |
| bottom you will also get examples            | 底部，您还将获得                                        |     |
| information about who wrote it where you     | 有关谁编写它的示例信息，您                                   |     |
| can find more information and that sort      | 可以在其中找到更多信息和此类                                  |     |
| of stuff one thing that can be confusing     | 内容，这一点有时可能会令人困惑，                                |     |
| sometimes                                    | -                                               |     |
| at least until a recent version where        | 至少直到最近的版本为止，                                    |     |
| they added this three at the bottom          | 他们在底部添加了这三个内容，                                  |     |
| which says Q to quit they do not use to      | 表示 Q 退出 他们不习惯                                   |     |
| say this you press Q to quit this            | 这么说，你按 Q 退出这个                                   |     |
| program it can be really hard to quit it     | 程序，                                             |     |
| if you do not know that a handy keyboard     | 如果你不知道这里有一个方便的键盘                                |     |
| shortcut here by the way is ctrl L which     | 快捷键是 ctrl L，它                                   |     |
| lets you clear your terminal and go back     | 可以让你清除终端并返回                                     |     |
| to the top so so far we've only talked       | 到 到目前为止，我们只                                     |     |
| about programs in isolation but where        | 讨论了孤立的程序，但是                                     |     |
| much of the power of the shell really        | -                                               |     |
| comes through is once you start              | 一旦您开始                                           |     |
| combining different programs right so        | 正确组合不同的程序，shell 的大部分功能就会真正发挥作用，因此您可能需要链接多个程序，而  |     |
| rather than just like running CDE            | 不是像运行 CDE                                       |     |
| running LS and etc you might want to         | 运行 LS 等那样                                       |     |
| chain multiple programs together you         | 程序在一起时，您                                        |     |
| might want to interact with files and        | 可能希望与文件进行交互，并                                   |     |
| have files operate in between programs       | 让文件在程序之间进行操作，                                   |     |
| and the way we can do this is using this     | 我们可以做到这一点的方式是使用                                 |     |
| notion of streams that the shell gives       | 流的概念，shell                                      |     |
| us every program by default has I'm          | 默认情况下为我们提供每个程序，我                                |     |
| gonna simplify a little and say two          | 将稍微简化一下，说两个                                     |     |
| primary streams it has an input stream       | 主要的 流它默认有一个输入流                                  |     |
| and an output stream by default the          | 和一个输出流                                          |     |
| input stream is your keyboard basically      | 输入流是你的键盘基本上                                     |     |
| the input stream is your terminal and        | 输入流是你的终端                                        |     |
| whatever you type into your terminal is      | 无论你在终端中输入什么                                     |     |
| going to end up into the program and it      | 都会最终进入程序并且它                                     |     |
| has a default output stream which is         | 有一个默认输出流                                        |     |
| whenever the program prints something        | 程序会打印一些                                         |     |
| it's gonna print to that stream and by       | 要打印到该流的内容，默认情况下                                 |     |
| default that is also your terminal this      | 这也是您的终端，这                                       |     |
| is why when I type echo hello it gets        | 就是为什么当我输入 echo hello 时它会                        |     |
| printed back to my terminal but the          | 打印回我的终端，但是                                      |     |
| shell gives you a way to rewire these        | shell 为您提供了一种重新连接这些                             |     |
| streams to change where the input            | 流以更改输入                                          |     |
| output of a programmer pointed the way       | 输出位置的方法 程序员指出                                   |     |
| the most straightforward way you do this     | 最直接的方法                                          |     |
| is using the angle bracket signs so you      | 是使用尖括号符号，因此您                                    |     |
| can write something like this or you can     | 可以编写类似这样的内容，或者您​​可以                             |     |
| write something like this the left angle     | 编写类似这样的内容左尖                                     |     |
| bracket indicates rewire the input for       | 括号表示将该程序的输入重新连接                                 |     |
| this program to be the contents of this      | 为该程序的内容                                         |     |
| file and the end angle bracket means         | 文件和结束尖括号意味着将                                    |     |
| rewire the output of the preceding           | 前面的程序的输出重新连接                                    |     |
| program into this file so let's look at      | 到这个文件中，所以让我们看                                   |     |
| an example of what that would look like      | 一个例子，                                           |     |
| if I do echo hello I can say I want that     | 如果我做 echo hello 我可以说我希望                         |     |
| context the content to be stored in a        | 上下文内容存储在一个                                      |     |
| file called hello dot text and because I     | 名为的文件中 hello dot text 并且因为我                     |     |
| gave this is a relative path right this      | 给出了这是一个相对路径，所以这                                 |     |
| will construct a file in the current         | 将在当前目录中构造一个                                     |     |
| directory called hello text and at least     | 名为 hello text 的文件，并且至少                          |     |
| in theory its contents should be the         | 理论上它的内容应该是                                      |     |
| word hello so if I run this notice that      | 单词 hello 所以如果我运行此命令，请注意                         |     |
| nothing got printed to my output the         | 没有任何内容打印到我的输出中                                  |     |
| previous time when I ran echo hello it       | 上次我运行 echo hello 时，它                            |     |
| printed hello                                | 打印了 hello                                       |     |
| now that hello is going gone into a file     | 现在 hello 正在进入一个                                 |     |
| called hello text and I can verify this      | 名为 hello text 的文件，我可以                           |     |
| by using the program called cat so cat       | 使用名为 cat 的程序来验证这一点，因此 cat                       |     |
| prints the contents of a file so I can       | 打印文件的内容，以便我可以                                   |     |
| do cat hello dot txt and there it shows      | 执行 cat hello dot txt 在那里它向                      |     |
| me hello but cat is a is also something      | 我显示你好，但 cat 也是                                  |     |
| that supports this kind of wiring so I       | 支持这种接线的东西，所以我                                   |     |
| can say cat which by default just prints     | 可以说 cat 默认情况下只打印                                |     |
| its input it just duplicates its input       | 其输入，它只是将其输入复制                                   |     |
| to its output I can say I want you to        | 到其输出我可以说我希望你                                    |     |
| take your input from Hello text what         | 从 Hello text                                    |     |
| will happen in this case is that the         | 在这种情况下会发生什么是                                    |     |
| shell is going to open hello dot txt         | shell 将打开 hello dot txt                         |     |
| take its contents and set that to be the     | 获取其内容并将其设置为                                     |     |
| input of cat and then cat is going to        | cat 的输入，然后 cat 将                                |     |
| just print that to its output which          | 其打印到其输出，                                        |     |
| since I haven't rewired it is gonna be       | 因为我还没有重新连线 这将是                                  |     |
| my terminal so this will just print          | 我的终端，所以这只会                                      |     |
| hello to the output and I can use both       | 在输出中打印 hello，我可以                                |     |
| of these at the same time so for example     | 同时使用这两个命令，例如，                                   |     |
| if I want to copy a file and I don't         | 如果我想复制一个文件，但                                    |     |
| want to use the CP command for some          | 由于某种原因我不想使用 CP 命令                               |     |
| reason I can do this and in this case        | 我可以做到这一点，在这种情况下，                                |     |
| I'm telling the cat program nothing at       | 我什么都不告诉 cat 程序，                                 |     |
| all I'm just saying do your normal thing     | 我只是说做你正常的事情，                                    |     |
| right the cat program does not know          | cat 程序不知道                                       |     |
| anything about this redirection but I'm      | 有关此重定向的任何信息，但我                                  |     |
| telling the shell to use hello dot txt as    | 告诉 shell 使用 hello dot txt 作为                    |     |
| the input for cat and to write anything      | cat 的输入并写入                                      |     |
| that cat prints - hello - dot txt again      | cat 打印的任何内容 - hello - dot txt ，                 |     |
| this prints nothing to my terminal           | 这不会在我的终端上打印任何内容，                                |     |
| but if                                       | 但是如果                                            |     |
| cat hello to text I get the output as I      | cat hello 到文本，我会得到我所                            |     |
| would have expected which is a copy of       | 期望的输出，这是                                        |     |
| the original file there is also a double     | 原始文件的副本，还有 一个双                                  |     |
| end bracket which is append instead of       | 端括号，它是追加而                                       |     |
| just overwrite so you'll notice that I       | 不是覆盖，所以你会注意到，                                   |     |
| if I do                                      | 如果我再次执行                                         |     |
| cat hello dot txt - hello - dot txt          | cat hello dot txt - hello - dot txt             |     |
| again and then I cat hello2 dot txt it       | 然后我 cat hello2 dot txt 它                        |     |
| still just contains hello even though it     | 仍然只包含 hello，即使它                                 |     |
| already contained hello if I switch that     | 已经包含 hello if 我将其改为                             |     |
| to instead be a double end bracket it        | 双端括号，这                                          |     |
| means append and if I now cat that file      | 意味着追加，如果我现在对该文件                                 |     |
| it has a hello twice these are pretty        | 进行了两次问候，这些非常                                    |     |
| straightforward they're usually just         | 简单，它们通常只是                                       |     |
| ways to interact with files but where it     | 与文件交互的方式，但                                      |     |
| gets really interesting is an additional     | 真正有趣的是一个附加                                      |     |
| operator the shell gives you called the      | 运算符 shell 为您提供了                                 |     |
| pipe character so pipe is just a             | 管道字符，因此管道只是一个                                   |     |
| vertical bar and what pipe means is take     | 竖线，管道的含义是将                                      |     |
| the output of the program to the left        | 程序的输出放在左侧，                                      |     |
| and make it the input of the program to      | 并将其作为程序的输入放在                                    |     |
| the right right so what does this look       | 右侧，那么这看起来                                       |     |
| like well let's take the example of ls /     | 像什么，让我们看一下 ls /                                 |     |
| or ls dash l / this prints a bunch of        | 或 ls dash l / 的示例 这会打印一堆                        |     |
| things let's say that I only wanted the      | 东西 假设我只想要                                       |     |
| last line of this output well there's a      | 此输出的最后一行 那么有一个                                  |     |
| command called tail and tail prints the      | 名为 tail 的命令，并且 tail 打印                          |     |
| last n lines of its input and I can do       | 其输入的最后 n 行，我可以执行                                |     |
| -n1 so this is a flag called n you           | -n1 所以 这是一个名为 n 的标志，                            |     |
| can also use dash dash lines if you want     | 如果您                                             |     |
| to use it as a longer option but in this     | 想将其用作更长的选项，您也可以使用 dash dashlines，但在这种           |     |
| case this is saying just print the last      | 情况下，这表示只需打印最后                                   |     |
| line and I can wire these together so I      | 一行，我可以将它们连接在一起，这样我就                             |     |
| can say ls dash l / pipe tail -n1            | 可以说 ls dash l / pipeline tail -n1               |     |
| and notice here that ls does not know        | 并注意这里 ls 不                                      |     |
| about tail and tail does not know about      | 知道 tail 和 tail 不知道                              |     |
| ls they are different programs and have      | ls 它们是不同的程序，并且                                  |     |
| never been programmed to be compatible       | 从未被编程                                           |     |
| with one another all they know how to do     | 为彼此兼容，它们所知道的就是                                  |     |
| is read from input and write to output       | 从输入读取并写入输出，                                     |     |
| and then the pipe is what wires them         | 那么管道是将它们连接                                      |     |
| together and in this particular case I'm     | 在一起的，在这种特殊情况下，我是                                |     |
| saying I want the output of LS to be the     | 说我希望 LS 的输出作为                                   |     |
| input to tail and then I want the output     | tail 的输入，然后我希望                                  |     |
| of tail to just go to my terminal            | tail 的输出直接转到我的终端，                               |     |
| because I haven't rewired it                 | 因为我还没有重新连接它                                     |     |
| I could also rewire this to say I want       | 我还可以重新连接它，说我希望                                  |     |
| the output to go to ls dot text and in this  | 输出转到 ls dot text ，在这种                           |     |
| case if I cat ls dot text I would get        | 情况下，如果我 cat ls dot text 我会得到                    |     |
| the appropriate output and it turns out      | 适当的输出，事实证明                                      |     |
| you can do some really neat things with this | 你可以用它做一些非常巧妙的事情，这                               |     |
| gonna cover this a lot more in the data      | 将涵盖这一点 在数据                                      |     |
| wrangling lecture there will be in like      | 争论讲座中，大约                                        |     |
| four days or something on the kind of        | 四天后将会有更多内容，或者当                                  |     |
| fancy stuff you can do when you start        | 您开始构建更高级的管道时，您可以做一些奇特的事情，                       |     |
| building more advanced pipelines one to      | -                                               |     |
| give you one example we can do something     | 给您一个例子，我们可以做一些                                  |     |
| like curl - -head --silent google.com        | 像curl - -head --silent这样的事情 google.com          |     |
| so just to show you what that looks          | 所以只是为了向您展示它的样子，                                 |     |
| like this gives me all the HTTP headers      | 这为我提供了用于访问 google.com 的所有 HTTP 标头，              |     |
| for accessing google.com and I can pipe      | 我可以将其通过管道传递                                     |     |
| that to grep a - like a --ignore-case        | 给 grep a - 就像 --ignore-case                     |     |
| or just -i if I want content                 | 或只是 -i 如果我想要内容                                  |     |
| length so this is gonna print the            | 长度，那么 这将打印                                      |     |
| content length header, grep is a program     | 内容长度标题，grep 是一个                                 |     |
| that we'll talk about later they'll let      | 我们稍后会讨论的程序，它们将让                                 |     |
| you search in an input stream for a          | 您在输入流中搜索给定                                      |     |
| given keyword we can pipe that through       | 的关键字，我们可以通过管道传输该                                |     |
| say the cut command which takes a            | 命令，该命令将                                         |     |
| delimiter set that to be space and I         | 分隔符设置为 是空格，我                                    |     |
| want the second field and this prints        | 想要第二个字段，这                                       |     |
| just the content length this is sort of      | 仅打印内容长度，这是一个                                    |     |
| a silly example right like this just         | 愚蠢的示例，就像这样，                                     |     |
| lets you extract the content length in       | 您可以从命令行提取                                       |     |
| bytes of google.com from the command         | google.com 的内容长度（以字节为单位），                       |     |
| line it's not a very useful thing to do      | 这不是一件非常有用的事情                                    |     |
| but you can see how by chaining these        | 但是你可以看到如何通过将它们链接                                |     |
| together you can achieve a bunch of          | 在一起，你可以实现一堆                                     |     |
| really interesting text manipulation         | 非常有趣的文本操作                                       |     |
| effects and it turns out pipes are not       | 效果，事实证明管道不仅仅                                    |     |
| just for textual data you can do this        | 用于文本数据，你也可以                                     |     |
| for things like images as well you can       | 对图像之类的东西执行此操作，你可以                               |     |
| have a program that manipulates a binary     | 拥有一个操作二进制文件的程序                                  |     |
| image on its input and writes a binary       | 在其输入上写入图像并将二进制                                  |     |
| image to its output and you can chain        | 图像写入其输出，您可以                                     |     |
| them together in this way and we'll talk     | 通过这种方式将它们链接在一起，我们稍后将                            |     |
| about some of those kinds of examples        | 讨论其中一些示例                                        |     |
| later on - you can even do this for          | - 如果您愿意，您甚至可以对视频执行此操作，                          |     |
| video if you want you can stream this is     | 您可以流式传输此内容                                      |     |
| for example a great way if you have a        | 例如，如果您                                          |     |
| chromecast at home you can stream a          | 家里有 chromecast，那么您可以                            |     |
| video file like this by having the last      | 通过将                                             |     |
| program in your pipe be a chromecast         | 管道中的最后一个程序作为 chromecast                         |     |
| send program so you stream a video file      | 发送程序来流式传输视频文件，这样您就可以将视频文件流式传输                   |     |
| into it and it streams or HTTP to your       | 到其中，然后它就会通过流式传输或 HTTP 方式传输到您的                   |     |
| chromecast we'll take we'll talk a lot       | chromecast 我们将                                  |     |
| more about this in the data wrangling        | 在数据整理讲座中详细讨论这一点，                                |     |
| lecture but there's one more thing that      | 但                                               |     |
| I wanted to talk to you about about sort     | 我还想与您讨论                                         |     |
| of how to use the terminal and a more        | 如何使用终端以及一种更                                     |     |
| interesting and perhaps more powerful        | 有趣且可能更强大的                                       |     |
| way that you might be used to and this       | 方式 可能已经习惯了，                                     |     |
| is perhaps even going to be interesting      | -                                               |     |
| for the ones of you who feel like you're     | 对于那些觉得自己                                        |     |
| already comfortable with the term            | 已经熟悉这个术语的人来说，这可能会很有趣，                           |     |
| but first we need to cover a important       | 但首先我们需要讨论一个重要的                                  |     |
| topic when it comes to Linux systems and     | 主题，特别是涉及 Linux 系统和                              |     |
| Mac OS systems in particular which is        | Mac OS 系统时 这是                                   |     |
| the notion of the root user the root         | root 用户的概念 root                                 |     |
| user is sort of like the administrator       | 用户有点像                                           |     |
| user on Windows and it has user IDs zero     | Windows 上的管理员用户，它的用户 ID 为零                      |     |
| the root user is special because it is       | root 用户很特殊，因为它                                  |     |
| allowed to do whatever it wants on your      | 可以在系统上执行任何操作，                                   |     |
| system even if a file is like not            | 即使文件不存在                                         |     |
| readable by anyone or if it's not            | 任何人都可读，或者如果                                     |     |
| writable by anyone root can still access     | 任何人都不可写 root 仍然可以访问                             |     |
| that file root is sort of a super user       | 该文件 root 是一种超级用户，                               |     |
| that gets to do whatever they want and       | 可以做任何他们想做的事情，                                   |     |
| most of the time you will not be             | 大多数时候你不会以                                       |     |
| operating as the super user you will not     | 超级用户身份进行操作，你不会                                  |     |
| be root you will be a user like John or      | 是 root 你 将是像约翰这样的用户或                            |     |
| whatever your name is and that's going       | 无论您的名字是什么，这将                                    |     |
| to be the user you act with because if       | 是您与之一起操作的用户，因为如果                                |     |
| you were operating your computer as the      | 您                                               |     |
| root user at all times if you ran the        | 始终以 root 用户身份操作计算机，如果您运行了                       |     |
| wrong program they could just completely     | 错误的程序，他们可能会完全                                   |     |
| destroy your computer and you don't want     | 破坏您的计算机，并且您 不想要                                 |     |
| that right but every now and again you       | 这样的权利，但时不时地你                                    |     |
| want to do something that requires that      | 想做一些需要                                          |     |
| you are root usually for these cases you     | 你是 root 的事情，通常在这些情况下你                           |     |
| will use a program called sudo su do or      | 会使用一个名为 sudo su do 的程序或                         |     |
| do as su and su in this case is Super        | do as su 和 su 在这种情况下是超级                         |     |
| User so this is a way to do the              | 用户，所以这是                                         |     |
| following thing as the super user            | 作为超级用户执行以下操作的一种方法                               |     |
| usually the way sudo works is you write      | 通常 sudo 的工作方式是您编写                               |     |
| sudo and then a command like you would       | sudo 然后像                                        |     |
| normally on your terminal and it will        | 通常在终端上执行的命令一样，它只会                               |     |
| just run that command as if you were         | 运行该命令，就好像您是                                     |     |
| root as opposed to the user you actually     | root 而不是您实际的用户一样                                |     |
| are where might you need something like      | 你可能需要这样的东西                                      |     |
| this well there is a special there are       | 吗？有一个特殊的文件系统，                                   |     |
| many special file system on your             | 你的计算机上有很多特殊的文件系统，                               |     |
| computer but in particular there's one       | 但特别是有一个                                         |     |
| called sysfs if you CD to slash sys          | 叫做 sysfs 的文件系统，如果你用 CD 来删除 sys，                 |     |
| this is a whole new world this file          | 这是一个全新的世界，这个文件                                  |     |
| system is are not actually files on your     | 系统实际上并不是文件系统。                                   |     |
| computer instead these are various           | 相反，这些是您的计算机的各种                                  |     |
| kernel parameters so the kernel is like      | 内核参数，因此内核                                       |     |
| basically the the core of your computer      | 基本上就像计算机的核心，                                    |     |
| this is a way for you to access various      | 这是您                                             |     |
| kernel parameters through what looks         | 通过看起来                                           |     |
| like a file system you'll see here that      | 像文件系统的东西访问各种内核参数的方法，您将在这里看到，                    |     |
| if I CD into class for example it has        | 如果我将 CD 转入类 例如，它有                               |     |
| directories for a bunch of different         | 一堆不同                                            |     |
| types of devices that I can interact         | 类型的设备的目录，我可以与之交互，                               |     |
| with or various queues I can access or all   | 或者我可以访问的各种队列，或者                                 |     |
| sorts of weird knobs internally and          | 内部各种奇怪的旋钮，                                      |     |
| because they're exposed as files it means    | 因为它们作为文件公开，这意味着                                 |     |
| we can also use all the tools have been      | 我们还可以使用一直在使用的所有工具                               |     |
| using so far in order to manipulate them     | 到目前为止，为了操纵它们，                                   |     |
| one example of this is if you go into        | 一个例子是，如果您进入                                     |     |
| sys class backlight so this backlight        | sys 类背光，则直接使用此背光，                               |     |
| directly and lets you configure the          | 并允许您                                            |     |
| backlight on your laptop if you have one     | 在笔记本电脑上配置背光（如果您有笔记本电脑），                         |     |
| so I can CD in to intel backlight this       | 这样我可以将 CD 插入英特尔背光，这                             |     |
| is an Intel laptop inside here you'll        | 是一台英特尔笔记本电脑 在这里你会                               |     |
| see there's a file called brightness and     | 看到有一个名为亮度的文件，                                   |     |
| I can cat the brightness this is the         | 我可以捕捉亮度，这是                                      |     |
| current brightness of my screen but not      | 我屏幕的当前亮度，但                                      |     |
| only that I can modify this too in order     | 不仅如此，我还可以修改它以                                   |     |
| to change the brightness of my screen so     | 更改屏幕的亮度，所以                                      |     |
| you might think that I could do let's        | 你可能认为我可以这样做 让我们看看                               |     |
| see what the max brightness is here okay     | 这里的最大亮度是多少，好吧，                                  |     |
| so it's currently set to the max             | 所以它目前设置为最大                                      |     |
| brightness you might imagine that I          | 亮度，你可能会想象我                                      |     |
| could do something like if I do echo         | 可以做一些事情，比如如果我做回声，                               |     |
| let's do half or something                   | 让我们做一半或                                         |     |
| echo 500 to brightness                       | 回声500到亮度，                                       |     |
| if I do this it says                         | 如果我这样做，它说                                       |     |
| permission denied I'm not allowed to         | 权限被拒绝我是 不允许                                     |     |
| modify brightness because in order to        | 修改亮度，因为                                         |     |
| basically in order to change things in       | 基本上为了更改内核中的内容，                                  |     |
| the kernel you need to be the                | 您需要成为                                           |     |
| administrator and you might imagine that     | 管理员，您可能会认为                                      |     |
| the way to solve this is to write sudo       | 解决此问题的方法是编写 sudo                                |     |
| echo 500 but I still get a permission        | echo 500 但我仍然收到权限                               |     |
| denied error but why is that it's            | 被拒绝的错误，但为什么 是                                   |     |
| because as I mentioned before these          | 因为正如我之前提到的，                                     |     |
| redirections of input and output is not      | -                                               |     |
| something the programs know about when       | 当                                               |     |
| we piped Elison to tail tail did not         | 我们将 Elison 传送到 tail 时，程序并不知道这些输入和输出的重定向。 tail 不 |     |
| know about LS and LS did not know about      | 知道 LS，而 LS 也不知道                                 |     |
| tail the pipe and the redirection was        | tail 管道，并且重定向是由                                 |     |
| set up by the shell so in this case          | shell所以在这种情况下                                   |     |
| what's happening is I'm telling my shell     | 发生的事情是我告诉我的shell使用                              |     |
| run the program sudo with the arguments      | 参数                                              |     |
| echo and 500 and send its output to the      | echo和500运行程序sudo并将其输出发送到                        |     |
| file called brightness but the shell is      | 名为brightness的文件但是shell是                         |     |
| what is opening the brightness file it       | 打开亮度文件的它                                        |     |
| is not the sudo program so in this case      | 不是sudo程序所以 在这种情况下，                              |     |
| the shell which is running as me tries       | 当我尝试                                            |     |
| to open the brightness file for writing      | 打开亮度文件进行写入时正在运行的 shell                          |     |
| and it's not allowed to do that and          | 不允许这样做，                                         |     |
| therefore I get a permission down error      | 因此我收到一个权限下降错误，                                  |     |
| you might have seen this if you like         | 如果您喜欢                                           |     |
| search for something end up on Stack         | 搜索最终出现在 Stack Overflow 上的内容，您可能已经看到了这一点         |     |
| Overflow and it tells just run this          | 它告诉你只要运行这个                                      |     |
| command and you'll see that it does          | 命令，你就会看到它会做                                     |     |
| something like they give you                 | 一些类似他们给你                                        |     |
| instructions like one two sis what's an      | 指示的事情，比如一二姐妹什么是                                 |     |
| example net ipv4 for word for example        | 单词的net ipv4示例，例如，                               |     |
| this is something you may have seen if       | 如果你正在设置防火墙，你可能会看到这个                             |     |
| you're setting up a firewall and this        | -                                               |     |
| command is intended to work                  | 命令的目的是工作，                                       |     |
| because this little pound symbol             | 因为这个小英镑符号                                       |     |
| indicates run this as root this is           | 表示以 root 身份运行，这是                                |     |
| something that is very rarely explained      | 很少解释的事情，                                        |     |
| but that is what the pound symbol means      | 但这就是英镑符号的含义，                                    |     |
| you'll see on my prompt there's a dollar     | 您会在我的提示符上看到一个美元                                 |     |
| symbol instead and the dollar indicates      | 符号，而美元表示                                        |     |
| you are not running as root so the           | 您不是 以 root 身份运行，所以                              |     |
| question is how do I get around this         | 问题是如何解决这个问题，                                    |     |
| well I could switch into a root terminal     | 我可以切换到 root 终端，                                 |     |
| so one way to do this is to run sudo su      | 所以一种方法是运行 sudo su                               |     |
| sudo su is saying run the following          | sudo su 是说运行以下                                  |     |
| command s root and su is a complicated       | 命令 s root 和 su 是一个复杂的                           |     |
| command that effectively gets you a          | 命令，有效 为你提供一个                                    |     |
| shell as the super user so if I do this      | 超级用户的 shell，所以如果我输入这种                           |     |
| type of password then now you'll see         | 类型的密码，那么现在你会看到                                  |     |
| that the username at the beginning           | 开头的用户名                                          |     |
| changed from jon to root and the prompt      | 从 jon 更改为 root，提示符                              |     |
| changed from a dollar to a pound if I        | 从美元更改为英镑，如果我                                    |     |
| now I come in to that file if I do echo      | 现在进入 该文件，如果我回显                                  |     |
| 500 to brightness my screen got a little     | 500 亮度，我的屏幕会有点                                  |     |
| dimmer but you can't see it you just         | 暗，但你看不到它，你只                                     |     |
| have to trust me and now I didn't get an     | 需要相信我，现在我没有收到                                   |     |
| error and this is because the shell is       | 错误，这是因为 shell                                   |     |
| now running as root it is not running as     | 现在以 root 身份运行 不以                                |     |
| Jon and the root user is allowed to open     | Jon 身份运行，并且允许 root 用户打开                         |     |
| this file but given our knowledge that       | 此文件，但考虑到                                        |     |
| we have of the terminal now there's          | 我们对终端的了解，现在                                     |     |
| actually a way for us to do this without     | 实际上有一种方法可以让我们无需                                 |     |
| having to drop to a root shell and that      | 进入 root shell 即可执行此操作，                          |     |
| is as follows that's I guess restore it      | 我猜如下 将其恢复                                       |     |
| to 1060 so do you see why this is            | 到 1060 那么你知道为什么这里有所                             |     |
| different here I'm telling my shell to       | 不同吗？我告诉我的 shell                                 |     |
| run the echo 1060 command which is gonna     | 运行 echo 1060 命令，该命令将                            |     |
| echo 1060 and I'm telling it to run the      | 回显 1060，我告诉它运行                                  |     |
| sudo tee brightness command and I'm          | sudo tee Brightness 命令，我                        |     |
| telling you to send the output of echo       | 告诉你 将 echo 的输出发送                                |     |
| into sudo tee in order to understand this    | 到 sudo tee 为了理解这一点，                             |     |
| you need to know what the tee command does   | 您需要知道 tee 命令的作用                                 |     |
| the tee command takes its input and writes   | tee 命令获取其输入并将                                   |     |
| it to a file but also to standard out so     | 其写入文件，但也写入标准输出，因此                               |     |
| tee is a convenient way if you have say a    | 如果您有的话，那么 tee 是一种方便的方法                          |     |
| log file that you want to like send to a     | 您想要发送到                                          |     |
| file to store for later but you also         | 文件以供以后存储的日志文件，但您也                               |     |
| want to see it to yourself then you can      | 想自己查看它，然后您可以                                    |     |
| pipe it through tee give it the name of a    | 通过 tee 管道它给它一个                                  |     |
| file and it will write whatever its          | 文件名，它会将其输入的任何内容写入                               |     |
| input is both to that file and to your       | 该文件 在你的                                         |     |
| screen and here I'm taking advantage of      | 屏幕上，我正在利用                                       |     |
| that program I'm saying run tee as route     | 该程序，我说的是运行 tee 作为路由，                            |     |
| and have tee right into the brightness       | 并将 tee 直接放入亮度                                   |     |
| file and so in this case the tee program     | 文件中，因此在这种情况下，                                   |     |
| which is what is opening the brightness      | 打开亮度                                            |     |
| file is running as root and so it is         | 文件的 tee 程序以 root 身份运行 因此，                       |     |
| allowed to do                                | -                                               |     |
| if I run this it will now again you          | 如果我运行这个，它现在会再次出现，你                              |     |
| can't see but the brightness and I've        | 看不到，但是亮度，我已经                                    |     |
| been turned on by a laptop and I don't       | 通过笔记本电脑打开了，我没有                                  |     |
| get any errors and I never had to drop       | 收到任何错误，而且我从来没有                                  |     |
| into a root shell and run commands there     | 陷入根目录 shell 并在那里运行命令，                           |     |
| which can often be somewhat dangerous if     | 如果                                              |     |
| you want to explore this filesystem a        | 您想更多地探索这个文件系统，这通常会有些危险，这里                       |     |
| little bit more there's a lot of             | 有很多                                             |     |
| interesting stuff in here if you just        | 有趣的东西，如果您只是                                     |     |
| sort of start browsing around you can        | 开始浏览，您可以                                        |     |
| find all sorts of fun things so for          | 找到各种有趣的东西，                                      |     |
| example we noticed that there was a fun      | 例如我们 注意到这里有一个有趣的                                |     |
| brightness command here I wonder what        | 亮度命令，我想知道                                       |     |
| other kinds of brightness I can set so I     | 我还可以设置哪些其他类型的亮度，这样我就                            |     |
| can use the find command which we will       | 可以使用 find 命令，我们                                 |     |
| also talk about in a coming lecture I        | 也将在接下来的讲座中讨论该命令，我                               |     |
| wouldn't look on any file whose name         | 不会查看任何名称                                        |     |
| it's a little like brightness in the         | 有点像的文件 当前目录中的亮度没有                               |     |
| current directory that's unhelpful maybe     | 帮助，也许                                           |     |
| they're not files did I misspell             | 它们不是文件，我是否拼错了                                   |     |
| brightness yeah why is it being annoying     | 亮度，是的，为什么它很烦人                                   |     |
| Oh apparently it does not want to search     | 哦，显然它不想为                                        |     |
| for brightness for me how well luckily       | 我搜索亮度，对你来说多么幸运，                                 |     |
| for you I know of one already handy that     | 我知道有一个已经很方便了，                                   |     |
| there is a subdirectory called LEDs and      | 有一个 称为 LED 的子目录和                                |     |
| LEDs have brightness too what kind of        | LED 也有亮度，那里有什么样的                                |     |
| LEDs are there ooh lots of things for        | LED 哦，有很多东西，                                    |     |
| example the scroll lock led now most of      | 例如滚动锁定 LED，现在大多数                                |     |
| you probably don't know what the scroll      | 人可能不知道滚动                                        |     |
| lock LED is or much less what scroll         | 锁定 LED 是什么，或者更不用说                               |     |
| lock is you might have seen a key on         | 您可能已经看到滚动锁定是什么 键盘上的一个键                          |     |
| your keyboard neighbor named scroll lock     | 叫做滚动锁，                                          |     |
| basically no one knows what it means         | 基本上没有人知道它意味着什么，                                 |     |
| anymore no one really uses it for            | 没有人真正使用它做                                       |     |
| anything it's mostly just a dead key and     | 任何事情，它主要只是一把死键，                                 |     |
| also a dead LED what if you wanted to        | 也是一个死 LED，如果你想                                  |     |
| configure it so that every time you get      | 配置它，以便每次你收到                                     |     |
| email your scroll lock LED lights up         | 电子邮件时，该怎么办？ 滚动锁 LED 会亮起，                        |     |
| because there's no other reason why it       | 因为没有其他原因它                                       |     |
| would light up well if we seed you into      | 会亮起，如果我们将您播种到                                   |     |
| this particular directory that has a         | 这个具有                                            |     |
| brightness place and it's set to zero        | 亮度位置的特定目录中，并且它设置为零，                             |     |
| well what happens if I write one into it     | 那么如果我向其中写入一个，会发生什么，                             |     |
| you probably should not just be writing      | 您可能不应该只是写入                                      |     |
| random numbers into random files in this     | 随机数到这个目录中的随机文件中，                                |     |
| directory because you are affecting your     | 因为你直接影响你的                                       |     |
| kernel directly like look up what the        | 内核，就像                                           |     |
| files do in this particular case I have      | 在这种特殊情况下查找文件的作用一样，我已经                           |     |
| warned safety goggles and I've done my       | 警告过安全护目镜，并且我已经完成了我的                             |     |
| research so now you can't tell but on my     | 研究，所以现在你无法分辨，但在我的                               |     |
| keyboard the scroll lock LED is now lit      | 键盘上 滚动锁定 LED 现在亮起，                              |     |
| so now if I wrote a program that like        | 所以现在如果我编写一个程序，例如                                |     |
| did some checking of mail and stuff I        | 检查邮件和其他内容，我                                     |     |
| could have it at the end run a program       | 可以让它在最后运行                                       |     |
| that echoes one into this file and now I     | 一个将其回显到该文件中的程序，现在我                              |     |
| have a way for my led to my keyboard to      | 有一种方法可以将我的 LED 引导到键盘 为了                         |     |
| indicate when I've new email at this         | 表明我此时收到新电子邮件，                                   |     |
| point you should know roughly your way       | 您应该大致了解                                         |     |
| around                                       | -                                               |     |
| the terminal around the shell and and        | shell 周围的终端，并且至少在理论上有                           |     |
| know enough to accomplish these basic        | 足够的知识来完成这些基本                                    |     |
| tasks at least in theory now you             | 任务，现在您                                          |     |
| shouldn't need to use like                   | 不需要使用像                                          |     |
| point-and-click interfaces to find files     | 点击这样的操作 接口来查找文件                                 |     |
| anymore                                      | 还有                                              |     |
| there's one remaining trick you might        | 一个你可能                                           |     |
| need and that is the ability to open a       | 需要的技巧，那就是打开文件的能力，                               |     |
| file so far I've only really given you       | 到目前为止我只真正给了你                                    |     |
| ways to find files but one thing you         | 查找文件的方法，但你                                      |     |
| should know about is missing semester        | 应该知道的一件事是缺少学期                                   |     |
| xdg-open this will probably only work        | xdg-open 这可能会 只能在                               |     |
| on Linux on Mac OS I think it's just         | Mac OS 上的 Linux 上工作 我认为它只是                      |     |
| called open on Windows who knows             | 在 Windows 上称为 open 谁知道                          |     |
| xdg-open you give the name of a file and     | xdg-open 你给出一个文件的名称，                            |     |
| it will open it in the appropriate program   | 它会在适当的程序中打开它，                                   |     |
| so if you open if you do xdg-open an         | 所以如果你打开如果你执行 xdg-open 一个                        |     |
| HTML file that will open your browser        | HTML 文件 将打开您的浏览器                                |     |
| and open that file and once you have         | 并打开该文件，一旦您拥有                                    |     |
| that program in theory you should no         | 该程序，理论上您将                                       |     |
| longer need to open like a Finder window     | 不再需要像 Finder 窗口一样打开，                            |     |
| ever again you might want to for other       | 您可能出于其他                                         |     |
| reasons but in theory you can accomplish     | 原因需要打开该文件，但理论上您可以                               |     |
| at all using the tools that we've            | 使用我们的工具来完成                                      |     |
| learned today this might all seem            | 今天我们了解到，这                                       |     |
| relatively basic for some of you but as      | 对你们中的一些人来说可能看起来相对基础，但正如                         |     |
| I mentioned this is sort of the ramp-up      | 我提到的，这是                                         |     |
| period of now we all know how the shell      | 现在的加速期，我们都知道 shell 是如何                          |     |
| works and a lot of what we'll be doing       | 工作的，并且我们                                        |     |
| in future lectures is using this             | 在未来的讲座中要做的很多事情都是使用 这些                           |     |
| knowledge to do really interesting           | 知识可以使用 shell 做非常有趣的                             |     |
| things using the shell that sort of this     | 事情，这就是                                          |     |
| is learning the the interface that we're     | 学习我们                                            |     |
| going to be using and so it's important      | 将要使用的界面，因此                                      |     |
| we all know it we're gonna talk a lot        | 我们都知道这一点很重要，我们将                                 |     |
| more in the next lecture about how to        | 在下一堂课中详细讨论如何                                    |     |
| automate tasks like this how to write        | 自动化这样的任务如何编写                                    |     |
| scripts that run a bunch of programs for     | 为您运行一堆程序的脚本，                                    |     |
| you and have to do things like               | 并且必须                                            |     |
| conditionals and loops and stuff in your     | 在终端中执行诸如条件和循环之类的操作，                             |     |
| terminal and do things like run a            | 以及执行诸如运行                                        |     |
| program until it fails which can be          | 程序直到它失败之类的操作，这在                                 |     |
| handy in classes where you want to run       | 您想要的类中非常方便 运行                                   |     |
| something until your test suite fails        | 一些东西，直到你的测试套件失败，                                |     |
| for example so that's the topic for next     | 例如，这就是                                          |     |
| week's lecture did you have a question       | 下周讲座的主题，你有一个问题                                  |     |
| it's what you've been demoing this           | 吗？你一直在演示这个                                      |     |
| assist directory that presumably will        | 辅助目录，大概                                         |     |
| only work if you're running that is a        | 只有在你运行时才会起作用，这是一个                               |     |
| good question I don't know whether the       | 很好的问题，我不知道。 不知道                                 |     |
| windows subsystem for Linux will expose      | Linux的Windows子系统是否会暴露                           |     |
| the sis file system if it does it            | sis文件系统，如果它这样做的话，它                              |     |
| probably only exposes a very small           | 可能只会暴露极                                         |     |
| number of things it might because there      | 少数的东西，因为                                        |     |
| are I don't know check it out                | 有我不知道检查一下，                                      |     |
| one thing you'll see is the lecture          | 你会看到的一件事是讲义                                     |     |
| notes for this lecture are already           | 本讲座已经                                           |     |
| online and at the very bottom of the         | 在线，在                                            |     |
| file there are a bunch of exercises some     | 文件的最底部有一堆练习，其中一些                                |     |
| of them are relatively easy some of them     | 相对简单，一些则有点                                      |     |
| are a little bit harder and what we          | 困难，我们                                           |     |
| encourage you to do is to take a stab at     | 鼓励您尝试                                           |     |
| going through them if you know this          | 完成它们 如果你已经知道这些                                  |     |
| stuff already it should go really            | 东西了，那么它应该会                                      |     |
| quickly if you don't it might teach you      | 很快，如果你不知道的话，它可能会教给你                             |     |
| a bunch of things that you might not         | 很多你可能没有                                         |     |
| realize you didn't know and for the          | 意识到你不知道的东西，在                                    |     |
| office hours that we're gonna do right       | -                                               |     |
| after this lecture we will happily help      | 本次讲座结束后我们将在办公时间内进行 将很乐意帮助                       |     |
| you get through all of those or if there     | 您完成所有这些，或者如果                                    |     |
| are other commands and you learn in the      | 还有其他命令，并且您在这个过程中学习您                             |     |
| process you want to know how to use more     | 想知道如何更                                          |     |
| efficiently and then in next lecture         | 有效地使用，然后在明天的下一堂课中，                              |     |
| which is tomorrow will basically be          | 基本上会                                            |     |
| assuming that you know the kind of stuff     | 假设您知道那些东西                                       |     |
| that the exercise is going to teach you      | 该练习将教您，网站                                       |     |
| there's also a an email address on the       | 上还有一个电子邮件地址，                                    |     |
| website where you can send us questions      | -                                               |     |
| if you think of something like after the     | 如果您想到办公时间结束后之类的问题，您可以向我们发送问题，在                  |     |
| office hours are finished are there any      | -                                               |     |
| questions before we end today no no all      | 我们今天结束之前是否还有任何问题 不，不，                           |     |
| right well we will have office hours on      | 好吧，我们会的 办公时间 32 号楼                              |     |
| the ninth floor of the gates building of     | Gates 大楼九楼                                      |     |
| building 32 in like five minutes             | 大约五分钟后                                          |     |
| sweet see you there                          | 再见                                              |     |
| week's lecture did you have a question       | 下周讲座的主题，你有一个问题                                  |     |
| it's what you've been demoing this           | 吗？你一直在演示这个                                      |     |
| assist directory that presumably will        | 辅助目录，大概                                         |     |
| only work if you're running that is a        | 只有在你运行时才会起作用，这是一个                               |     |
| good question I don't know whether the       | 很好的问题，我不知道。 不知道                                 |     |
| windows subsystem for Linux will expose      | Linux的Windows子系统是否会暴露                           |     |
| the sis file system if it does it            | sis文件系统，如果它这样做的话，它                              |     |
| probably only exposes a very small           | 可能只会暴露极                                         |     |
| number of things it might because there      | 少数的东西，因为                                        |     |
| are I don't know check it out                | 有我不知道检查一下，                                      |     |
| one thing you'll see is the lecture          | 你会看到的一件事是讲义                                     |     |
| notes for this lecture are already           | 本讲座已经                                           |     |
| online and at the very bottom of the         | 在线，在                                            |     |
| file there are a bunch of exercises some     | 文件的最底部有一堆练习，其中一些                                |     |
| of them are relatively easy some of them     | 相对简单，一些则有点                                      |     |
| are a little bit harder and what we          | 困难，我们                                           |     |
| encourage you to do is to take a stab at     | 鼓励您尝试                                           |     |
| going through them if you know this          | 完成它们 如果你已经知道这些                                  |     |
| stuff already it should go really            | 东西了，那么它应该会                                      |     |
| quickly if you don't it might teach you      | 很快，如果你不知道的话，它可能会教给你                             |     |
| a bunch of things that you might not         | 很多你可能没有                                         |     |
| realize you didn't know and for the          | 意识到你不知道的东西，在                                    |     |
| office hours that we're gonna do right       | -                                               |     |
| after this lecture we will happily help      | 本次讲座结束后我们将在办公时间内进行 将很乐意帮助                       |     |
| you get through all of those or if there     | 您完成所有这些，或者如果                                    |     |
| are other commands and you learn in the      | 还有其他命令，并且您在这个过程中学习您                             |     |
| process you want to know how to use more     | 想知道如何更                                          |     |
| efficiently and then in next lecture         | 有效地使用，然后在明天的下一堂课中，                              |     |
| which is tomorrow will basically be          | 基本上会                                            |     |
| assuming that you know the kind of stuff     | 假设您知道那些东西                                       |     |
| that the exercise is going to teach you      | 该练习将教您，网站                                       |     |
| there's also a an email address on the       | 上还有一个电子邮件地址，                                    |     |
| website where you can send us questions      | -                                               |     |
| if you think of something like after the     | 如果您想到办公时间结束后之类的问题，您可以向我们发送问题，在                  |     |
| office hours are finished are there any      | -                                               |     |
| questions before we end today no no all      | 我们今天结束之前是否还有任何问题 不，不，                           |     |
| right well we will have office hours on      | 好吧，我们会的 办公时间 32 号楼                              |     |
| the ninth floor of the gates building of     | Gates 大楼九楼                                      |     |
| building 32 in like five minutes             | 大约五分钟后                                          |     |
| sweet see you there                          | 再见                                              |     |
| system is are not actually files on your     | 系统实际上并不是文件系统。                                   |     |
| computer instead these are various           | 相反，这些是您的计算机的各种                                  |     |
| kernel parameters so the kernel is like      | 内核参数，因此内核                                       |     |
| basically the the core of your computer      | 基本上就像计算机的核心，                                    |     |
| this is a way for you to access various      | 这是您                                             |     |
| kernel parameters through what looks         | 通过看起来                                           |     |
| like a file system you'll see here that      | 像文件系统的东西访问各种内核参数的方法，您将在这里看到，                    |     |
| if I CD into class for example it has        | 如果我将 CD 转入类 例如，它有                               |     |
| directories for a bunch of different         | 一堆不同                                            |     |
| types of devices that I can interact         | 类型的设备的目录，我可以与之交互，                               |     |
| with or various queues I can access or all   | 或者我可以访问的各种队列，或者                                 |     |
| sorts of weird knobs internally and          | 内部各种奇怪的旋钮，                                      |     |
| because they're exposed as files it means    | 因为它们作为文件公开，这意味着                                 |     |
| we can also use all the tools have been      | 我们还可以使用一直在使用的所有工具                               |     |
| using so far in order to manipulate them     | 到目前为止，为了操纵它们，                                   |     |
| one example of this is if you go into        | 一个例子是，如果您进入                                     |     |
| sys class backlight so this backlight        | sys 类背光，则直接使用此背光，                               |     |
| directly and lets you configure the          | 并允许您                                            |     |
| backlight on your laptop if you have one     | 在笔记本电脑上配置背光（如果您有笔记本电脑），                         |     |
| so I can CD in to intel backlight this       | 这样我可以将 CD 插入英特尔背光，这                             |     |
| is an Intel laptop inside here you'll        | 是一台英特尔笔记本电脑 在这里你会                               |     |
| see there's a file called brightness and     | 看到有一个名为亮度的文件，                                   |     |
| I can cat the brightness this is the         | 我可以捕捉亮度，这是                                      |     |
| current brightness of my screen but not      | 我屏幕的当前亮度，但                                      |     |
| only that I can modify this too in order     | 不仅如此，我还可以修改它以                                   |     |
| to change the brightness of my screen so     | 更改屏幕的亮度，所以                                      |     |
| you might think that I could do let's        | 你可能认为我可以这样做 让我们看看                               |     |
| see what the max brightness is here okay     | 这里的最大亮度是多少，好吧，                                  |     |
| so it's currently set to the max             | 所以它目前设置为最大                                      |     |
| brightness you might imagine that I          | 亮度，你可能会想象我                                      |     |
| could do something like if I do echo         | 可以做一些事情，比如如果我做回声，                               |     |
| let's do half or something                   | 让我们做一半或                                         |     |
| echo 500 to brightness                       | 回声500到亮度，                                       |     |
| if I do this it says                         | 如果我这样做，它说                                       |     |
| permission denied I'm not allowed to         | 权限被拒绝我是 不允许                                     |     |
| modify brightness because in order to        | 修改亮度，因为                                         |     |
| basically in order to change things in       | 基本上为了更改内核中的内容，                                  |     |
| the kernel you need to be the                | 您需要成为                                           |     |
| administrator and you might imagine that     | 管理员，您可能会认为                                      |     |
| the way to solve this is to write sudo       | 解决此问题的方法是编写 sudo                                |     |
| echo 500 but I still get a permission        | echo 500 但我仍然收到权限                               |     |
| denied error but why is that it's            | 被拒绝的错误，但为什么 是                                   |     |
| because as I mentioned before these          | 因为正如我之前提到的，                                     |     |
| redirections of input and output is not      | -                                               |     |
| something the programs know about when       | 当                                               |     |
| we piped Elison to tail tail did not         | 我们将 Elison 传送到 tail 时，程序并不知道这些输入和输出的重定向。 tail 不 |     |
| know about LS and LS did not know about      | 知道 LS，而 LS 也不知道                                 |     |
| tail the pipe and the redirection was        | tail 管道，并且重定向是由                                 |     |
| set up by the shell so in this case          | shell所以在这种情况下                                   |     |
| what's happening is I'm telling my shell     | 发生的事情是我告诉我的shell使用                              |     |
| run the program sudo with the arguments      | 参数                                              |     |
| echo and 500 and send its output to the      | echo和500运行程序sudo并将其输出发送到                        |     |
| file called brightness but the shell is      | 名为brightness的文件但是shell是                         |     |
| what is opening the brightness file it       | 打开亮度文件的它                                        |     |
| is not the sudo program so in this case      | 不是sudo程序所以 在这种情况下，                              |     |
| the shell which is running as me tries       | 当我尝试                                            |     |
| to open the brightness file for writing      | 打开亮度文件进行写入时正在运行的 shell                          |     |
| and it's not allowed to do that and          | 不允许这样做，                                         |     |
| therefore I get a permission down error      | 因此我收到一个权限下降错误，                                  |     |
| you might have seen this if you like         | 如果您喜欢                                           |     |
| search for something end up on Stack         | 搜索最终出现在 Stack Overflow 上的内容，您可能已经看到了这一点         |     |
| Overflow and it tells just run this          | 它告诉你只要运行这个                                      |     |
| command and you'll see that it does          | 命令，你就会看到它会做                                     |     |
| something like they give you                 | 一些类似他们给你                                        |     |
| instructions like one two sis what's an      | 指示的事情，比如一二姐妹什么是                                 |     |
| example net ipv4 for word for example        | 单词的net ipv4示例，例如，                               |     |
| this is something you may have seen if       | 如果你正在设置防火墙，你可能会看到这个                             |     |
| you're setting up a firewall and this        | -                                               |     |
| command is intended to work                  | 命令的目的是工作，                                       |     |
| because this little pound symbol             | 因为这个小英镑符号                                       |     |
| indicates run this as root this is           | 表示以 root 身份运行，这是                                |     |
| something that is very rarely explained      | 很少解释的事情，                                        |     |
| but that is what the pound symbol means      | 但这就是英镑符号的含义，                                    |     |
| you'll see on my prompt there's a dollar     | 您会在我的提示符上看到一个美元                                 |     |
| symbol instead and the dollar indicates      | 符号，而美元表示                                        |     |
| you are not running as root so the           | 您不是 以 root 身份运行，所以                              |     |
| question is how do I get around this         | 问题是如何解决这个问题，                                    |     |
| well I could switch into a root terminal     | 我可以切换到 root 终端，                                 |     |
| so one way to do this is to run sudo su      | 所以一种方法是运行 sudo su                               |     |
| sudo su is saying run the following          | sudo su 是说运行以下                                  |     |
| command s root and su is a complicated       | 命令 s root 和 su 是一个复杂的                           |     |
| command that effectively gets you a          | 命令，有效 为你提供一个                                    |     |
| shell as the super user so if I do this      | 超级用户的 shell，所以如果我输入这种                           |     |
| type of password then now you'll see         | 类型的密码，那么现在你会看到                                  |     |
| that the username at the beginning           | 开头的用户名                                          |     |
| changed from jon to root and the prompt      | 从 jon 更改为 root，提示符                              |     |
| changed from a dollar to a pound if I        | 从美元更改为英镑，如果我                                    |     |
| now I come in to that file if I do echo      | 现在进入 该文件，如果我回显                                  |     |
| 500 to brightness my screen got a little     | 500 亮度，我的屏幕会有点                                  |     |
| dimmer but you can't see it you just         | 暗，但你看不到它，你只                                     |     |
| have to trust me and now I didn't get an     | 需要相信我，现在我没有收到                                   |     |
| error and this is because the shell is       | 错误，这是因为 shell                                   |     |
| now running as root it is not running as     | 现在以 root 身份运行 不以                                |     |
| Jon and the root user is allowed to open     | Jon 身份运行，并且允许 root 用户打开                         |     |
| this file but given our knowledge that       | 此文件，但考虑到                                        |     |
| we have of the terminal now there's          | 我们对终端的了解，现在                                     |     |
| actually a way for us to do this without     | 实际上有一种方法可以让我们无需                                 |     |
| having to drop to a root shell and that      | 进入 root shell 即可执行此操作，                          |     |
| is as follows that's I guess restore it      | 我猜如下 将其恢复                                       |     |
| to 1060 so do you see why this is            | 到 1060 那么你知道为什么这里有所                             |     |
| different here I'm telling my shell to       | 不同吗？我告诉我的 shell                                 |     |
| run the echo 1060 command which is gonna     | 运行 echo 1060 命令，该命令将                            |     |
| echo 1060 and I'm telling it to run the      | 回显 1060，我告诉它运行                                  |     |
| sudo tee brightness command and I'm          | sudo tee Brightness 命令，我                        |     |
| telling you to send the output of echo       | 告诉你 将 echo 的输出发送                                |     |
| into sudo tee in order to understand this    | 到 sudo tee 为了理解这一点，                             |     |
| you need to know what the tee command does   | 您需要知道 tee 命令的作用                                 |     |
| the tee command takes its input and writes   | tee 命令获取其输入并将                                   |     |
| it to a file but also to standard out so     | 其写入文件，但也写入标准输出，因此                               |     |
| tee is a convenient way if you have say a    | 如果您有的话，那么 tee 是一种方便的方法                          |     |
| log file that you want to like send to a     | 您想要发送到                                          |     |
| file to store for later but you also         | 文件以供以后存储的日志文件，但您也                               |     |
| want to see it to yourself then you can      | 想自己查看它，然后您可以                                    |     |
| pipe it through tee give it the name of a    | 通过 tee 管道它给它一个                                  |     |
| file and it will write whatever its          | 文件名，它会将其输入的任何内容写入                               |     |
| input is both to that file and to your       | 该文件 在你的                                         |     |
| screen and here I'm taking advantage of      | 屏幕上，我正在利用                                       |     |
| that program I'm saying run tee as route     | 该程序，我说的是运行 tee 作为路由，                            |     |
| and have tee right into the brightness       | 并将 tee 直接放入亮度                                   |     |
| file and so in this case the tee program     | 文件中，因此在这种情况下，                                   |     |
| which is what is opening the brightness      | 打开亮度                                            |     |
| file is running as root and so it is         | 文件的 tee 程序以 root 身份运行 因此，                       |     |
| allowed to do                                | -                                               |     |
| if I run this it will now again you          | 如果我运行这个，它现在会再次出现，你                              |     |
| can't see but the brightness and I've        | 看不到，但是亮度，我已经                                    |     |
| been turned on by a laptop and I don't       | 通过笔记本电脑打开了，我没有                                  |     |
| get any errors and I never had to drop       | 收到任何错误，而且我从来没有                                  |     |
| into a root shell and run commands there     | 陷入根目录 shell 并在那里运行命令，                           |     |
| which can often be somewhat dangerous if     | 如果                                              |     |
| you want to explore this filesystem a        | 您想更多地探索这个文件系统，这通常会有些危险，这里                       |     |
| little bit more there's a lot of             | 有很多                                             |     |
| interesting stuff in here if you just        | 有趣的东西，如果您只是                                     |     |
| sort of start browsing around you can        | 开始浏览，您可以                                        |     |
| find all sorts of fun things so for          | 找到各种有趣的东西，                                      |     |
| example we noticed that there was a fun      | 例如我们 注意到这里有一个有趣的                                |     |
| brightness command here I wonder what        | 亮度命令，我想知道                                       |     |
| other kinds of brightness I can set so I     | 我还可以设置哪些其他类型的亮度，这样我就                            |     |
| can use the find command which we will       | 可以使用 find 命令，我们                                 |     |
| also talk about in a coming lecture I        | 也将在接下来的讲座中讨论该命令，我                               |     |
| wouldn't look on any file whose name         | 不会查看任何名称                                        |     |
| it's a little like brightness in the         | 有点像的文件 当前目录中的亮度没有                               |     |
| current directory that's unhelpful maybe     | 帮助，也许                                           |     |
| they're not files did I misspell             | 它们不是文件，我是否拼错了                                   |     |
| brightness yeah why is it being annoying     | 亮度，是的，为什么它很烦人                                   |     |
| Oh apparently it does not want to search     | 哦，显然它不想为                                        |     |
| for brightness for me how well luckily       | 我搜索亮度，对你来说多么幸运，                                 |     |
| for you I know of one already handy that     | 我知道有一个已经很方便了，                                   |     |
| there is a subdirectory called LEDs and      | 有一个 称为 LED 的子目录和                                |     |
| LEDs have brightness too what kind of        | LED 也有亮度，那里有什么样的                                |     |
| LEDs are there ooh lots of things for        | LED 哦，有很多东西，                                    |     |
| example the scroll lock led now most of      | 例如滚动锁定 LED，现在大多数                                |     |
| you probably don't know what the scroll      | 人可能不知道滚动                                        |     |
| lock LED is or much less what scroll         | 锁定 LED 是什么，或者更不用说                               |     |
| lock is you might have seen a key on         | 您可能已经看到滚动锁定是什么 键盘上的一个键                          |     |
| your keyboard neighbor named scroll lock     | 叫做滚动锁，                                          |     |
| basically no one knows what it means         | 基本上没有人知道它意味着什么，                                 |     |
| anymore no one really uses it for            | 没有人真正使用它做                                       |     |
| anything it's mostly just a dead key and     | 任何事情，它主要只是一把死键，                                 |     |
| also a dead LED what if you wanted to        | 也是一个死 LED，如果你想                                  |     |
| configure it so that every time you get      | 配置它，以便每次你收到                                     |     |
| email your scroll lock LED lights up         | 电子邮件时，该怎么办？ 滚动锁 LED 会亮起，                        |     |
| because there's no other reason why it       | 因为没有其他原因它                                       |     |
| would light up well if we seed you into      | 会亮起，如果我们将您播种到                                   |     |
| this particular directory that has a         | 这个具有                                            |     |
| brightness place and it's set to zero        | 亮度位置的特定目录中，并且它设置为零，                             |     |
| well what happens if I write one into it     | 那么如果我向其中写入一个，会发生什么，                             |     |
| you probably should not just be writing      | 您可能不应该只是写入                                      |     |
| random numbers into random files in this     | 随机数到这个目录中的随机文件中，                                |     |
| directory because you are affecting your     | 因为你直接影响你的                                       |     |
| kernel directly like look up what the        | 内核，就像                                           |     |
| files do in this particular case I have      | 在这种特殊情况下查找文件的作用一样，我已经                           |     |
| warned safety goggles and I've done my       | 警告过安全护目镜，并且我已经完成了我的                             |     |
| research so now you can't tell but on my     | 研究，所以现在你无法分辨，但在我的                               |     |
| keyboard the scroll lock LED is now lit      | 键盘上 滚动锁定 LED 现在亮起，                              |     |
| so now if I wrote a program that like        | 所以现在如果我编写一个程序，例如                                |     |
| did some checking of mail and stuff I        | 检查邮件和其他内容，我                                     |     |
| could have it at the end run a program       | 可以让它在最后运行                                       |     |
| that echoes one into this file and now I     | 一个将其回显到该文件中的程序，现在我                              |     |
| have a way for my led to my keyboard to      | 有一种方法可以将我的 LED 引导到键盘 为了                         |     |
| indicate when I've new email at this         | 表明我此时收到新电子邮件，                                   |     |
| point you should know roughly your way       | 您应该大致了解                                         |     |
| around                                       | -                                               |     |
| the terminal around the shell and and        | shell 周围的终端，并且至少在理论上有                           |     |
| know enough to accomplish these basic        | 足够的知识来完成这些基本                                    |     |
| tasks at least in theory now you             | 任务，现在您                                          |     |
| shouldn't need to use like                   | 不需要使用像                                          |     |
| point-and-click interfaces to find files     | 点击这样的操作 接口来查找文件                                 |     |
| anymore                                      | 还有                                              |     |
| there's one remaining trick you might        | 一个你可能                                           |     |
| need and that is the ability to open a       | 需要的技巧，那就是打开文件的能力，                               |     |
| file so far I've only really given you       | 到目前为止我只真正给了你                                    |     |
| ways to find files but one thing you         | 查找文件的方法，但你                                      |     |
| should know about is missing semester        | 应该知道的一件事是缺少学期                                   |     |
| xdg-open this will probably only work        | xdg-open 这可能会 只能在                               |     |
| on Linux on Mac OS I think it's just         | Mac OS 上的 Linux 上工作 我认为它只是                      |     |
| called open on Windows who knows             | 在 Windows 上称为 open 谁知道                          |     |
| xdg-open you give the name of a file and     | xdg-open 你给出一个文件的名称，                            |     |
| it will open it in the appropriate program   | 它会在适当的程序中打开它，                                   |     |
| so if you open if you do xdg-open an         | 所以如果你打开如果你执行 xdg-open 一个                        |     |
| HTML file that will open your browser        | HTML 文件 将打开您的浏览器                                |     |
| and open that file and once you have         | 并打开该文件，一旦您拥有                                    |     |
| that program in theory you should no         | 该程序，理论上您将                                       |     |
| longer need to open like a Finder window     | 不再需要像 Finder 窗口一样打开，                            |     |
| ever again you might want to for other       | 您可能出于其他                                         |     |
| reasons but in theory you can accomplish     | 原因需要打开该文件，但理论上您可以                               |     |
| at all using the tools that we've            | 使用我们的工具来完成                                      |     |
| learned today this might all seem            | 今天我们了解到，这                                       |     |
| relatively basic for some of you but as      | 对你们中的一些人来说可能看起来相对基础，但正如                         |     |
| I mentioned this is sort of the ramp-up      | 我提到的，这是                                         |     |
| period of now we all know how the shell      | 现在的加速期，我们都知道 shell 是如何                          |     |
| works and a lot of what we'll be doing       | 工作的，并且我们                                        |     |
| in future lectures is using this             | 在未来的讲座中要做的很多事情都是使用 这些                           |     |
| knowledge to do really interesting           | 知识可以使用 shell 做非常有趣的                             |     |
| things using the shell that sort of this     | 事情，这就是                                          |     |
| is learning the the interface that we're     | 学习我们                                            |     |
| going to be using and so it's important      | 将要使用的界面，因此                                      |     |
| we all know it we're gonna talk a lot        | 我们都知道这一点很重要，我们将                                 |     |
| more in the next lecture about how to        | 在下一堂课中详细讨论如何                                    |     |
| automate tasks like this how to write        | 自动化这样的任务如何编写                                    |     |
| scripts that run a bunch of programs for     | 为您运行一堆程序的脚本，                                    |     |
| you and have to do things like               | 并且必须                                            |     |
| conditionals and loops and stuff in your     | 在终端中执行诸如条件和循环之类的操作，                             |     |
| terminal and do things like run a            | 以及执行诸如运行                                        |     |
| program until it fails which can be          | 程序直到它失败之类的操作，这在                                 |     |
| handy in classes where you want to run       | 您想要的类中非常方便 运行                                   |     |
| something until your test suite fails        | 一些东西，直到你的测试套件失败，                                |     |
| for example so that's the topic for next     | 例如，这就是                                          |     |
| week's lecture did you have a question       | 下周讲座的主题，你有一个问题                                  |     |
| it's what you've been demoing this           | 吗？你一直在演示这个                                      |     |
| assist directory that presumably will        | 辅助目录，大概                                         |     |
| only work if you're running that is a        | 只有在你运行时才会起作用，这是一个                               |     |
| good question I don't know whether the       | 很好的问题，我不知道。 不知道                                 |     |
| windows subsystem for Linux will expose      | Linux的Windows子系统是否会暴露                           |     |
| the sis file system if it does it            | sis文件系统，如果它这样做的话，它                              |     |
| probably only exposes a very small           | 可能只会暴露极                                         |     |
| number of things it might because there      | 少数的东西，因为                                        |     |
| are I don't know check it out                | 有我不知道检查一下，                                      |     |
| one thing you'll see is the lecture          | 你会看到的一件事是讲义                                     |     |
| notes for this lecture are already           | 本讲座已经                                           |     |
| online and at the very bottom of the         | 在线，在                                            |     |
| file there are a bunch of exercises some     | 文件的最底部有一堆练习，其中一些                                |     |
| of them are relatively easy some of them     | 相对简单，一些则有点                                      |     |
| are a little bit harder and what we          | 困难，我们                                           |     |
| encourage you to do is to take a stab at     | 鼓励您尝试                                           |     |
| going through them if you know this          | 完成它们 如果你已经知道这些                                  |     |
| stuff already it should go really            | 东西了，那么它应该会                                      |     |
| quickly if you don't it might teach you      | 很快，如果你不知道的话，它可能会教给你                             |     |
| a bunch of things that you might not         | 很多你可能没有                                         |     |
| realize you didn't know and for the          | 意识到你不知道的东西，在                                    |     |
| office hours that we're gonna do right       | -                                               |     |
| after this lecture we will happily help      | 本次讲座结束后我们将在办公时间内进行 将很乐意帮助                       |     |
| you get through all of those or if there     | 您完成所有这些，或者如果                                    |     |
| are other commands and you learn in the      | 还有其他命令，并且您在这个过程中学习您                             |     |
| process you want to know how to use more     | 想知道如何更                                          |     |
| efficiently and then in next lecture         | 有效地使用，然后在明天的下一堂课中，                              |     |
| which is tomorrow will basically be          | 基本上会                                            |     |
| assuming that you know the kind of stuff     | 假设您知道那些东西                                       |     |
| that the exercise is going to teach you      | 该练习将教您，网站                                       |     |
| there's also a an email address on the       | 上还有一个电子邮件地址，                                    |     |
| website where you can send us questions      | -                                               |     |
| if you think of something like after the     | 如果您想到办公时间结束后之类的问题，您可以向我们发送问题，在                  |     |
| office hours are finished are there any      | -                                               |     |
| questions before we end today no no all      | 我们今天结束之前是否还有任何问题 不，不，                           |     |
| right well we will have office hours on      | 好吧，我们会的 办公时间 32 号楼                              |     |
| the ninth floor of the gates building of     | Gates 大楼九楼                                      |     |
| building 32 in like five minutes             | 大约五分钟后                                          |     |
| sweet see you there                          | 再见                                              |     |
| week's lecture did you have a question       | 下周讲座的主题，你有一个问题                                  |     |
| it's what you've been demoing this           | 吗？你一直在演示这个                                      |     |
| assist directory that presumably will        | 辅助目录，大概                                         |     |
| only work if you're running that is a        | 只有在你运行时才会起作用，这是一个                               |     |
| good question I don't know whether the       | 很好的问题，我不知道。 不知道                                 |     |
| windows subsystem for Linux will expose      | Linux的Windows子系统是否会暴露                           |     |
| the sis file system if it does it            | sis文件系统，如果它这样做的话，它                              |     |
| probably only exposes a very small           | 可能只会暴露极                                         |     |
| number of things it might because there      | 少数的东西，因为                                        |     |
| are I don't know check it out                | 有我不知道检查一下，                                      |     |
| one thing you'll see is the lecture          | 你会看到的一件事是讲义                                     |     |
| notes for this lecture are already           | 本讲座已经                                           |     |
| online and at the very bottom of the         | 在线，在                                            |     |
| file there are a bunch of exercises some     | 文件的最底部有一堆练习，其中一些                                |     |
| of them are relatively easy some of them     | 相对简单，一些则有点                                      |     |
| are a little bit harder and what we          | 困难，我们                                           |     |
| encourage you to do is to take a stab at     | 鼓励您尝试                                           |     |
| going through them if you know this          | 完成它们 如果你已经知道这些                                  |     |
| stuff already it should go really            | 东西了，那么它应该会                                      |     |
| quickly if you don't it might teach you      | 很快，如果你不知道的话，它可能会教给你                             |     |
| a bunch of things that you might not         | 很多你可能没有                                         |     |
| realize you didn't know and for the          | 意识到你不知道的东西，在                                    |     |
| office hours that we're gonna do right       | -                                               |     |
| after this lecture we will happily help      | 本次讲座结束后我们将在办公时间内进行 将很乐意帮助                       |     |
| you get through all of those or if there     | 您完成所有这些，或者如果                                    |     |
| are other commands and you learn in the      | 还有其他命令，并且您在这个过程中学习您                             |     |
| process you want to know how to use more     | 想知道如何更                                          |     |
| efficiently and then in next lecture         | 有效地使用，然后在明天的下一堂课中，                              |     |
| which is tomorrow will basically be          | 基本上会                                            |     |
| assuming that you know the kind of stuff     | 假设您知道那些东西                                       |     |
| that the exercise is going to teach you      | 该练习将教您，网站                                       |     |
| there's also a an email address on the       | 上还有一个电子邮件地址，                                    |     |
| website where you can send us questions      | -                                               |     |
| if you think of something like after the     | 如果您想到办公时间结束后之类的问题，您可以向我们发送问题，在                  |     |
| office hours are finished are there any      | -                                               |     |
| questions before we end today no no all      | 我们今天结束之前是否还有任何问题 不，不，                           |     |
| right well we will have office hours on      | 好吧，我们会的 办公时间 32 号楼                              |     |
| the ninth floor of the gates building of     | Gates 大楼九楼                                      |     |
| building 32 in like five minutes             | 大约五分钟后                                          |     |
| sweet see you there                          | 再见                                              |     |