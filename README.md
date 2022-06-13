# 东南大学硕士毕业论文 Latex 模板

本仓库是基于 [SEU-master-thesis](https://github.com/TouchFishPioneer/SEU-master-thesis) 修改而来，从而使得其更加适用于自己的毕业论文，适用于**网络空间安全学院**专业硕士的毕业论文，如果有其他需要可以自行定制。

## 仓库介绍

### 文件说明

本仓库文件说明如下：

- `figures/defined`：论文中的模版插图都放在该文件夹中，不可随意更改。
- `template/seumasterthesix.cls`：论文样式文件，不可随意更改。
- `template/seumasterthesix.bst`：参考文献的样式文件，不可随意更改。
- `template/seumasterthesis.cfg`：论文封面格式，不可随意更改。

---

- `chapter/`：存放各个章节的 .tex 文件，论文的主体文件。
- `figures/content`：自己论文中的图放在这个文件夹以区分。
- `main.tex`：论文内容排版的编辑文件，可以参考注释做一些修改。
- `reference.bib`：存放 Bibtex 格式的参考文献，可以自己编辑或者自动生成。
- `main.pdf`：论文编译生成的 PDF。

----

- `docs/`：存放着说明论文模版的说明手册以及相关的格式要求。
- `docs/xxx.ppt`：毕业答辩 PPT 模板。
- `script/`：可以使用该目录下的脚本在不同系统环境中编译论文。
- `README.md`：本项目说明文件。

⚠️在非 Windos 系统下，可能需要安装一些字体，包括但不限于楷体、宋体、黑体、Ubuntu mono、Times New Roman 等。如果你在本地编译论文过程中失败，请首要考虑字体问题。

### 小白使用方案

下载整个仓库，首先删除 README.md，然后在本地配置好 Latex 的运行环境，打开 main.tex 找到红框部分，根据自己论文要分的章节，在 `chapter/` 文件夹下添加或修改 .tex 文件，通过 `input{...}` 指令引入到正文中。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220307145005702.png" alt="image-20220307145005702" style="zoom:33%;" />

主要论文的内容都在 `chapter/` 文件夹的下，只要编写对应的章节的 .tex 文件即可。

## Latex 环境配置方案

下面将主要介绍在 Mac 端和 shareLatex 上部署一个在线 Latex 环境。

### Overleaf

> 在线的环境 [shareLatex](https://www.overleaf.com/)，可以用于协作。

这是最简便的 Latex 环境，用来验证模板是否可用。

1、将本仓库的打包下载到本地。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508200147270.png" alt="image-20220508200147270" style="zoom:33%;" />

PS:  油猴（Tampermonkey）上有插件可以加速 GitHub 下载，比直接下载要快很多。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508200325873.png" alt="image-20220508200325873" style="zoom:33%;" />

2、登陆注册 overleaf 之后，将下载下来的 .zip 压缩包上传。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508200502093.png" alt="image-20220508200502093" style="zoom: 25%;" />



3、配置编译器为 XeLaTex。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508200643837.png" alt="image-20220508200643837" style="zoom:33%;" />

4、点击右侧的 Complie，就生成对应的PDF。

![image-20220508200848691](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508200848691.png)



Overleaf 会记录每次修改，点击 History 就能看到，还可以还原每次修改。如果你无法生成 PDF，那么有几种可能：

1. 你没有设置编译器为 「XeLaTex」
2. 编译时间过长，需要付费。如果你不想付费，那么你可以在本地配置 overleaf 的编译环境，这里不再展开。
3. 本模版出了问题，你可以根据右侧的**红框提示**来进行修改，试试看能不能修复错误。修复不了的话，也可以提 Issue。

### Mac 

> 系统：MacOS 12.3.1 
>
> 编辑器：TexPad
>
> 环境：MacTeX2021
>
> Tex 编译器：xelatex

这里使用 MacTeX + TexPad 在 Mac 上搭建一个比较简单实用的本地 Latex 环境。

#### MacTeX

> [MacTeX 官方网站](https://tug.org/mactex/mactex-download.html)
>
> [mactex| 清华大学开源软件镜像站 ](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/mac/mactex/)

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220102205826119.png" alt="image-20220102205826119" style="zoom: 33%;" />

傻瓜式安装，一步一步即可。

2、测试是否安装成功，输入 `latex -version`

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220109214040741.png" alt="image-20220109214040741" style="zoom:33%;" />

#### TexdPad

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

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220307145324739.png" alt="image-20220307145324739" style="zoom: 33%;" />

3、简单编译一下

这个小齿轮旋转说明正在编译，如果配置得当，应该 3-10 秒就会在右侧刷出编译好的 PDF

- 可以通过 Command + 1/2/3/4 来展开不同的视图

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503112317555.png" alt="image-20220503112317555" style="zoom:50%;" />





### Windows

在 Windows 上可以采用 texlive + texstudio 或者 texlive + vscode 的组合，网上有很多教程，模版中也有简易教程，这里不再赘述。



## 论文撰写技巧

### 在线生成表格和公式

> [在线 LaTeX 公式编辑器](https://www.latexlive.com/)
>
> [在线 LaTeX 表格生成](https://www.tablesgenerator.com/)

#### 在线编写公式

- 甚至可以图片转化为 Latex 公式

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503100221533.png" alt="image-20220503100221533" style="zoom: 33%;" />

#### 在线制作表格

- 可以通过选择 `Booktabs table style` 生成三线表

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503100310117.png" alt="image-20220503100310117" style="zoom: 25%;" />

### 制作好看的图片

> Excel、PPT、AI

#### Excel 生成好看的图片

一个有效的技巧就是使用图案纹理来填充，再选取一些清新的配色，

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503113045887.png" alt="image-20220503113045887" style="zoom:33%;" />

#### 将 PPT 图片转化为 .eps 矢量图

Latex 用矢量图的话，可以让整篇文章缩放都保持清晰

- .png、.jpg、.bmp 这些后缀的图片都不是矢量图。
- TexPad 可以插入 PDF 当作图片使用，但 overleaf 上却不行，所以最好使用 .eps 的文件当作图片

如果使用 Adobe illustrator 作图，可以直接导出 .eps 图片，这里不再赘述。主要介绍如何将PPT做的图转为 .eps。

1、将 PPT 做的图导出为PDF

- 技巧一：尽量不要把图组合起来，有可能会导致文中字体改变
- 技巧二：图片可以采用形如「章节名-图片英文说明」的方式命名，例如 3-ContractFuzzer。

保存类型选择 PDF

- 如果没有导出为 PDF 选项，可能因为你用的是 Office 家庭版

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503114320013.png" alt="image-20220503114320013" style="zoom:33%;" />

如果你大部分情况是在本地编辑的话，可以直接用PDF编辑，等到接近定稿时再把 PDF 转为 .eps 格式。



2、PDF 转为 .eps 格式

在进行导出之前可以先裁剪页面。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503115035685.png" alt="image-20220503115035685" style="zoom: 33%;" />



### 撰写论文技巧

#### 如何在写论文的时候降重

在撰写论文时，可以看**一段或更多**要参考的文件，再用自己的话复述出来。

这样不旦可以锻炼自己表述论文的能力，而且也是减轻后期降重压力的重要手段了。

总而言之，是个简单但特别有用的技巧。



#### 如何追踪论文引用

> 软件下载地址：[Zotero](https://www.zotero.org/)
>
> 简单实用教程：[Zotero 教程](https://space.bilibili.com/452736484/search/video?keyword=zotero)

善用文献管理软件 —— Zotero 



#### 备份保存论文进度

> Git 可视化软件：[Sourcetree](https://www.sourcetreeapp.com/)

或许没有比用 Git 更适合管理 Latex 文件的工具了，下面是我用到的 `.gitignore` 文件

```
.texpadtmp/   % 这是 Texpad 生成的临时文件夹
.gitignore    % 这是忽略文件
.DS_Store     
main.pdf      % 忽略生成的目标文件
```

如果你不太了解 Git，那么我建议你使用坚果云来备份 `chapter/` 文件夹。 但我依然十分推荐你学习一些简单的 SourceTree 教程，来可视化地管理自己的论文。

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220508202047593.png" alt="image-20220508202047593" style="zoom:33%;" />

#### 时间安排

一般情况下毕业论文需要写 2-4 个月，我个人花费了三个半月完成了后续实验和全部论文撰写。初稿花了三个月，降重、通顺论文语句和错字查找花了半个多月的时间。

在完成初稿之后，可以请同学好友来通读一遍你的论文，会比自己反复通读论文的效果要好得多。



#### 论文如何查重

> 学信网会为每一个毕业生提供一次万方的查重机会，不要错过。
>
> 淘宝上会有万方或者知网的查重链接，可以尽量选便宜的。

学院查重采用的是万方，可以直接上传 PDF。但是如果想要自己预先查重，你会发现市面绝大部分的查重工具只接受 word 或者 txt 文件。

从 Latex 转 Word一般有两种方式，一种是将 Latex 生成的 PDF 直接用 WPS 或者 Acrobat 之类的软件转为word，这种方式会使得 word 里有很多乱码，后续修改起来也十分困难。另一种是将各个章节的 Latex 文件复制到 word，然后删除 Latex 里的一些公式和表格，只保留文字。

我采用的是第二种，下面提供一些快速在 word 中删除引用、表格和替换标题的方法。

- 通配符查找引用：(\\cite\{)*(\}) 
- 通配符替换标题：(\\section\{)(*)(\})   ->  \2
- 通配符替换副标题：(\\subsection\{)(*)(\})   ->  \2
- 删除引用：(\\cite\{)*(\})   ->  空

例如，使用通配符替换标题（注意勾选「使用通配符」），那么就可以将文中「\section{研究背景与意义} 」改为「研究背景与意义」

<img src="https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/image-20220503104340410.png" alt="image-20220503104340410" style="zoom:33%;" />

至于 Word 中通配符的替换规则，这里不再赘述，可以自行研究。

## 参考

1、[SEU-master-thesis](https://github.com/TouchFishPioneer/SEU-master-thesis)：原模板仓库

2、[东南大学研究生毕业论文LaTeX模板seuthesix的使用技巧](https://blog.csdn.net/jingOlivia/article/details/103816329)
