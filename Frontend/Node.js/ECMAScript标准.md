便于[模块化](模块化.md)。
因为Mode.js默认支持[CommonJS标准](CommonJS标准.md)，如果要使用
ESM标准语法，则需要在运行模块所在文件夹中新建`package.json`文件，并设置`{"type": "module"}`

![](../../img/Pasted%20image%2020250118120138.png)



## 默认导入导出

若要**全部加载**，则使用默认导入和导出。

### 语法

**导出**：`export default {}`
**导入**：`import 变量名 from ‘模块名或路径’`

### 举例

对文件的导出，其语法与大同小异：

```
//导出
export default {
  url: baseURL,
  sum: getArraySum
};
```

导入：
```
import obj from './utils.js'
console.log(obj);
```

还需要创建一个`package.json`文件切换标准：
```
{
  "type": "module"
}
```
这里的`type`的值默认是`"commonjs"`，将其修改为`"module"`即可使用。

如果没切换，则会报错：

![](../../img/Pasted%20image%2020250118142412.png)



## 命名导入导出

若要**按需加载**，则使用命名导入和导出。（当导出的变量不一定都同时加载或者有些变量在当前情况下不需要时，就用命名导入和导出）。

### 语法

**导出**：`export 修饰定义语句`
也就是在定义函数或者常量前加个`export`。
例如：

```
export const haseURL = 'http';
```


**导入**：`import {同名变量} from '模块名或路径'`
此处的***同名变量***是指与导出的变量名相同。


### 例子

导出：
```
export const baseURL = 'http://hmajax.itheima.net';
export const getArraySum = arr => arr.reduce((sum, item) => sum += item, 0);
```


导入：
```
import { baseURL, getArraySum } from './utils.js';
console.log(baseURL);
console.log(getArraySum);

const re = getArraySum([1, 2]);
console.log(re);

```