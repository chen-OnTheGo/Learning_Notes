遇到的问题：
	在Node.js环境中执行代码，若代码中存在相对路径，则该相对路径是指以终端这个文件夹为起点的路径，而不是以该文件当前所在文件夹为起点。

解决：使用绝对路径

```
//加载fs模块对象
const fs = require('fs');
//加载path模块对象
const path = require('path');

console.log(__dirname);

//调用path.join()配合__dirname组成目标文件的绝对路径
//写入文件内容
//系统会自动把‘/’方向转为合理的方向
fs.readFile(path.join(__dirname, '../test1.txt'),(err, data) => {
  if(err){
    console.log(err);
  }
  else{
    console.log(data.toString());
  }
})
```