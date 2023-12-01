//
//  Const.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/11/29.
//

import Foundation
import ObjectMapper

/**
  @desc：常量工具类-模拟数据
 */
class Const{
    static let shared = Const()
       
       private init() {
           // 不要忘记把构造器变成私有
       }
    

    //1-轮播图数据
    func getBannerData() -> BannerModel {
        let bannerMapper = Mapper<BannerModel>();
        let bannerString = "{\"data\":[{\"desc\":\"我们支持订阅啦~\",\"id\":30,\"imagePath\":\"https://www.wanandroid.com/blogimgs/42da12d8-de56-4439-b40c-eab66c227a4b.png\",\"isVisible\":1,\"order\":2,\"title\":\"我们支持订阅啦~\",\"type\":0,\"url\":\"https://www.wanandroid.com/blog/show/3352\"},{\"desc\":\"\",\"id\":6,\"imagePath\":\"https://www.wanandroid.com/blogimgs/62c1bd68-b5f3-4a3c-a649-7ca8c7dfabe6.png\",\"isVisible\":1,\"order\":1,\"title\":\"我们新增了一个常用导航Tab~\",\"type\":1,\"url\":\"https://www.wanandroid.com/navi\"},{\"desc\":\"一起来做个App吧\",\"id\":10,\"imagePath\":\"https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png\",\"isVisible\":1,\"order\":1,\"title\":\"一起来做个App吧\",\"type\":1,\"url\":\"https://www.wanandroid.com/blog/show/2\"}],\"errorCode\":0,\"errorMsg\":\"\"}";
        let banner = bannerMapper.map(JSONString: bannerString);
        return banner!
    }
    
    //2-Article-列表
    func getArticleModel()->ArticleModel{
        let articleModelMapper = Mapper<ArticleModel>()
        
        let articleModelString = "{\"data\":{\"curPage\":2,\"datas\":[{\"adminAdd\":false,\"apkLink\":\"\",\"audit\":1,\"author\":\"\",\"canEdit\":false,\"chapterId\":502,\"chapterName\":\"自助\",\"collect\":false,\"courseId\":13,\"desc\":\"\",\"descMd\":\"\",\"envelopePic\":\"\",\"fresh\":false,\"host\":\"\",\"id\":27605,\"isAdminAdd\":false,\"link\":\"https://jimmysun.blog.csdn.net/article/details/134557842\",\"niceDate\":\"2023-11-24 14:36\",\"niceShareDate\":\"2023-11-24 14:35\",\"origin\":\"\",\"prefix\":\"\",\"projectLink\":\"\",\"publishTime\":1700807770000,\"realSuperChapterId\":493,\"selfVisible\":0,\"shareDate\":1700807757000,\"shareUser\":\"孙强 Jimmy\",\"superChapterId\":494,\"superChapterName\":\"广场Tab\",\"tags\":[],\"title\":\"AIDL 如何分片传输大量 Parcelable 数据列表\",\"type\":0,\"userId\":24124,\"visible\":1,\"zan\":0},{\"adminAdd\":false,\"apkLink\":\"\",\"audit\":1,\"author\":\"鸿洋\",\"canEdit\":false,\"chapterId\":408,\"chapterName\":\"鸿洋\",\"collect\":false,\"courseId\":13,\"desc\":\"\",\"descMd\":\"\",\"envelopePic\":\"\",\"fresh\":false,\"host\":\"\",\"id\":27624,\"isAdminAdd\":false,\"link\":\"https://mp.weixin.qq.com/s/mXGTlqv0MX-TRVwlqK43Eg\",\"niceDate\":\"2023-11-24 00:00\",\"niceShareDate\":\"1天前\",\"origin\":\"\",\"prefix\":\"\",\"projectLink\":\"\",\"publishTime\":1700755200000,\"realSuperChapterId\":407,\"selfVisible\":0,\"shareDate\":1701134018000,\"shareUser\":\"\",\"superChapterId\":408,\"superChapterName\":\"公众号\",\"tags\":[{\"name\":\"公众号\",\"url\":\"/wxarticle/list/408/1\"}],\"title\":\"硬核介绍Android画面渲染,从硬件到软件\",\"type\":0,\"userId\":-1,\"visible\":1,\"zan\":0}],\"offset\":20,\"over\":false,\"pageCount\":746,\"size\":20,\"total\":14905},\"errorCode\":0,\"errorMsg\":\"\"}";
        
        let articleModel = articleModelMapper.map(JSONString: articleModelString);
        return articleModel!;
        
    }
    
