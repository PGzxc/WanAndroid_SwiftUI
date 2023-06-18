//
//  API.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation

struct API {
    //MARK: - Singleton
    static let instance = API()
    
    ///BaseURL-接口请求共同部分
    static var baseURL = "https://www.wanandroid.com";

    ///1-首页相关

      /// **********************1.1 首页文章列表******************************
      /// 示例：https://www.wanandroid.com/article/list/0/json
      /// 方法：GET
      /// 参数：页码，拼接在连接中，从0开始。
      ///******************************************************************/

    static var homeArticleList = "/article/list/%d/json";

      /// **********************1.2 首页banner******************************
      /// 示例：https://www.wanandroid.com/banner/json
      /// 方法：GET
      /// 参数：无
      ///******************************************************************/

    static var homeBanner = "/banner/json";

      /// **********************1.3 常用网站******************************
      /// 示例：https://www.wanandroid.com/friend/json
      /// 方法：GET
      /// 参数：无
      ///******************************************************************/

    static var homeFriend = "/friend/json";

      /// **********************1.4 搜索热词******************************
      /// 示例：https://www.wanandroid.com//hotkey/json
      /// 方法：GET
      /// 参数：无
      ///******************************************************************/

    static var hotKey = "/hotkey/json";

      /// **********************1.5 置顶文章******************************
      /// 示例：https://www.wanandroid.com/article/top/json
      /// 方法：GET
      /// 参数：无
      ///******************************************************************/

    static var articleTop = "/article/top/json";

      ///2-体系

      /// **********************2.1 体系数据******************************
      /// 示例：https://www.wanandroid.com/tree/json
      /// 方法：GET
      /// 参数：无
      ///******************************************************************/

    static var treeList = "/tree/json";

      /// **********************2.2 知识体系下的文章******************************
      /// 示例：https://www.wanandroid.com/article/list/0/json?cid=60
      /// 方法：GET
      /// 参数：cid 分类的id，上述二级目录的id
      /// 页码：拼接在链接上，从0开始
      ///******************************************************************/

    static var treeArticleList = "/article/list/page/json";

      /// **********************2.3 按照作者昵称搜索文章******************************
      /// 示例：https://wanandroid.com/article/list/0/json?author=鸿洋
      /// 方法:GET
      /// 页码：拼接在链接上，从0开始。
      /// author：作者昵称，不支持模糊匹配
      ///******************************************************************/

    static var treeAuthorSearch = "/article/list/index/json";

      ///3-导航

      /// **********************3.1 导航数据******************************
      /// 示例：https://www.wanandroid.com/navi/json
      /// 方法:GET
      /// 参数：无
      ///******************************************************************/

    static var navigationList = "/navi/json";

      ///4-项目

      /// **********************4.1 项目分类******************************
      /// 示例：https://www.wanandroid.com/project/tree/json
      /// 方法:GET
      /// 参数：无
      ///******************************************************************/

    static var projectTreeList = "/project/tree/json";

      /// **********************4.2 项目列表数据******************************
      /// 示例：https://www.wanandroid.com/project/list/1/json?cid=294
      /// 方法:GET
      /// 参数：
      ///     - cid 分类的id，上面项目分类接口
      ///     - 页码：拼接在链接中，从1开始
      ///******************************************************************/

    static var projectArticleList = "/project/list/%d/json";

      ///5- 登陆与注册

      /// **********************5.1 登陆*********************************
      /// 示例：https://www.wanandroid.com/user/login
      /// 方法:POST
      /// 参数：
      ///     - username
      ///   -password
      ///******************************************************************/

    static var login = "/user/login";

      /// **********************5.2 注册**********************************
      /// 示例：https://www.wanandroid.com/user/register
      /// 方法:POST
      /// 参数：
      ///     - username
      ///   - password
      ///   - repassword
      ///******************************************************************/

    static var register = "/user/register";

      /// **********************5.3 退出******************************
      /// 示例：https://www.wanandroid.com/user/logout/json
      /// 方法: GET
      /// 参数：
      ///     - username
      ///   - password
      ///   - repassword
      ///******************************************************************/
    static var logout = "/user/logout/json";

