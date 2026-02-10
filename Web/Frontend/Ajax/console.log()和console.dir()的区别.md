`console.dir` 和 `console.log` 都是 **JavaScript 中用来输出信息到控制台的方法**，但它们有一些关键的区别，主要体现在显示输出的格式和细节上。

### 1. **`console.log()`**

- **用途**：用来打印常规的消息、变量、对象或任何数据。

- **输出内容**：如果输出的是一个对象，`console.log` 会以简化的形式打印该对象，不会展开嵌套的结构。它通常以**易读的文本格式显示，且不提供对象内部的详细结构**。

- **适用场景**：适用于输出一般信息或简单数据。

```
const person = { name: 'John', age: 30, address: { city: 'New York', zip: '10001' } }; console.log(person);
```

输出：
```
{ name: 'John', age: 30, address: { city: 'New York', zip: '10001' } }
```

### 2. **`console.dir()`**

- **用途**：用来显示对象的详细结构和可遍历的属性。

- **输出内容**：`console.dir` 会展示**对象的所有属性，包括嵌套对象的详细结构**，且以**树形结构**展开，便于深入查看对象内部的所有属性和值。

- **适用场景**：适用于调试对象，尤其是深层嵌套的对象或数组，便于查看所有的属性和方法。

**示例**：
```
const person = { name: 'John', age: 30, address: { city: 'New York', zip: '10001' } }; console.dir(person);
```


输出（以树形结构展开）：
```
{ name: 'John',
  age: 30,   
  address: { city: 'New York', zip: '10001' }
}
```



### 总结：

- **`console.log()`**：适合输出**一般信息**，较为简洁。
- **`console.dir()`**：适合输出**对象**，特别是***复杂或嵌套的对象结构，显示更多的细节信息***。