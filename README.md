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

### v3.0-首页

#### 使用到的类库

* 轮播图：[ImageCarousel](https://github.com/jisungs/ImageCarousel)
* 网页：[WebViewProject-LoadingWebView](https://github.com/gahntpo/WebViewProject)
* 网络图片：[SDWebImageSwiftUI](https://github.com/SDWebImage/SDWebImageSwiftUI)

#### 功能开发

* 自定义视图
* NavigationLink导航
* view抽取





