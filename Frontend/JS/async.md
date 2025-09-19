
## 概念

`async` 是 JavaScript 中处理**异步操作**的一种语法，结合 `await` 使用可以让异步代码写得像同步代码一样直观。

`async`是一个关键字，用来定义异步函数。`async`函数总是返回一个`Promise` 对象，例如：
```
async function myFunction() {  
  return "Hello";  
}
```

这段代码也等同于：
```
function myFunction() {  
  return Promise.resolve("Hello");  
}
```

如何去使用`async` 函数的返回值 `Promise` 呢？

```
async function myFunction() {  
  return "Hello";  
}  
myFunction().then(  
  function(value){myDisplayer(value);},  
  function(error) {myDisplayer(error);}  
);
```




## await 关键字

`await` 关键字一般都会跟`async` 挂钩，因为 `await` 只能在 `async` 函数内部使用，用来等待一个 `Promise` 对象的结果。

当遇到 `await` 时，JavaScript 会暂停执行，直到 `Promise` 解析完成，之后再继续执行后面的代码。这样可以避免回调地狱，使异步代码的逻辑结构看起来像同步代码。

```
async function fetchData() {
  const res = await fetch('https://api.example.com');
  const data = await res.json();
  console.log(data);
}

```

在这个例子中，`await fetch(...)` 会等待 `fetch` 返回的 `Promise` 解析后，再继续执行 `res.json()`。


## `async` 函数的返回值

`async` 函数的返回值是一个 `Promise` 对象，无论你返回什么类型的值，它都会被自动包裹在一个 `Promise` 对象中。
- - 如果你返回一个普通值，它会被包裹在 `Promise.resolve()` 中。
- 如果返回一个 `Promise`，`async` 函数会返回这个 `Promise`。


## 处理异步错误

在 `async` 函数中，`try...catch` 可以用来捕获 `await` 表达式中的错误，类似于同步代码的异常处理。

e.g: 
```
async function fetchData() {
  try {
    const response = await fetch('https://api.example.com');
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.log('Error occurred:', error);
  }
}
```


## Promise.all

`async` 函数使得我们能够使用 `Promise.all` 来并行执行多个异步操作。

```
async function fetchData() {
  const [res1, res2] = await Promise.all([
    fetch('https://api.example.com/data1'),
    fetch('https://api.example.com/data2')
  ]);
  console.log(await res1.json(), await res2.json());
}
```

`Promise.all` 会等待所有的 `Promise` 都完成后，再继续执行后面的代码。通过 `async`/`await`，我们可以避免回调地狱，清晰地表达并行操作的逻辑。


注意： **`await` 只会暂停 `async` 函数内部的执行，而不会阻塞其他代码的执行。**

例如： 
```
async function test() {
  console.log(1);
  await new Promise(resolve => setTimeout(resolve, 1000)); // 等待1秒
  console.log(2);
}

test();
console.log(3);

```

输出顺序是`1 3 2`。

## 适用场景

- 网络请求：如 `axios`、`fetch` 等异步操作。
- 文件操作：比如 Node.js 中的文件读取等。
- 数据库操作：例如与数据库交互的异步查询。