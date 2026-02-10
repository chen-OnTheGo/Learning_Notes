
## 作用

**监视数据变化**，执行一些 业务逻辑 或 异步操作。


## 语法

- 简单写法 => 简单类型数据，直接监视。(一次监视一个数据)
- 完整写法 => 添加额外配置。（深度监视复杂类型、立即执行）


## 例子

咱们先举例简单写法，代码如下：

```
<!-- 翻译框 -->
      <div class="box">
        <div class="input-wrap">
          <textarea v-model="obj.words"></textarea>
          <!-- <textarea v-model="words"></textarea> -->
          <span><i>⌨️</i>文档翻译</span>
        </div>
        <div class="output-wrap">
          <div class="transbox">mela</div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.16/dist/vue.js"></script>
    <script src="./axios.js"></script>
    <script>
      // 接口地址：https://applet-base-api-t.itheima.net/api/translate
      // 请求方式：get
      // 请求参数：
      // （1）words：需要被翻译的文本（必传）
      // （2）lang： 需要被翻译成的语言（可选）默认值-意大利
      // -----------------------------------------------
      
      const app = new Vue({
        el: '#app',
        data: {
          // words: '',
          obj: {
            words: ''
          }
        },
        watch: {
          'obj.words'(newValue){
            console.log(newValue);
          }
        }
      })
    </script>
```

这是一个翻译器的部分代码，其中 `<textarea v-model="obj.words"></textarea>` 是在内容区同步`obj.words` 的内容。本节学习的内容主要体现在这些部分： 
```
const app = new Vue({
	el: '#app',
	data: {
	  // words: '',
	  obj: {
		words: ''
	  }
	},
	watch: {
	  'obj.words'(newValue, oldValue){
		console.log(newValue, oldValue);
	  }
	}
  })
```

这里我们监视的是对象`obj`的属性`words` ，由于**方法名不能有`.`这样的特殊符号**，所以需要给`obj.words`加上引号。这里的`newValue`则表示改变后的内容，`oldValue`表示改变前的内容。

若我们监视的是某个变量（数据），则直接用：
```
数据属性名 (newValue, oldValue){
	......
}
```

`oldValue` 一般不会使用，故可省略。




然后是完整写法，语法：
```
data: {
	obj: {
		words: 'apple',
		lang: 'italy'
	},
},

watch: {
	数据属性名: {
		deep: true,
		immediate: true,
		handler(newValue){
			console.log(newValue);
		}
	}
}
```

这里的`deep: true` 表示对复杂类型深度监视，在这里就可以一次性监视对象的多个属性。

`immediate: true` 表示初始化立刻执行一次`handler` 方法。在本个例子中也就是在打开页面时就会立即对`words` 的默认值（`apple`）进行一次翻译。若没写该语句，则只有`words`的内容被修改时才能进行翻译。