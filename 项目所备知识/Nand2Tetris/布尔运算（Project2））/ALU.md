
## 概念

**ALU** (Arithmetic Logic Unit)，也称为算术逻辑单元。它是计算机处理器中的核心组件之一，负责执行算术运算（如加法、减法）和逻辑运算（如与、或、非）。它也是 CPU（中央处理单元）的一部分，通常与控制单元（CU，Control Unit）和寄存器文件一起工作，实现指令的执行。

![](../../../img/Pasted%20image%2020250302100420.png)

我们将 `ALU` 单独提出来，研究其作用：

![](../../../img/Pasted%20image%2020250302100714.png)

由图可知，`ALU` 在给定的两个输入上执行函数`f`，再得出结果。
这里的 `f` 可以指**预定义算术函数**（加、减、乘......）和**逻辑函数**（And、Or、Xor......）中的一种。

如何去决定 `f` 是哪种函数呢，这需要六个变量：`zx`、`nx`、`zy`、`ny`、`f`、`no`。

![](../../../img/Pasted%20image%2020250302101145.png)

这六个变量分别的作用：

```
// if (zx == 1) sets x = 0        // 16-bit constant

// if (nx == 1) sets x = !x       // bitwise not

// if (zy == 1) sets y = 0        // 16-bit constant

// if (ny == 1) sets y = !y       // bitwise not

// if (f == 1)  sets out = x + y  // integer 2's complement addition

// if (f == 0)  sets out = x & y  // bitwise and

// if (no == 1) sets out = !out   // bitwise not
```

我们再将六个数组合起来，就可以实现一下函数，甚至更多：

![](../../../img/Pasted%20image%2020250302101432.png)

我们可以发现，在增加六个输入的同时，又增加了两个输出：`zr` 、 `ng`。

他们俩的作用是：
```
zr, // if (out == 0) equals 1, else 0 ng; // if (out < 0) equals 1, else 0
```
若输出为0，则 `zr`为1；若输出为负数，则`ng` 为1。



![](../../../img/Pasted%20image%2020250302101755.png)

咱们来举个例，为了简单，我就随意取两个四位二进制数 `x`、`y`，它们分别为 `0010` 、`0111`，假如想执行 `y - x`操作，意味着此时:
```
zx=0,
nx=0,
zy=0,
ny=1,
f=1,
no=1
```

从第一步开始，
- `zx=0,nx=0` 则x不变；
- `zy=0,ny=1`则 `y=!y`也就是 `y=1000` ；
- `f=1` 则`out=x+y=1010` ；
- `no=1` 则 `out=!out=0101`。

结果与预期相符。


其实，无论是`ALU`的内部结构、原理、功能，都比以上所述丰富复杂得多，这里只是简单介绍一下 `ALU` ，并实现其部分功能。