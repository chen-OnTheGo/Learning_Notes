
## 语法

使用CommonJS标准对文件进行导入和导出。（[模块化](模块化.md)）

导入：`module.exports = {}`
导出：`require('模块名或路径')`

## 举例

在这里，我创建了两个文件，分别为`utils.js`和`index.js`。
前者负责封装导出，后者负责导入使用。

`utils.js`:
```
const baseURL = 'http://hmajax.itheima.net';
const getArraySum = arr => arr.reduce((sum, item) => sum += item, 0);

//导出
module.exports = {
  url: baseURL,
  sum: getArraySum
};
```

该文件中包含了一个地址字符串和一个箭头函数，以及导出部分。其`module.export`导出的是一个对象，`url`和`sum`是可以自己命名的对象属性，将其赋值，即能导出。

index.js：
```
const obj = require('./utils.js');
console.log(obj);
const re = obj.sum([5, 1, 2, 3]);
console.log(re);
```

在这个文件中用`require('模块名或路径')`的格式来导入`utils.js`文件，若是导入自定义的文件，括号里需要填入其路径，若是导入内置模块，则括号里可直接写名字(e.g：fs 、path等)。