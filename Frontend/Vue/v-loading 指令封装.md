
场景：实际开发过程中，发送请求需要时间，在请求的数据未加载完时，页面会处于空白状态，这给用户的体验感不好，所以需要渲染加载页面。

## 分析

- 本质 `loading` 效果就是一个蒙层，盖在了盒子上。
- 数据请求中，开启 `loading` 状态，添加蒙层。
- 数据请求完毕，关闭 `loading` 状态，移除蒙层。

实现：
1. 准备一个 `loading` 类，通过**伪元素**定位，设置宽高，实现蒙层。
2. 添加移除蒙层 => 本质是**添加和移除类**。
3. 可封装**复用**。

伪元素添加和移除起来会更方便。若准备真实的元素，进行添加或移除还需要操作dom，需要把这个节点创建或删除；而伪元素操作起来只需要添加或移除类。


例子：
1. 准备loading类
```
<style>
/* 伪类 - 蒙层效果 */
.loading:before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: #fff url('./loading.gif') no-repeat center;
}
......
</style>
```

1. 添加和移除loading
```
<div class="box" v-loading="isLoad">
......
```


```
......
directives:{
    loading: {
      inserted(el, binding){
        binding.value ? el.classList.add('loading') : el.classList.remove('loading');
      },
      update(el, binding){
        binding.value ? el.classList.add('loading') : el.classList.remove('loading');

      }
    }
  }
  ......
```

可复用到其他组件。