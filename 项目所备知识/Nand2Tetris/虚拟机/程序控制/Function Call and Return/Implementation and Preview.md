
我们先谈谈函数执行的概念。
众所周知，计算机程序通常由多个函数组成，并且，如果一个程序是用来做一些复杂的事情，那么它很可能由数十种方法组成。但是，在任何给定的时间点，这些方法中只有很小一部分在起着作用（只会在需要时才调用对应的方法）。
例如：`foo`函数会调用`bar`函数，`bar`函数会调用`sqrt`函数......
而我们把当前执行路径上的所有函数称为`call chain`(”调用链“)。
`call chain`只是一个抽象概念，它描述了命令链。

![](../../../../../img/Pasted%20image%2020260224200039.png)

从实现的角度来看，这些函数都分别有一些`state`（状态），有自己的“私有世界”。只要这个函数存在于`call chain`上，就必须维护这个私有世界。
这里的`state`指函数的`work stack`和`memory segments`。
当某个函数开始运行时，我们必须为这个函数创建一个状态 —— 我们必须给它一个空的`work stack`以及`memory segments`。然后函数开始做自己的事情。
并且，只要函数在执行，我们就必须保持这种状态，尤其是当这个函数要调用另一个函数时，我们必须将这个函数的`state`保存在某个地方，并且知道被调用函数结束执行时如何返回到这个函数。
当某个函数执行结束（执行`return`指令了），我们就不再需要它的`state`了，就可以将其回收，以确保内存不会被完全消耗。

![](../../../../../img/Pasted%20image%2020260224200426.png)

所以，总的来说，当`caller`调用`callee`时，我们就会拥有两个`state`，一个是`caller`的`state`，一个是`callee`的`state`。当`callee`开始运行后必须将`caller`的状态保存在某个地方，便于`callee`执行结束后，我们可以恢复`caller`的`state`并继续执行。

![](../../../../../img/Pasted%20image%2020260224201654.png)

但是调用链一般不只有两个函数，我们应该如何去维护`call chain`上所有函数的状态？

先举个栗子，假如有三个函数：`first`, `second`, `third`。先执行`first`, `first`再调用`second`, `second`再调用`third`。这三个函数就组成一条`call chain`。
当`first`函数运行到中途时，停止并调用`second`函数，接着，`second`函数运行到中途时，又要调用`third`函数，在`third`函数运行完后（return后），再恢复`second`函数的运行，在`second`函数运行完后，再恢复`first`函数的运行。

根据上面的栗子我们可以发现，虽然`third`函数的开始执行顺序是最后一个，但是其却是最先执行完的，这就符合==`LIFO`==(*Last In First Out*，后进先出)规则。根据这个规则首先想到的数据结构就是==`stack`==（堆栈）。
每当执行`call`这个指令时，`call chain`就会增长，执行`return`这个指令时，`call chain`就会缩短。

`stack`的使用情况大致如下：

![](../../../../../img/Pasted%20image%2020260224212629.png)

上图中的`nArgs`表示调用函数时要传递的参数个数。
`ARG`指针指向的是`argument segment`的基址，也是`caller` 向`callee`传递的参数段的基址。
接着，灰色部分`caller's frame`就是保存的`caller`的`state`。
当我调用`foo`函数时，首先要为这个`callee`创建一个局部变量段，其长度通过`nArgs`得知，并且必须将它们初始化为`0`。该局部变量段用`local segment`来表示，且`LCL`指针指向的是其基址。

![](../../../../../img/Pasted%20image%2020260224213351.png)

接着我们假设这个`callee`正在被执行，在此过程中它增加了自己的`work stack`，如下图所示：

![](../../../../../img/Pasted%20image%2020260224213458.png)

当执行到这个`callee`的`return`指令时，就必须从`stack`中取出栈顶值（也就是`callee`的返回值），并将其复制到`argument 0`的位置，以便于用返回值替换`caller`推送的参数的值。

![](../../../../../img/Pasted%20image%2020260224213915.png)

接着就需要恢复`caller`的段指针 —— `LCL`, `ARG`, `THIS`, `THAT`，把这些指针改回`caller`的值。
然后清除`callee`的`stack`。设置`caller`的`SP`，使得其指向`ARG + 1`的位置，这样，`callee`的返回值就位于栈顶了。

最后我们需要跳回`caller`代码中的返回地址。

![](../../../../../img/Pasted%20image%2020260224214643.png)

接着，从`caller`的角度观察，其`stack`的栈顶就添加了`callee`的返回值。

![](../../../../../img/Pasted%20image%2020260224215234.png)

我们现在可以引入`global stack`（全局堆栈）的概念。
上面的例子中只介绍了两个函数的`call chain`，其实一般情况下，`call chain`上还有许多其他成对的`caller`和`callee`，使得在`stack`之上，还有更多的函数`state`处于`call chain`的“上游”，并且这些`state`都需要被保持。
因此，我们就会得到一个非常大的`stack`，一个包含所有内容，包含我们实现和维护该程序运行时所需的所有信息的`stack`，不仅包括当前正在执行的函数，还包括整个程序

![](../../../../../img/Pasted%20image%2020260224220016.png)