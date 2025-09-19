
该案例是把时钟案例通过Web服务提供给浏览器，供我们在浏览器中浏览。

视频中给的案例是这样的：

![](../../img/Pasted%20image%2020241216160708.png)

于是我打算把暑假写的静态网页拿来实践，写出这样一段：

```
const http = require('http');
const server = http.createServer();
const fs = require('fs');
const path = require('path');

server.on('request', (req, res) => {
  if(req.url === '/index.html'){
    fs.readFile(path.join(__dirname, 'Travel_Website_Design/index.html'), (err, data) => {
      if(err){
        console.log(err);
      }
      else{
        res.setHeader('Content-Type', 'text/html;charset=utf-8');
        res.end(data.toString());
      }
    })
  }
  else{
    res.setHeader('Content-Type', 'text/html;charset=utf-8');
    res.end('访问的资源不存在');
  }
})

server.listen(3030, () => {
  console.log('success');
  
})
```

查找端口号为3030的相应网址，却始终显示访问的资源不存在。首先怀疑是路径的原因，于是决定使用`req.url`的调试信息：
```
console.log('请求路径：', req.url);
```

该方法可以帮助我们打印出客户端请求的URL路径。例如，如果请求的路径是`/about`，就返回关于页面的内容，即：如果访问`http://localhost:3030/about`会打印：
`请求路径：/about`


（在这里闹了一个乌龙）

<hr>


然而，当我在代码中添加这句调试语句，返回的却是：
```
请求路径： /favicon.ico
```
这表示浏览器正在请求网站的图标文件。浏览器会在访问网站时自动请求这个文件。

直接引用Ghatgpt的话：

>为什么会请求 `/favicon.ico`？
>
> **浏览器行为**：大多数现代浏览器会自动尝试加载 `/favicon.ico` 文件，并将其作为网页图标显示在浏览器的标签页上。即使你没有明确在 HTML 中指定图标，浏览器也会默认去请求这个路径。
  >  
>**文件位置**：浏览器默认会请求 `/favicon.ico` 这个路径。如果服务器没有提供该文件，浏览器将无法显示网站的图标，但页面内容通常不会受到影响。

简而言之就是，大多数浏览器会自动尝试加载`/favicon.ico`文件，如果服务器没有提供该文件，页面内容通常不会受到影响。

（起初我一直以为是`rep.url === '/index.html'`的问题，写到这我才发现根本不会影响网页，再次深刻体会到写blog的重要性。好的，那我们重新开始分析）

<hr>


首先，我们要知道的一点是：

### 什么是`req.url`？

`req.url` 是 **Node.js** 中 `http` 模块提供的请求对象（`req`）的一个属性，它表示 **客户端请求的 URL 路径部分**。

其只包含：**请求的路径** 和 **查询字符串**。 
不包含：协议、域名、端口等信息。

举个栗子：假设浏览器访问`http://localhost:3030/index.html?name=John`，则`rep.url`的值会是`/index.html?name=John`。获取的也就是客户端请求的URL的部分信息。

而之所以我的网页没加载出来，就是因为我只输入了`http://localhost:3030`，而***没有请求的路径***  ！！
(正确做法：`http://localhost:3030/index.html`)

其实如果不想输入后面那段，也可以直接用浏览器默认的请求顺序，只需修改一小段代码：

将
```
if(req.url === '/index.html')
```
修改成：
```
if(req.url === '/favicon.ico')
```



好的，问题解决了。
好的，第二个问题又来了。

原本的网页：
![](../../img/Pasted%20image%2020241216165731.png)

加载出来的网页：
![](../../img/Pasted%20image%2020241216165753.png)

哈哈哈哈，我的CSS、Js那些渲染全不见了......

问题主要出在这句：`res.setHeader('Content-Type', 'text/html;charset=utf-8');`

其中`text/html`表示返回的数据是HTML文档，而CSS、JS等静态资源是独立于HTML的文件，需要单独加载出来。
就比如说，HTML代码中，`<link>`标签中的资源路径是相对路径：
```
<link rel="stylesheet" href="assets/css/styles.css">
```

浏览器则会根据当前页面的路径来查找资源，若没有处理，则服务器无法找到对应的文件。


```
const http = require('http');
const server = http.createServer();
const fs = require('fs');
const path = require('path');

// 静态文件处理：对于样式、脚本、图片等文件
const mimeTypes = {
  '.html': 'text/html',
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.png': 'image/png',
  '.ico': 'image/x-icon',
};

server.on('request', (req, res) => {
  console.log('请求路径：', req.url);

  // 处理 favicon.ico 请求，避免浏览器频繁请求
  if (req.url === '/favicon.ico') {
    fs.readFile(path.join(__dirname, 'Travel_Website_Design/assets/img/favicon.png'), (err, data) => {
      if (err) {
        console.log('读取 favicon.ico 错误:', err);
        res.statusCode = 500;
        res.end('读取文件错误');
      } else {
        res.setHeader('Content-Type', 'image/x-icon');
        res.end(data);
      }
    });
    return;
  }

  // 处理根路径 / 请求
  if (req.url === '/') {
    fs.readFile(path.join(__dirname, 'Travel_Website_Design/index.html'), (err, data) => {
      if (err) {
        console.log('读取文件错误:', err);
        res.statusCode = 500;
        res.end('读取文件错误');
      } else {
        res.setHeader('Content-Type', 'text/html;charset=utf-8');
        res.end(data.toString());
      }
    });
  }
  
  // 处理静态资源请求，如 CSS 文件
  else if (req.url.startsWith('/assets/')) {
    const filePath = path.join(__dirname, 'Travel_Website_Design', req.url);
    const ext = path.extname(filePath);
    fs.readFile(filePath, (err, data) => {
      if (err) {
        console.log('读取文件错误:', err);
        res.statusCode = 404;
        res.end('文件未找到');
      } else {
        res.setHeader('Content-Type', mimeTypes[ext] || 'application/octet-stream');
        res.end(data);
      }
    });
  }
  
  // 处理其他未定义路径
  else {
    res.setHeader('Content-Type', 'text/html;charset=utf-8');
    res.end('访问的资源不存在');
  }
});

server.listen(3030, () => {
  console.log('success');
});

```