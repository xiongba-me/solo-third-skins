var bootstyle = {
    setNavCurrent: function(){
        $(".nav li a").each(function () {
            var $this = $(this);
            var path1 = latkeConfig.servePath + location.pathname,
                path2 = latkeConfig.servePath + location.pathname.substr(0,location.pathname.length-1);
            if ($this.attr("href") === path1 || $this.attr("href") === path2) {
                $this.parent().addClass("active");
            } else if (/\/[0-9]+$/.test(location.pathname)) {
                $(".nav li")[0].className = "current";
            }
        });
    },
    setCommentEmotions:function(){
        // comments emotions
        $(".comments").each(function(){
            $(this).html(Util.replaceEmString($(this).html()));
        });
    },
    init:function(){
        this.setNavCurrent();
        this.setCommentEmotions();
    }
};
$(function(){
    bootstyle.init();
})