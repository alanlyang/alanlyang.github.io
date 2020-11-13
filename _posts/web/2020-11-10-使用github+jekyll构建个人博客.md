---
layout: post
title: 简单几步搭建个人博客-github+jekyll+goDaddy
subtitle: 个人blog建站记录
author: alanlyang
date: 2020-11-10 11:13
hidden: false
tags: 
    - github
    - blog
    - jekyll
---
> 转载请注明原始网站~ 谢谢

### 前言 
当我们在浏览网上的知识的时候，很多时候我们也想自己能够成为知识的传播者，也希望别人能够看到我们对这个世界的输出和影响。我们总会在某个时候想，我在这个世界活了这么久，总该留下点痕迹才好。这也是自己开始搭建博客的初衷。如果你<br>
1.  想要一个分享自己生活与知识的平台
2.  拥有很强的分享欲望但是又没有很多的专业知识
3.  希望对这个世界产生一些影响哪怕是很细微的影响

那么这篇博客搭建的文章刚刚好，让它作为你影响世界的开端。

### 准备工作
1. github 账号
2. 域名(也可以没有)
3. markdown语法

github 是当前最著名的开源网站(当然也是大型程序员相亲网站)。它不仅提供了代码仓库存储、代码分享功能，也提供了知识分享的功能。当然默认的域名是 username.github.io 。 如果你不想使用这个默认的域名的话，可以自己注册一个自己的专属域名(很便宜)，通常首年只需要10块钱以内。国内建议选用DnsPod, 也可以使用goDaddy，这里我使用的是goDaddy。

好的，现在我们开始搭建个人博客。

### github repo 仓库建立
#### 注册账号
**如果已有账号可跳过该步骤**
1. 在浏览器中打开 https://github.com
2. 填写相关信息:<br>
    点击注册<br>
   <img src="/img/in-post/2020-11-13-github建站/1.png" width="400px" height="400px"><br>
   填写注册信息<br>
   <img src="/img/in-post/2020-11-13-github建站/2.png" width="400px" height="400px"><br>
   > 这里注意填写的username将之后的默认网址产生影响，因此选一个和自己相关并且具有标识度的名字比较好

#### 新建repository
1. 点击头像左侧的加号,选择new repository <br>
   <img src="/img/in-post/2020-11-13-github建站/3.png" width="400px" height="400px"><br>
   > 这里repository可以简单理解为一个仓库用于存放你的文章

2. 填写仓库名，这里需要写成 **username.github.io**的形式，将username换成你的用户名。github 默认会将该地址当做你的博客地址，填写相关信息完成后，点击create repository。然后完成分支创建.
   <img src="/img/in-post/2020-11-13-github建站/4.png" width="400px" height="400px"><br> 
   > 其他的选项选 public 和 Add a Readme File.  
   public 表示你的仓库代码可以公开
   readme file 是增加一个对于仓库的说明文件，建议加上

到这里就完成了仓库的建立，接下来就是对于博客的美化以及编写博客了

#### 自带主题
除了分享知识外，我们也希望自己的博客能够更加美观与赏心悦目。github中的博客是基于jekyll来编译与发布的，内部内置了很多的主题，我们可以在setting界面进行选择<br>
<img src="/img/in-post/2020-11-13-github建站/5.png" width="400px" height="400px"><br> 
点击choose a theme 就可以选择内置的主题。但是通常来讲内置的主题都会比较丑，好看的主题都需要自己进行定制化，而这有较高的前端代码能力。

#### 第三方主题
这里我们更愿意选择从别人已经写好的模板上进行改造。从而输出更适合我们的主题模板

这里放两个我比较喜欢的：
1. https://github.com/kitian616/jekyll-TeXt-theme
2. https://github.com/Huxpro/huxpro.github.io

选定自己喜欢的主题，这里以hux的为例子, 新建一个文件夹，然后
```shell
    git clone https://github.com/Huxpro/huxpro.github.io
```
删除文件夹下的.git文件夾， 并链接到刚才新建的repository上
```shell
    rm -rf ./git
    git init 
    git remote add origin 你的repository地址
    git add .
    git commit -m "first commit"
    git push -u origin main
```
依次执行上面的代码，即可将框架代码上传到你的repository<br>
<img src="/img/in-post/2020-11-13-github建站/6.png" width="200px" height="200px"><br> 
此时方位 https://username.github.io 就可以看到你的博客了(首次加载可能会比较慢，耐心等一下)
完成上述操作后，就可以进行博客的创作了

