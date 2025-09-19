```
//加载fs模块对象
const fs = require('fs');

//写入文件内容
fs.writeFile('test1.txt', 'LuXiangjun is a pig.', (err) => {
  if(err){
    console.log(err);
  }
  else{
    console.log('success');
  }
})

//读取文件内容
fs.readFile('test1.txt', (err, data) => {
  if(err)
    console.log(err);
  else
    console.log(data.toString());   //data是buffer十六进制数据流对象，用toString（）转换成字符串
})
```