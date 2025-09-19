
作用：非父子组件之间进行简易消息传递。（复杂场景时用 `Vuex`）


步骤： 
1. 创建一个都能访问到的事件总线（空 `Vue` 实例）

```
import Vue from 'vue'
const Bus  =  new Vue()
export default Bus
```

2. A组件（接收方），监听 `Bus实例` 实例的事件。

```
created() {
    Bus.$on('sendMsg', (msg) => {
      this.msg = msg
    })
  },
```

3. B组件（触发方），触发 `Bus实例` 的事件。

```
methods: {
    sendMsgFn() {
      Bus.$emit('sendMsg', '阿巴阿巴')
    },
  },
```


![](../../img/Pasted%20image%2020250302154832.png)

