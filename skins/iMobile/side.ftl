<script src="//lib.baomitu.com/jquery/2.2.4/jquery.min.js"></script>
<script>
  var clickme = function() {
	  var abcon = '<div id="hideinfo"><h2>关于我</h2><p>请将此处的文字在 side.ftl 中修改为你自己的介绍信息。</p> 地址：${servePath} <p>End.</p></div>';
		layer.open({
			type:1, title:'ABOUT ME - ${blogTitle?html}', closeBtn:false, area:'320px', shade:0.3, id:'aboutlayer', resize:false,
			btn:['\u6d88\u5931\u5427\u007e'], btnAlign:'c', moveType:1, content: abcon, success:function(layero){
				layero.find('.layui-layer-btn .layui-layer-btn0').css({"border-color":"#333", "background-color":"#666"});
			}
		});
  }, showToc = function() {
	  $('.side .toc').removeClass("toc__panel--hide");
	}, hideToc = function() {
    $('.side .toc').addClass("toc__panel--hide");
	};
</script>
<div class="side">
<div class="overlay"><a href="javascript:showToc();" class="toc-btn iconfont icon-liebiao itip ifixed" id="art_dir" lang="${tocLabel}"></a></div>
<header class="content">
<a href="/">
	<img class="avatar itip ifixed" id="logoicon" src="${adminUser.userAvatar}" title="${blogTitle?html}" alt="${blogTitle?html}"
	lang="使用移动设备访问<br><img src='http://qr.liantu.com/api.php?text=${servePath}' width='123' height='123' border='1'>"/>
</a>
<hgroup><h1><a href="javascript:clickme();" class="itip ifixed" id="logofont" lang="请在 side.ftl 中修改成你要显示的提示信息。">${blogTitle}</a></h1></hgroup>
<#if "" != noticeBoard>
<p class="subtitle">${blogSubtitle}</p>
</#if>
<nav>
	<ul>
		<li>
		  <a href="/archives.html"><span class="iconfont icon-rili itip ifixed" id="archives" lang="${archiveLabel}"></span></a><a href="/tags.html"><span class="iconfont icon-biaoqian itip ifixed" id="tags" lang="${allTagsLabel}"></span></a><a href="/dynamic.html"><span class="iconfont icon-jiaoyin itip ifixed" id="dynamic" lang="${dynamicLabel}"></span></a><a href="/links.html"><span class="iconfont icon-lianjie itip ifixed" id="links" lang="${linkLabel}"></span></a><a href="/search?keyword="><span class="iconfont icon-sousuo18 itip ifixed" id="search" lang="${searchLabel}"></span></a>
		</li>
		<#if 0 != pageNavigations?size>
		<li class="hide">
		  <#list pageNavigations as page>
			<a href="${page.pagePermalink}" target="${page.pageOpenTarget}">${page.pageTitle}</a>&nbsp;
		  </#list>
		</li>
		</#if>
	</ul>
</nav>
</header>
<footer>
<#if noticeBoard??>
<div>${noticeBoard}</div>
</#if>
<#-- 若要使用此行图标请将链接和相关信息修改为自己的
<div>
	<a href="https://github.com/iTanken/">
	  <span class="iconfont icon-github mysites itip ifixed" id="mygit" lang="Github"></span>
  </a> &nbsp;&nbsp;
	<a href="https://weibo.com/itanken/">
	  <span class="iconfont icon-wb mysites itip ifixed" id="myweibo" lang="官方微博"></span>
  </a> &nbsp;&nbsp;
	<a href="http://oss.itanken.net/images/blog/ssswxqr.jpg" rel="nofollow">
	  <span class="iconfont icon-weixin1 mysites itip ifixed" id="mywechat"
		 lang="<b>公众号:StarSevenSky</b><br><img src='http://qr.liantu.com/api.php?text=http://YourURL' width='123' height='123'/>"></span>
	</a> &nbsp;&nbsp;
	<a href="/QQ">
	  <span class="iconfont icon-qq1 mysites itip ifixed" id="myqq" lang="QQ消息" rel="nofollow"></span>
  </a>
</div>
 -->
<#if isLoggedIn>
<a href="${servePath}/admin-index.do#main" class="iconfont icon-shezhi itip ifixed" id="admin_do" lang="${adminLabel}" rel="nofollow"></a> &nbsp;&nbsp;
<a href="/logout?goto=%2F" class="iconfont icon-tuichu itip ifixed" id="logout_do" lang="${logoutLabel}" rel="nofollow"></a>
<#else>
<a href="${servePath}/login" class="iconfont icon-jinru itip ifixed" id="login_do" lang="${loginLabel}" rel="nofollow"></a> &nbsp;&nbsp;
<a href="${servePath}/#register" class="iconfont icon-tianjiayonghu itip ifixed" id="noreg" lang="暂未开放${registerLabel}" rel="nofollow"></a>
</#if>&nbsp;&nbsp;
<#-- 此处的反馈邮箱链接请到 http://openmail.qq.com/ 去申请开通。 -->
<a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=YourKey" class="iconfont icon-xiaoxi itip ifixed" id="send_mail" lang="反馈" rel="nofollow"></a> &nbsp;&nbsp;
<a rel="alternate" href="${servePath}/blog-articles-rss.do" class="iconfont icon-dingyue itip ifixed" id="rss_do" lang="${subscribeLabel}"></a>
</footer>
</div>