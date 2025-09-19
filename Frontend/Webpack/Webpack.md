
## 概念

静态模块打包工具。
- 静态模块：指编写代码过程中的html、css、js、图片等固定内容的文件。
- 打包：把静态模块内容压缩、整合、转译等（前端工程化）
	- 转译：例如1.把`less`/`sass`转成css代码；
			2.把ES6+降级成ES5；
			3.支持多种模块标准语法（CommonJS和ECMAScript等）


## 使用

在创建好项目的基础上：
- 下载`webpack webpack-cli`到当前项目中（版本独立），并配置局部自定义命令。
- 运行打包命令，自动产生`dist`分发文件夹（压缩和优化后，用于最终运行的代码）


下载命令：`npm i webpack webpack-cli --save-dev`

配置局部自定义命令：

在`package.json`文件中，将`"script"`部分加上一句`"build": "webpack"`，即：
```
"scripts": {
	"build": "webpack"
}
```
这里的`build`可以是任意字母组成（小写），相当于将`webpack`命令映射为`build`。

运行命令：`npm run 自定义命令`


### 修改Webpack打包入口和出口

webpack默认打包入口是`src`文件夹下的`index.js`文件，默认打包出口是`dist`文件夹下的`main.js`文件。

步骤：
- 在项目的根目录下添加`webpack.config.js`文件





## !!!!!学到了webpack打包css代码处，后面的内容准备学完vue后再学