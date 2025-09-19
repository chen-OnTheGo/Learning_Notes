
对于==样本不平衡==问题可以用RUSBoost算法。

![](../../../../img/Pasted%20image%2020250830171833.png)

![](../../../../img/Pasted%20image%2020250830171845.png)

MATLAB 中的 RUSboost 算法融合了欠采样和集成学习法(提升法 Boosting)，可有效的应对样本不平衡问题。

推荐的相应论文：![](../../../../img/Pasted%20image%2020250830171957.png)

![](../../../../img/Pasted%20image%2020250830201014.png)

结果可通过==混淆矩阵==、==AUC==（注意正类的选择，通常选择==数量小==的那个，物以稀为贵）来判断效果如何。


### 调参

[26. 对RUSboost调参并进行预测_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1v64y1B7vJ?spm_id_from=333.788.player.switch&vd_source=e224f799d98aec1a6ea19d37bdd0dabe&p=30)

（网格调参）


