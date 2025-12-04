
`backtoBegin.py`文件是从头开始，在去除`user_id`和`registration_date`的情况下，对`residence_base_station_id` 和 `residence_cell_id` 进行类别特征编码。得出的数据结果为：
```
Accuracy: 0.92290000
F1 Score: 0.73641026
score: 0.86695308
```

除掉gender，得出的数据结果：
```
Accuracy: 0.92150000
F1 Score: 0.72865538
score: 0.86364661
```
变低了。此操作撤回。

加上各个时段的比例，得出：
```
Accuracy: 0.92190000
F1 Score: 0.72985126
score: 0.86428538
```
还是变低了，但重要特征显示：
![](../../img/Pasted%20image%2020251023164147.png)


==在backtobegin的基础上，加上周末和工作日的打电话比例：==
```
Accuracy: 0.92340000
F1 Score: 0.73820916
score: 0.86784275
```
有提升，保留。

在此基础上加上各个时段的比例，得出：
```
Accuracy: 0.92190000
F1 Score: 0.73115318
score: 0.86467596
```
撤回。

加上restrain_days：
```
Accuracy: 0.91940000
F1 Score: 0.72130014
score: 0.85997004
```
更离谱了哈，撤回。

加上***年龄分组***：
```
Accuracy: 0.92340000
F1 Score: 0.73820916
score: 0.86784275
```
没变化，撤回吧。

==加上residence_base_station_id_rate：==
```
Accuracy: 0.92500000
F1 Score: 0.74385246
score: 0.87065574
```
保留。

在加上residence_base_station_id_rate的基础上去掉residence_base_station：
```
Accuracy: 0.92020000
F1 Score: 0.72463768
score: 0.86153130
```
撤回

加上注册年份，更低，撤回。
加上注册月份：
```
Accuracy: 0.92070000
F1 Score: 0.72814535
score: 0.86293361
```

撤回注册月份的情况下，加上注册时间是某个月的第几天：
```
Accuracy: 0.92110000
F1 Score: 0.72933105
score: 0.86356931
```

撤回第几天，加上注册时间是当月的第几周：
```
Accuracy: 0.92030000
F1 Score: 0.72564544
score: 0.86190363
```

上面四个注册时间的信息相组合，得出效果最佳的组合为加上==年份、月份、每月的第几天==：
```
Accuracy: 0.92530000
F1 Score: 0.74478989
score: 0.87114697
```

加上年份、月份、每月的第几天以及是每月的第几周注册的数据：
```
Accuracy: 0.92530000
F1 Score: 0.74478989
score: 0.87114697
```
(该月的第几周没有效果？)

将原先数据去掉测试，效果都不好

调参：
Accuracy: 0.93260000
F1 Score: 0.79197531
score: 0.89041259


![](../../img/Pasted%20image%2020251023200514.png)![](../../img/Pasted%20image%2020251023200607.png)



optuna测试次数，过多过少都有影响