
用于发送初始化渲染请求。

```
<body>
  <div id="app">
    <ul>
      <li class="news" v-for="(item, index) in list" :key="item.id">
        <div class="left">
          <div class="title">{{ item.title }}</div>
          <div class="info">
            <span>{{ item.source }}</span>
            <span>{{ item.time }}</span>
          </div>
        </div>
        <div class="right">
          <img :src="item.img" alt="">
        </div>
      </li> 
    </ul>

  </div>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.7.16/dist/vue.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <script>
    // 接口地址：http://hmajax.itheima.net/api/news
    // 请求方式：get
    const app = new vue({
      el: '#app',
      data: {
        list: []
        
      },
      async created(){
        const res = await axios.get('http://hmajax.itheima.net/api/news');
        console.log(res);
        this.list = res.data.data;
      }
    })
  </script>
</body>
```

关于代码中的 `async` 和 `await` 关键字，可以跳转到 [async](../JS/async.md) 。