      ///6-收藏(需要登陆)

      /// **********************6.1 收藏文章列表******************************
      /// 示例：https://www.wanandroid.com/lg/collect/list/0/json
      /// 方法: GET
      /// 参数：页码：拼接在链接中，从0开始
      ///******************************************************************/
    static var collectList = "/lg/collect/list/%d/json";

      /// **********************6.2 收藏站内文章******************************
      /// 示例：https://www.wanandroid.com/lg/collect/1165/json
      /// 方法: Post
      /// 参数： 文章id，拼接在链接中。
      ///******************************************************************/
    static var collectInSideArticle = "/lg/collect/list/index/json";

      /// **********************6.3 收藏站外文章******************************
      /// 示例：https://www.wanandroid.com/lg/collect/add/json
      /// 方法: Post
      /// 参数：
      ///    - title
      ///    - author
      ///    -link
      ///******************************************************************/
    static var collectOutSideArticle = "/lg/collect/list/index/json";

      /// **********************6.3 编辑收藏的文章，支持站内，站外******************************
      /// 示例：https://wanandroid.com/lg/collect/user_article/update/ 文章 id/json
      /// 方法: Post
      /// 参数：
      ///    - title
      ///    - author
      ///    -link
      ///******************************************************************/
    static var collectUpdateArticle = "/lg/collect/user_article/update/id/json";

      ///6.4 取消收藏

      /// **********************6.4.1 取消收藏-文章列表******************************
      /// 示例：https://www.wanandroid.com/lg/uncollect_originId/2333/json
      /// 方法: Post
      /// 参数：id:拼接在链接上
      ///******************************************************************/
    static var unCollectArticleList = "/lg/uncollect_originId/id/json";

      /// **********************6.4.2 取消收藏-我的收藏******************************
      /// 示例：https://www.wanandroid.com/lg/uncollect/2805/json
      /// 方法: Post
      /// 参数：
      ///    - id:拼接在链接上
      ///      - originId:列表页下发，无则为-1
      ///******************************************************************/
    static var unCollectArticle = "/lg/uncollect/index/json";

      /// **********************6.5 收藏网站列表******************************
      /// 示例：https://www.wanandroid.com/lg/collect/usertools/json
      /// 方法: GET
      /// 参数：无
      ///******************************************************************/
    static var collectSiteList = "/lg/collect/usertools/json";

      /// **********************6.6 收藏网址******************************
      /// 示例：https://www.wanandroid.com/lg/collect/addtool/json
      /// 方法: POST
      /// 参数：name,link
      ///******************************************************************/
    static var collectSite = "/lg/collect/usertools/json";

      /// **********************6.7 编辑收藏网站******************************
      /// 示例：https://www.wanandroid.com/lg/collect/updatetool/json
      /// 方法: POST
      /// 参数：id,name,link
      ///******************************************************************/
    static var updateCollectSite = "/lg/collect/updatetool/json";

      /// **********************6.8 删除收藏网站******************************
      /// 示例：https://www.wanandroid.com/lg/collect/deletetool/json
      /// 方法: POST
      /// 参数：id
      ///******************************************************************/
    static var deleteCollectSite = "/lg/collect/deletetool/json";

      ///7-搜索
      /// **********************7.1 搜索******************************
      /// 示例：https://www.wanandroid.com/article/query/0/json
      /// 方法: POST
      /// 参数：
      ///    - 页码：拼接在链接上，从0开始。
      ///       - k ： 搜索关键词
      ///******************************************************************/
    static var query = "/article/query/index/json";

      ///8-TODO工具
      /// **********************8.1 新增一个TODO ******************************
      /// 示例：https://www.wanandroid.com/lg/todo/add/json
      /// 方法: POST
      /// 参数：
      ///   - title: 新增标题（必须）
      ///     - content: 新增详情（必须）
      ///     - date: 2018-08-01 预定完成时间（不传默认当天，建议传）
      ///     - type: 大于0的整数（可选）；
      ///     - priority 大于0的整数（可选）；

      ///******************************************************************/
    static var todoAdd = "/lg/todo/add/json";

