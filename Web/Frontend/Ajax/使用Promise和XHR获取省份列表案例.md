
此案例是使用[Promise](Promise.md)和XHR获取省份列表，个人理解此案例的作用是为后来封装简易的axios过度，起一个承上启下的作用。还有一个作用，就是展现Promise的应用场景。

步骤：
1. 创建`Promise`对象。
2. 执行XHR异步代码，获取省份列表。
3. 关联成功或失败函数，做后续处理。

开门见山：

```
<body>

  <p class="my-p"></p>

  <script>

    //创建Promise对象

    const p = new Promise((resolve, reject) => {

      //执行XHR异步代码，获取省份列表

      const xhr = new XMLHttpRequest();

      xhr.open('GET', 'http://hmajax.itheima.net/api/province1')

      xhr.addEventListener('loadend', () => {

        // console.log(xhr);

        //status的数值为2XX的形式都是成功响应

        if(xhr.status >= 200 && xhr.status < 300){

          resolve(JSON.parse(xhr.response))

        }

        else{

          reject(new Error(xhr.response))

        }

      })

  

      xhr.send();

    })

  

    //关联成功或失败函数，做后续处理

    p.then(result => {

      console.log(result);

      document.querySelector('.my-p').innerHTML = result.list.join('<br>')

    }).catch(error => {

      //错误对象要用console.dir详细打印

      console.dir(error);

      //服务器返回错误提示消息，插入到p标签显示

      document.querySelector('.my-p').innerHTML = error.message;

    })

  </script>

</body>
```


这个案例中有两点需要注意：

1. [如何判断`XMLHttpRequest`（XHR）是否成功响应？](如何判断XHR是否成功响应.md)
2. [为什么错误对象要用`console.dir()`详细打印?](console.log()和console.dir()的区别.md)

