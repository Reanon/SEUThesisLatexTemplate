# 东南大学硕士毕业论文 Latex 模板

本仓库是基于 [SEU-master-thesis](https://github.com/TouchFishPioneer/SEU-master-thesis) 修改而来，从而使得其更加适用于自己的 Latex 模板，这里是适用于**网络空间安全学院**专业硕士的毕业论文，如果有其他需要可以自行定制。

## 仓库介绍

### 使用环境

- 系统：macOS
- 推荐编辑器：TexPad
- 环境：MacTeX2021
- tex编译器：xelatex

### 文件说明

本仓库文件说明如下：

- `template/seumasterthesix.cls`：论文样式文件，不可随意更改。
- `template/seumasterthesix.bst`：参考文献的样式文件，不可随意更改。
- `figures/`：论文中的模版插图都放在该文件夹中，不可随意更改。
- `docs/`：存放着说明论文模版的说明手册以及相关的格式要求，可以删除。
- `script/`：可以使用该目录下的脚本在不同系统环境中编译论文，如果不需要可以删除。

-----

- `main.tex`：论文内容排版的编辑文件，可以参考注释做一些修改。
- `chapter/`：存放各个章节的 .tex 文件，主要编辑文件。
- `pics/`：自己论文中的图放在这个文件夹以区分。
- `reference.bib`：存放 Bibtex 格式的参考文献，可以自己编辑或者自动生成

----

- `README.md`：本项目说明文件，可放心删除。

⚠️在非 Windos 系统下，可能需要安装一些字体，包括但不限于楷体、宋体、黑体、Ubuntu mono、Times New Roman等。如果你在编译论文过程中失败，请首要考虑字体问题。

### 小白使用方案

下载整个仓库，首先删除 README.md，然后在本地配置好 Latex 的运行环境，打开 main.tex 找到红框部分，根据自己论文要分的章节，在 `tex/` 文件夹下添加 .tex 文件，通过 `input{...}` 指令引入到正文中。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220307145005702.png" alt="image-20220307145005702" style="zoom:33%;" />

主要论文的内容都在 `chapter/` 文件夹的下，只要编写对应的章节的 tex 文件即可。

## Latex 环境配置方案

下面是介绍如何在 Mac 上搭建一个比较舒心的Latex 环境

- 在 Windows 上可以采用 texlive + texstudio 的组合，网上有很多教程，这里不再赘述
- 在线的环境有 [shareLatex](https://www.overleaf.com/)，相关教程也很多。

### MacTeX

> [MacTeX 官方网站](https://tug.org/mactex/mactex-download.html)
>
> [mactex| 清华大学开源软件镜像站 ](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/mac/mactex/)

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220102205826119.png" alt="image-20220102205826119" style="zoom:50%;" />

傻瓜式安装，一步一步即可。

2、测试是否安装成功，输入 `latex -version`

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220109214040741.png" alt="image-20220109214040741" style="zoom:33%;" />

### TedPad

> [Texpad for mac中文写作配置|bilibili](https://www.bilibili.com/video/BV1bL411J7Ku?from=search&seid=10409428387249898987&spm_id_from=333.337.0.0)
>
> 环境配置方法：https://zhuanlan.zhihu.com/p/107463077
>
> 软件下载地址：[MacWk](https://www.macwk.com/)

1、将 Texpad 与 MacTeX 关联

打开texpad 偏好设置 --> 正在排版中--> external Typesetter--> 选择 MacTex 目录

- 一般是会自动设置好的

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220109185436349.png" alt="image-20220109185436349" style="zoom: 33%;" />

2、设置排版引擎

设置内容：Tweak typeset settings --> external Typesetter + 自动排版 --> General --> LaTeX + XeLaTeX + 本地

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220307145324739.png" alt="image-20220307145324739" style="zoom: 25%;" />



## 参考

1、[SEU-master-thesis](https://github.com/TouchFishPioneer/SEU-master-thesis)：原模板仓库
2、[东南大学研究生毕业论文LaTeX模板seuthesix的使用技巧](https://blog.csdn.net/jingOlivia/article/details/103816329)
