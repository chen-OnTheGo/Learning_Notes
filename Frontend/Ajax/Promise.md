
### 概念

Promise表示（管理）一个异步操作最终状态和结果值的对象。

Promise 对象用于表示一个[[异步操作]]的最终完成（或失败）及其结果值。


### 好处

	1.逻辑更清晰。成功和失败状态，可以关联对应处理程序。
	2.了解axios函数内部运作机制。
	3.能解决回调函数地狱问题。


### 使用步骤

![](../../img/Pasted%20image%2020241130184936.png)

### 例子

```
<script>

    //创建Promise对象
    const p = new Promise((resolve, reject) => {

      //执行异步代码
      setTimeout(() => {
        // resolve('success');
        reject(new Error('faild..'))
      }, 2000)
    })

    //获取结果
    p.then(result => {
      console.log(result);
    }).catch(error => {
      console.log(error);
    })
    
  </script>
```


在`Promise` 构造函数中，传递给 `Promise` 的两个参数分别是 **`resolve`** 和 **`reject`**，它们是由 JavaScript 引擎提供的函数，用于表示异步操作的最终状态——**成功**或**失败**。

1. **`resolve`**：表示**操作成功**

- **作用**：`resolve()` 是一个函数，用于在异步操作成功完成时，通知 `Promise` 对象操作成功，并返回成功的结果。
    
- **用法**：调用 `resolve(value)`，其中 `value` 可以是任何类型的数据（例如字符串、数字、对象、数组等）。

- **解释**：当 上述代码中的`resolve('success')` 被调用时，`Promise` 变为 [**已兑现（fulfilled）**](Promise的三种状态.md#概念) 状态，`then()` 方法的回调函数就会被执行，传入 `resolve` 的参数 `'success'` 就会作为结果被传递给回调函数。


 ### 2. **`reject`**：表示操作失败

- **作用**：`reject()` 是一个函数，用于在异步操作失败时，通知 `Promise` 对象操作失败，并返回失败的原因。
    
- **用法**：调用 `reject(reason)`，其中 `reason` 是一个描述失败原因的值，通常是一个 `Error` 对象或者字符串，也可以是任何其他类型的数据。
    
- **解释**：当 `reject(new Error('faild..'))` 被调用时，`Promise` 变为 [**已拒绝（rejected）**](Promise的三种状态.md#概念) 状态，`catch()` 方法的回调函数会被执行，接收 `reject` 传入的 `Error` 对象，并打印出错误信息。