# WanAndroid_SwiftUI

## 一 开发环境

* macOS：13.4
* Xcode：
* Swift：5.8.1

## 二 开发说明

### 2.1 学习

#### Swift 5.x—倍速一天看完

* 链接地址：https://bilibili.com/video/BV144411C7Gg
* 掌握程度：swift语法

#### SwiftUI部分

* [Nick Sarno-SwiftUI62集入门 基础部分](https://bilibili.com/video/BV1KY411f7in)(倍速一天看完—布局、组件、动画等)
* [Nick Sarno-SwiftUI高级教程](https://bilibili.com/video/BV13341117BR)(倍速一天看完—数据封装、网络请求、数据监听、View封装等)

#### Swift项目

* [Nick Sarno-SwiftUI CXrypto App教程](https://bilibili.com/video/BV1xP4y1t7Aj)半天(数据封装、网络请求、View封装等)

### 2.2 实践-利用wanandroid-api开发一个应用

* [WanAndroid](https://wanandroid.com)

## 三 开发周期

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

* 将接口结果快速解析：https://app.quicktype.io
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

*  1-导航菜单

> 调用项目分类接口，展示导航菜单(每个菜单有一个对应id，作为cid，获取项目列表数据
> 定义一个字典，一个存储项目名称，另一个存储对应id(cid)，在项目分类接口完成后设置

* 2-菜单下的文章

> 点击导航菜单时，从字典中取出对应的cid，获取项目列表数据
> 定义一个字典，一个存储cid，一个存储文章列表\<Article>，在项目列表数据接口完成后设置

未完成

* 所有的数据都放在了第一个菜单下(待解决)

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
