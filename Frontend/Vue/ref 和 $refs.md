
当我们想要获取某个 `dom元素` 或 `组件实例` 时，可以利用 `ref` 和 `$refs` 。

其与 `document.queryselector` 的区别是：

范围不同。 `ref` 和 `$refs` 的选择范围在当前组件内，而`document.queryselector` 的范围是整个页面，相较之下，前者更加精确稳定。


## 获取dom

1. 目标标签添加ref属性。
例如：
```
<div ref="chartRef"> 渲染图表的容器</div>
```

1. 恰当时机，通过 `this.$ref.xxx` 获取目标标签。
例如：
```
this.$refs.chartRef
```



## 获取组件

1. 目标组件添加ref属性。
例如：
```
<BaseForm ref="baseForm"></BaseForm>
```

1. 恰当时机，通过 `this.$ref.xxx` 获取目标组件，就可以调用组件对象里面的方法。
例如：
```
this.$refs.baseForm.组件方法()
```