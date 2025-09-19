
作用：可以实现跨层级共享数据。
（父组件提供数据，子孙辈组件可通过`inject` 去接收）

步骤： 
1. **父组件 `provide` 提供数据。**（提供的数据若是普通类型，则数据是**非响应式**；若是复杂类型，则数据是**响应式**）

```
provide() {
    return {
      // 简单类型 是非响应式的
      color: this.color,
      // 复杂类型 是响应式的
      userInfo: this.userInfo,
    }
  },
  data() {
    return {
      color: 'pink',
      userInfo: {
        name: 'zs',
        age: 18,
      },
    }
  },
```


1. **子/孙组件 `inject` 取值使用。**

```
<template>
  <div class="grandSon">
    我是GrandSon
    {{ color }} -{{ userInfo.name }} -{{ userInfo.age }}
  </div>
</template>

<script>
export default {
  inject: ['color', 'userInfo'],
}
</script>
......
```

由于非响应式数据无法实时自动更新，也就无法修改（即使后台数据更新，页面上的数据也没变），因此更推荐将数据用复杂类型的方式来提供，这样就能实现实时更新了。
