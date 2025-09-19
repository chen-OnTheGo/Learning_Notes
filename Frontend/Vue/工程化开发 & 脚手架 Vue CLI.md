
## 基本介绍

`Vue CLI`是Vue官方提供的一个全局命令工具。可以帮我们快速创建一个开发 Vue 项目的标准化基础架子。（集成了 webpack 配置）


## 好处

- 开箱即用，零配置
- 内置`babel` 等工具
- 标准化


## 使用步骤

1. 全局安装： `yarn global add @vue/cli` 或 `npm i @vue/cli -g`
2. 查看Vue版本： `vue --version`
3. 创建项目架子： `vue create project-name`(项目名不能用中文)
4. 启动项目：`yarn serve` 或 `npm run serve`(找 `package.json`)



## 脚手架目录文件介绍 & 项目运行流程

### 文件介绍

按照使用步骤输入后，会生成以下文件：

![](../../img/Pasted%20image%2020250228184927.png)
其作用分别在右侧。


### 运行流程

当输入指令`yarn serve` 后，先运行 `main.js` 这个文件，而 `main.js` 的核心代码部分主要包含三个步骤：

1. 导入 `Vue`。
2. 导入 `App.vue`。
3. 实例化`Vue` ，将`App.vue` 渲染到 `index.html` 容器中。



## 组件化开发 & 根组件

### 概念

*组件化*： 一个页面可以拆分成一个个组件，每个组件有着自己独立的结构、样式、行为。例如下图所示的头部组件、底部组件......

![](../../img/Pasted%20image%2020250228190043.png)

好处：便于维护，利于复用，哪个地方出现问题就去相应组件检查 => 提升开发效率。



*根组件*：（整个应用最上层的组件，）包裹所有普通小组件。

![](../../img/Pasted%20image%2020250228190148.png)



### App.vue 文件（单文件组件）的三个组成部分

- `template` ：结构（有且只能有一个根元素）
- `script` ：js逻辑
- `style` ：样式（可支持`less`，需要装包）

在默认情况下是不支持 `less` 的，若要让 `style` 支持 `less` ，则需要：
1. 给 `style` 加上 `lang="less"`
2. 安装依赖包 `less` 和 `less-loader`
(输入指令： `yarn add less less-loader -D`)  (`-D` 是指开发依赖，只在开发的时候用)