### 博客创作
#### 框架解析
此时你已经可以看到自己的网站雏形。但是看到一堆的代码是不是很懵逼，不知道从何开始。别着急，慢慢来。<br>
> 如果你不想看这部分关于代码的解释，想直接去写文章到你的博客，那么你可以跳过这部分,但是还是建议你看一下，这会对于你以后对代码的改造有很大用处

github博客其实是基于Jekyll+liquid来进行的，简单来讲，就是你在框架指定位置写好markdown文章后，其他人在访问你的网站时，github会调用jekyll来对文章进行解析，并生成对应的html文件，用于网站的展示。<br>
> Jekyll文档: https://www.jekyll.com.cn/docs/ <br>
> liquid文档: https://liquid.bootcss.com/ 

Jekyll的目录结构如下:<br>
<img src="/img/in-post/2020-11-13-github建站/7.png" width="200px" height="200px"><br> 

1. _includes: 公共的组件，如导航栏等，可以在多个页面中进行引用。（你的每一篇博文都是一个页面，这些页面的公共部分可以抽出来，省去重复工作量）
2. _layout: 布局代码，你的博客可能需要多种布局方式，布局可以在这里定义，然后当你在写博客的时候可以指定使用哪一种页面布局
3. _post: 这里是我们写文章的地方，注意每个文章都必须命名成2020-11-13-文件名.后缀名的形式，这是Jekyll定义好的解析格式，必须要遵守
4. _site：是经过Jekyll解析好页面，这个文件夹建议加到.gitignore中
5. 其他文件夹是自建的文件夹，默认情况下 Jekyll解析时会直接复制到_site文件夹中。
6. index.html：是整个网站的入口
7. CNAME： 是用来进行绑定域名的
8. Gemfile: 是gem的配置文件， Jekyll是基于gem来进行的
9. _config.yml: 这里是所有的配置信息，你可以在这里配置你网站的各种信息，并且可以在html中通个site.变量名来调用这些变量

具体的代码注释，在 https://github.com/alanlyang/alanlyang.github.io 我进行了简单的注释，有需要的欢迎查看并star

了解了每个文件是用来干什么之后，就可以来进行自己的创作了

#### 文章创作
文章的创作主要在_post文件夹中进行。主要分为两部分
1. 文章头
2. 文章内容

文章头： 需要用 --- 包裹起来的 yaml 文件格式，用来说明该文章的标题、tag、布局、背景图片等信息，必须使用 --- 包裹。<br>
形式为  变量名: 值
如下图；<br>
<img src="/img/in-post/2020-11-13-github建站/8.png" width="400px" height="400px"><br>

> 这里还支持很多的变量，也可以自己通过liquid形式来进行定义.   
> layout表示布局，title为文章名， subtitLe为子标题， tag为文章的标签，支持按标签查找

文章体：
Jekyll完美支持markdown语法， 建议使用markdown语法进行编写即可。你可以直接在Vscode中进行编写，也可以在任何一个markdown编辑器中进行编写完成后，到处为md文件。
> 外部工具我用的石墨文档编写的，另外也比较喜欢Typora  
> 如果你使用vscode进行编写的化，可以使用 ``` ctrl + shift + P ``` 输入 markdown ，选择preview来进行实时预览.  

#### 本地调试
在本机写完文档以后，每次都要提交到仓库有点麻烦，我们可以在本地调试好以后再提交到github仓库。
首先要进行环境配置, 这里以macos为例：
```shell
   brew install gem
   gem install bundler 
   gem install Jekyll
```
然后执行
```shell
   jekyll server --safe 
   # 或者 bundler exec jekyll server 
```
打开 http://127.0.0.1:4000/    
就可以实时预览自己的博客了

#### 提交代码
预览没问题后，就可以提交自己的代码了。这里附上一个简单的提交脚本
```shell
#!/bin/bash
today=`date +%Y-%m-%d`

rm ./sitemap.xml
cp ./_site/sitemap.xml ./

git add  .
git commit -m "${today}"
git push origin main

```
### 绑定域名
如果你自己申请了域名，那么可以将博客绑定到自己指定的域名上去。
国内可以在DNSpod上进行域名申请，很便宜：
https://console.dnspod.cn/dns/list   

按照如图配置你的DNS解析服务：<br>
<img src="/img/in-post/2020-11-13-github建站/9.png" width="400px" height="400px"><br>

然后在你github 中custom domain配置你的域名<br>
<img src="/img/in-post/2020-11-13-github建站/5.png" width="400px" height="400px"><br>
 
### SEO优化
最后如果你想自己的博客被搜索引擎检索的话，记得在百度站长和google上进行网站收录


**如果有用的话麻烦点个star吧~**