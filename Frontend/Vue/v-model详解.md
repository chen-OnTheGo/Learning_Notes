
## 原理

`v-model` 本质上是一个语法糖。例如应用在输入框上，就是 `value属性` 和 `input事件` 的合写。

### 作用

提供数据的双向绑定。
- 数据变，视图更新  `:value`
- 视图变，数据更新  `@input`

注： `$event` 用于在模板中，获取事件的形参。



## 表单类组件封装


在一定的情况下，由于子组件的数据常由父组件提供，不是自带的，所以 `v-model` 无法在子组件中使用，这时，我们需要拆解 `v-model` ，**实现子组件和父组件的双向绑定**。

### 核心思路

- 父传子： 数据应该是父组件 `props` 传递过来的， `v-model` 拆解绑定数据。

- 子传父：监听输入，子传父传值给父组件修改。


#### 例子

这里的子组件是展示父组件的数据，修改数据则通过子传父，再父传子的方式展示。

子组件：
```
<template>
  <div>
    <select :value="cityId" @change="handleChange">
      <option value="101">北京</option>
      <option value="102">上海</option>
      <option value="103">武汉</option>
      <option value="104">广州</option>
      <option value="105">深圳</option>
    </select>
  </div>
</template>

<script>
export default {
  props:{
    cityId: String
  },
  methods: {
    handleChange(e){
      this.$emit('changeId', e.target.value);
    }
  }
}
</script>
```

这里的子组件通过 `props` 获取父组件传来的数据，再通过 `:value` 更新渲染的数据；当用户改变 `value` 中的值时，子组件在监听到修改后，通过 `$emit` 将改变的数据传给父组件，父组件再获值更新数据。

父组件：
```
 <template>
  <div class="app">
    <BaseSelect
      :cityId="selectId" @changeId="selectId = $event">
      </BaseSelect>
  </div>
</template>

<script>
import BaseSelect from '../src/components/BaseSelect.vue'
export default {
  data() {
    return {
      selectId: '102',
    }
  },
  components: {
    BaseSelect,
  },
......
```


## 简化代码

子组件不能用 `v-model` 是因为数据不是子组件的，但数据是父组件的，父组件可以修改自己的数据，这意味着我们可以在父组件中用 `v-model` 。

![](../../img/Pasted%20image%2020250309144633.png)


父组件：
```
<BaseSelect
      v-model="selectId" >
      </BaseSelect>
```

(其他内容与简化前相同)


子组件：
```
methods: {
    handleChange(e){
      this.$emit('input', e.target.value);
    }
  }
```

(其他内容与简化前相同)


这样就简化了大部分代码。

但其实，对于“数据的双向绑定”这一作用的实现，若 `props` 的值是 `value`，则可以用 `v-model`，若名称不是 `value` 则用另一种方法： [.sync](修饰符%20.sync.md) 。