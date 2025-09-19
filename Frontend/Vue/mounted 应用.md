
需求：当我们创建了一个搜索页面，要求一进页面就能立刻获取焦点。

要让输入框从没有焦点到有焦点，相当于要操作dom。而 `mounted` 阶段为：**模板渲染完成，可以开始操作DOM了**。

可能会想到，为什么不直接给输入框加一个 `autofocus` 属性呢？要知道，Vue的上面部分 (`div` 的内容) 是属于模板部分，而Vue是动态渲染页面，所以模板部分是会被替换的，若Vue的部分没有设置，动态渲染后就不会显示。

所以如果我们想保持焦点，就需要等输入框渲染出来后，让输入框获取焦点。


部分代码如下：
```
<body>
<div class="container" id="app">
  <div class="search-container">
    <img src="https://www.itheima.com/images/logo.png" alt="">
    <div class="search-box">
      <input type="text" v-model="words" id="inp">
      <button>搜索一下</button>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue@2.7.16/dist/vue.js"></script>

<script>
  const app = new Vue({
    el: '#app',
    data: {
      words: ''
    },
    mounted() {
      // console.log(document.querySelector('#inp')); 
      document.querySelector('#inp').focus();
    }
  })
</script>

</body>
```