   // 3-AritcleCell(Article)
    func getArticle()->Article {
        let articleMapper = Mapper<Article>()
        
        let articleString = "{\"adminAdd\":false,\"apkLink\":\"\",\"audit\":1,\"author\":\"鸿洋\",\"canEdit\":false,\"chapterId\":408,\"chapterName\":\"鸿洋\",\"collect\":false,\"courseId\":13,\"desc\":\"\",\"descMd\":\"\",\"envelopePic\":\"\",\"fresh\":false,\"host\":\"\",\"id\":27624,\"isAdminAdd\":false,\"link\":\"https://mp.weixin.qq.com/s/mXGTlqv0MX-TRVwlqK43Eg\",\"niceDate\":\"2023-11-24 00:00\",\"niceShareDate\":\"1天前\",\"origin\":\"\",\"prefix\":\"\",\"projectLink\":\"\",\"publishTime\":1700755200000,\"realSuperChapterId\":407,\"selfVisible\":0,\"shareDate\":1701134018000,\"shareUser\":\"\",\"superChapterId\":408,\"superChapterName\":\"公众号\",\"tags\":[{\"name\":\"公众号\",\"url\":\"/wxarticle/list/408/1\"}],\"title\":\"硬核介绍Android画面渲染,从硬件到软件\",\"type\":0,\"userId\":-1,\"visible\":1,\"zan\":0}";
        
        let article = articleMapper.map(JSONString: articleString);
        return article!;
    }
    
    //4-MessageItem
    func getMessage()->Message{
        let messageMapper = Mapper<Message>()
        let messageString = "{\"category\":2,\"date\":1700931931000,\"fromUser\":\"zhuozui\",\"fromUserId\":141917,\"fullLink\":\"https://wanandroid.com/wenda/show/8857\",\"id\":776994,\"isRead\":1,\"link\":\"/wenda/show/8857\",\"message\":\"在 ConstraintLayout 中使用 Barrier 时， 如果 Barrier 所包含的控件有 visibility 属性为 gone 的情况， Barrier约束会失效，有解决的办法吗？\",\"niceDate\":\"2023-11-26 01:05\",\"tag\":\"新回答\",\"title\":\"回答了：每日一问 问答征集\",\"userId\":26707}";
        
        let message = messageMapper.map(JSONString: messageString);
        return message!;
        
    }
    
    //5-MessageModel
    func getMessageModel()->MessageModel{
        let messageModelMapper = Mapper<MessageModel>()
        let messageModelString = "{\"data\":{\"curPage\":1,\"datas\":[{\"category\":2,\"date\":1700931931000,\"fromUser\":\"zhuozui\",\"fromUserId\":141917,\"fullLink\":\"https://wanandroid.com/wenda/show/8857\",\"id\":776994,\"isRead\":1,\"link\":\"/wenda/show/8857\",\"message\":\"在 ConstraintLayout 中使用 Barrier 时， 如果 Barrier 所包含的控件有 visibility 属性为 gone 的情况， Barrier约束会失效，有解决的办法吗？\",\"niceDate\":\"2023-11-26 01:05\",\"tag\":\"新回答\",\"title\":\"回答了：每日一问 问答征集\",\"userId\":26707},{\"category\":2,\"date\":1700888159000,\"fromUser\":\"yeqiu000\",\"fromUserId\":3778,\"fullLink\":\"https://wanandroid.com/wenda/show/8857\",\"id\":775964,\"isRead\":1,\"link\":\"/wenda/show/8857\",\"message\":\"最近在做SplashScreen的适配，遇到一些问题，有没有大佬指点一下。我看了一些介绍SplashScreen的文章，似乎没有办法使用一张图片作为启动图，类似微信那样的...\",\"niceDate\":\"2023-11-25 12:55\",\"tag\":\"新回答\",\"title\":\"回答了：每日一问 问答征集\",\"userId\":26707}],\"offset\":0,\"over\":false,\"pageCount\":5,\"size\":40,\"total\":166},\"errorCode\":0,\"errorMsg\":\"\"}";
        
        let messageModel = messageModelMapper.map(JSONString: messageModelString);
        return messageModel!;
    }
    
    //6-TreeItem
    func getTreeItem()->TreeItem{
        let treeItemMapper = Mapper<TreeItem>()
        let treeItemString = "{\"data\":[{\"articleList\":[],\"author\":\"\",\"children\":[{\"articleList\":[],\"author\":\"\",\"children\":[],\"courseId\":13,\"cover\":\"\",\"desc\":\"\",\"id\":60,\"lisense\":\"\",\"lisenseLink\":\"\",\"name\":\"Android Studio相关\",\"order\":1000,\"parentChapterId\":150,\"type\":0,\"userControlSetTop\":false,\"visible\":1}],\"courseId\":13,\"cover\":\"\",\"desc\":\"\",\"id\":150,\"lisense\":\"\",\"lisenseLink\":\"\",\"name\":\"开发环境\",\"order\":1,\"parentChapterId\":0,\"type\":0,\"userControlSetTop\":false,\"visible\":1}],\"errorCode\":0,\"errorMsg\":\"\"}";
        
        let treeItemModel = treeItemMapper.map(JSONString: treeItemString);
        return treeItemModel!;
        
        
    }
    
}


