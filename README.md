# WanAndroid_SwiftUI



## 一 项目预览
|![][swift-waz-1]| ![][swift-waz-2]|![][swift-waz-3] |![][swift-waz-4]|
| -------------- | --------------- | --------------  | -------------- |
|![][swift-waz-5]|![][swift-waz-6] |![][swift-waz-7] |![][swift-waz-8]|
|![][swift-waz-9]|![][swift-waz-10]|![][swift-waz-11]|                |

## 二 开发环境

* macOS：13.4
* Xcode：14.3.1
* Swift：5.8.1

## 三 新手入门(准备工作)

### 3.1 学习任务

#### Swift 5.x

* 链接地址：https://bilibili.com/video/BV144411C7Gg
* 掌握程度：swift语法

#### SwiftUI部分

* [Nick Sarno-SwiftUI62集入门 基础部分](https://bilibili.com/video/BV1KY411f7in)(布局、组件、动画等)
* [Nick Sarno-SwiftUI高级教程](https://bilibili.com/video/BV13341117BR)(数据封装、网络请求、数据监听、View封装等)

#### Swift项目

* [Nick Sarno-SwiftUI CXrypto App教程](https://bilibili.com/video/BV1xP4y1t7Aj)半天(数据封装、网络请求、View封装等)

### 3.2 实践-利用wanandroid-api开发一个应用

* [WanAndroid](https://wanandroid.com)

## 四 开发周期

###  v1.0

项目主体框架搭建：使用TabView+NavigationStack

- 首页
- 导航
- 项目
- 消息
- 我的

### v2.0

网络请求：

* API：网络接口
* Router：BaseURL、method、path、params封装
* APIService：接口实现类(参数、返回model)
* token认证：登录完成后，将token保存到AppStorage中，请求时读取AppStorage中的数据设置到cookie上

Model(数据类):

* 将接口结果快速解析(可以封装返回实体Bean的扩展)：https://app.quicktype.io
* 每个解析结果都有：newJSONDecoder、newJSONEncoder，抽取协议ModelProtocol

ViewModel(MVVM设计模式):

* xxxViewModel继承ObservableObject
* 在xxxViewModel中声明接口返回的Model数据，调用接口返回后接收

使用到的类库：

* [Alamofire](https://github.com/Alamofire/Alamofire)：网络请求
* [AlamofireObjectMapper](https://github.com/tristanhimmelman/AlamofireObjectMapper)：Alamofire的扩展，它使用ObjectMapper自动将JSON响应数据转换为swift对象

### v3.0-首页

使用到的类库

* 轮播图：[ImageCarousel](https://github.com/jisungs/ImageCarousel)
* 网页：[WebViewProject-LoadingWebView](https://github.com/gahntpo/WebViewProject)
* 网络图片：[SDWebImageSwiftUI](https://github.com/SDWebImage/SDWebImageSwiftUI)

功能开发

* 自定义视图
* NavigationLink导航
* view抽取

### v4.0-导航

使用到的组件

* Section：列表分组
* LazyVGrid：网格布局

### v5.0-项目

使用到的组件

* Picker：菜单

功能开发

1-导航菜单

* 调用项目分类接口，展示导航菜单(每个菜单有一个对应id，作为cid，获取项目列表数据
* 定义一个字典，一个存储项目名称，另一个存储对应id(cid)，在项目分类接口完成后设置

2-菜单下的文章

* 点击导航菜单时，从字典中取出对应的cid，获取项目列表数据
* 定义一个字典，一个存储cid，一个存储文章列表\<Article>，在项目列表数据接口完成后设置

### v6.0-登录、注册、我的信息

使用到的状态或配置信息

* environmentObject：整个应用程序中共享数据。本项目中用于共享登录信息

视图导航变化：

* 之前：NavigationLink
* 现在：Modal

功能开发：

* 登录、注册界面(登录状态、用户信息)
* 我的-用户信息显示


### v7.0-消息(已读、未读、详情)

功能开发：

* 消息-已读
* 消息 -未读
* 消息item(点击)-详情页

### v8.0-项目—点击标签切换到对应的视图

* 点击标签切换到对应的视图
* 通过onReceive方法，监听标签的切换，显示相应的视图

### v9.0-实体类封装及界面显示

* 数据实体类(bean)由quicktype.io生成改为AlamofireObjectMapper
* 解决能够接收到数据，页面无法显示问题

### v10.0

* 导入[WrappingHStack](https://github.com/dkk/WrappingHStack)自动换行库
* 重构导航布局页面

## 五 开发任务

### 5.1 已完成

接口：

* 首页-轮播图：homeBanner
* 首页-文章列表 ：homeArticleList
* 导航：tree
* 项目：project
* 项目文章：projectArticle
* 消息-未读：messageUnRead
* 消息-已读：messageRead
* 用户登录：login
* 积分-用户信息:coinUserInfo

### 5.2 未完成

功能开发：

* 上拉刷新、下拉加载
* 没网、错误信息显示、错误点击重新加载

接口：

* 剩余接口

## 六 备注

* 本项目按照：接口(API)+视图(组件、布局)+逻辑处理(ViewModel)+接口返回数据(Model)的模式进行开发
* swiftUI练手项目，可能存在代码不规范等错误，如有错误还望指正


[swift-waz-1]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-home-1.png
[swift-waz-2]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-detail-2.png
[swift-waz-3]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-tree-3.png
[swift-waz-4]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-project-4.png
[swift-waz-5]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-message-unread-5.png
[swift-waz-6]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-message-read-6.png
[swift-waz-7]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-message-info-7.png
[swift-waz-8]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-me-info-8.png
[swift-waz-9]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-me-info-no-9.png
[swift-waz-10]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-login-10.png
[swift-waz-11]:https://jsd.onmicrosoft.cn/gh/PGzxc/CDN/blog-resume/swiftui-waz-register-11.png