      /// **********************8.2 更新一个Todo ******************************
      /// 示例：https://www.wanandroid.com/lg/todo/update/83/json
      /// 方法: POST
      /// 参数：
      ///   - id: 拼接在链接上，为唯一标识，列表数据返回时，每个todo 都会有个id标识 （必须）
      ///   - title: 新增标题（必须）
      ///     - content: 新增详情（必须）
      ///     - date: 2018-08-01（必须）
      ///   - status: 0 // 0为未完成，1为完成
      ///     - type: 大于0的整数（可选）；
      ///     - priority 大于0的整数（可选）；
      ///******************************************************************/
    static var todoUpdate = "/lg/todo/update/id/json";

      /// **********************8.3 删除一个Todo ******************************
      /// 示例：https://www.wanandroid.com/lg/todo/delete/83/json
      /// 方法: POST
      /// 参数：id: 拼接在链接上，为唯一标识
      ///******************************************************************/
    static var todoDelete = "/lg/todo/delete/id/json";

      /// **********************8.4 仅更新完成状态Todo ******************************
      /// 示例：https://www.wanandroid.com/lg/todo/done/80/json
      /// 方法: POST
      /// 参数：
      ///    - id: 拼接在链接上，为唯一标识
      ///      - status: 0或1，传1代表未完成到已完成，反之则反之
      ///******************************************************************/
    static var todoUpdateState = "/lg/todo/done/index/json";

      /// **********************8.5 TODO 列表 ******************************
      /// 示例：https://www.wanandroid.com/lg/todo/v2/list/页码/json
      /// 方法: GET
      /// 参数：
      ///    - 页码从1开始，拼接在url 上
      ///      - status 状态， 1-完成；0未完成; 默认全部展示；
      ///      - type 创建时传入的类型, 默认全部展示
      ///      - priority 创建时传入的优先级；默认全部展示
      ///      - orderby 1:完成日期顺序；2.完成日期逆序；3.创建日期顺序；4.创建日期逆序(默认)；
      ///******************************************************************/
    static var todoList = "/lg/todo/v2/list/index/json";

      ///9-积分

      /// **********************9.1 积分排行 ******************************
      /// 示例：https://www.wanandroid.com/coin/rank/1/json
      /// 方法: GET
      /// 参数：；
      ///******************************************************************/
    static var coinRank = "/coin/rank/%s/json";

      /// **********************9.2 个人积分(需登陆) ******************************
      /// 示例：https://www.wanandroid.com/lg/coin/userinfo/json
      /// 方法: GET
      /// 参数：；
      ///******************************************************************/
    static var coinUserInfo = "/lg/coin/userinfo/json";

      /// ******************9.3 获取个人积分获取列表，需要登录后访问 ****************
      /// 示例：https://www.wanandroid.com//lg/coin/list/1/json
      /// 方法: GET
      /// 参数：；使用sprintf进行格式化赋值
      ///******************************************************************/
    static var coinList = "/lg/coin/list/%s/json";

      ///10-广场

      /// ******************10.1 广场列表数据 ****************
      /// 示例：https://wanandroid.com/user_article/list/页码/json
      /// 方法: GET
      /// 参数：页码拼接在url上从0开始；
      ///******************************************************************/
    static var squareList = "/user_article/list/index/json";

      /// ******************10.2 分享人对应列表数据 ****************
      /// 示例：https://www.wanandroid.com/user/2/share_articles/页码/json
      /// 方法: GET
      /// 参数：
      ///    - 用户id: 拼接在url上
      ///      - 页码拼接在url上从1开始；
      ///******************************************************************/
    static var squareShareList = "/user/2/share_articles/index/json";

      /// ******************10.3 自己的分享的文章列表 ****************
      /// 示例：https://wanandroid.com/user/lg/private_articles/1/json
      /// 方法: GET
      /// 参数：页码，从1开始
      ///******************************************************************/
      static var squarePrivateSharedList =
    "/user/lg/private_articles/index/json";

      /// ******************10.4 删除自己分享的文章 ****************
      /// 示例：https://wanandroid.com/lg/user_article/delete/9475/json
      /// 方法: POST
      /// 参数：文章id，拼接在链接上
      ///******************************************************************/
      static var squarePrivateShareDelete =
    "/lg/user_article/delete/id/json";

