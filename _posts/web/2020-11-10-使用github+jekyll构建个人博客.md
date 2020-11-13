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
依次执行上面的代码，即可将框架代码上传到你的repository

完成上述操作后，就可以进行博客的创作了