      /// ******************10.4 删除自己分享的文章 ****************
      /// 示例：https://www.wanandroid.com/lg/user_article/add/json
      /// 方法: POST
      /// 参数：
      ///    - title:
      ///      - link
      ///******************************************************************/
      static var squareShareArticle =
    "/lg/user_article/add/json";


      ///11-问答

      /// ******************11.1 问答 ****************
      /// 示例：https://wanandroid.com/wenda/list/1/json
      /// 方法: GET
      /// 参数：pageId,拼接在链接上，例如上面的1
      ///******************************************************************/
    static var wenDaList = "/wenda/list/1/json";

      ///12-个人信息接口

      /// ******************12.1 个人信息接口 ****************
      /// 示例：https://wanandroid.com//user/lg/userinfo/json
      /// 方法: GET
      /// 参数：pageId,拼接在链接上，例如上面的1
      ///******************************************************************/
    static var userInfo = "/user/lg/userinfo/json";

      ///13-问答评论列表

      /// ******************13.1 问答评论列表 ****************
      /// 示例：https://wanandroid.com/wenda/comments/问答id/json
      /// 方法: GET
      /// 参数：问答 id，可以通过问答列表获取
      ///******************************************************************/
    static var wenDaCommentsList = "/wenda/comments/id/json";

      ///14-站内消息列表

      /// ******************14.1 未读消息数量 ****************
      /// 示例：https://wanandroid.com/message/lg/count_unread/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var messageUnread = "/message/lg/count_unread/json";

      /// ******************14.2 已读消息列表 ****************
      /// 示例：https://wanandroid.com/message/lg/readed_list/页码/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var messageReadList = "/message/lg/readed_list/%s/json";

      /// ******************14.3 未读消息列表 ****************
      /// 示例：https://wanandroid.com/message/lg/unread_list/页码/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var messageUnReadList = "/message/lg/unread_list/%s/json";

      ///15- 公众号

      /// ******************15.1 公众号Tab ****************
      /// 示例：https://wanandroid.com/wxarticle/chapters/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var wxArticleList = "/wxarticle/chapters/json";

      /// ******************15.2 查看某个公众号历史数据 ****************
      /// 示例：https://wanandroid.com/wxarticle/list/408/1/json
      /// 方法: GET
      /// 参数：
      ///    - 公众号 ID：拼接在 url 中，eg:405
      ///      - 公众号页码：拼接在url 中，eg:1
      ///******************************************************************/
    static var wxArticleHistoryList = "/wxarticle/list/%s/%s/json";

      /// ******************15.3 在某个公众号中搜索历史文章 ****************
      /// 示例：https://wanandroid.com/wxarticle/list/405/1/json?k=Java
      /// 方法: GET
      /// 参数：
      ///    - k : 字符串，eg:Java
      ///      - 公众号 ID：拼接在 url 中，eg:405
      ///    - 公众号页码：拼接在url 中，eg:1
      ///******************************************************************/
    static var wxarticleListSearch = "/wxarticle/list/id/index/json";

      ///16-最新项目

      /// ******************16.1 最新项目tab ****************
      /// 示例：https://wanandroid.com/article/listproject/0/json
      /// 方法: GET
      /// 参数：页码，拼接在连接中，从0开始
      ///******************************************************************/
    static var newProjectList = "/article/listproject/index/json";

      ///17-工具列表接口

      /// ******************17.1 工具列表接口 ****************
      /// 示例：https://wanandroid.com/tools/list/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var toolList = "/tools/list/json";

      ///18-教程
      /// ******************18.1 教程列表 ****************
      /// 示例：https://www.wanandroid.com/chapter/547/sublist/json
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var chapterList = "/chapter/547/sublist/json";

      /// ******************18.2 单个教程下所有文章列表 ****************
      /// 示例：https://wanandroid.com/article/list/0/json?cid=549&order_type=1
      /// 方法: GET
      /// 参数：
      ///******************************************************************/
    static var chapterSubList = "/article/list/index/json";


}


