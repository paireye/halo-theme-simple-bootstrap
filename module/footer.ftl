<#--页脚ok-->
<footer class="py-2 border-top bg-white">
    <div class="container d-flex flex-md-row flex-column justify-content-between align-items-center px-lg-2">
        <div class="wrapper">
            <#-- 受版权保护的标记 -->
            <div class="link-info">
                <span> © 2020 <a href="${blog_url!}">${blog_title!}</a></span>
            </div>

            <#-- 分享 -->
            <div class="link-share">
                <#--RSS-->
                <#if (settings.open_rss)?? && settings.open_rss?c == 'true'>
                    <a class="text-dark mr-3" target="_blank" href="${atom_url!}">
                        <i class="fas fa-rss"></i>
                    </a>
                </#if>
                <#--Github-->
                <#if (settings.github_url)?? && settings.github_url?trim != ''>
                    <a class="text-dark mr-3" target="_blank"
                       href="${settings.github_url!}">
                        <i class="fab fa-github"></i>
                    </a>
                </#if>
                <#--QQ账号-->
                <#if (settings.qq_number)?? && settings.qq_number?trim != ''>
                    <a class="text-dark mr-3" target="_blank"
                       href="http://wpa.qq.com/msgrd?v=3&uin=${settings.qq_number!}&site=qq&menu=yes">
                        <i class="fab fa-qq"></i>
                    </a>
                </#if>
                <#--新浪微博-->
                <#if (settings.weibo_url)?? && settings.weibo_url?trim != ''>
                    <a class="text-dark mr-3" target="_blank"
                       href="${settings.weibo_url!}">
                        <i class="fab fa-weibo"></i>
                    </a>
                </#if>
                <#--推特账号-->
                <#if (settings.twitter_account)?? && settings.twitter_account?trim != ''>
                    <a class="text-dark mr-3" target="_blank"
                       href="https://twitter.com/${settings.twitter_account!}">
                        <i class="fab fa-twitter"></i>
                    </a>
                </#if>
                <#--邮箱地址-->
                <#if (settings.email_address)?? && settings.email_address?trim != ''>
                    <a class="text-dark" href="mailto:${settings.email_address!}">
                        <i class="fas fa-envelope"></i>
                    </a>
                </#if>
            </div>

            <#-- 博客运行时间统计 -->
            <div class="link-info">
                <span id="timeDate"></span>
                <span id="times"></span>
            </div>

            <#-- 博客来源 -->
            <div class="link-info">
                <span> Powered by <a href="https://halo.run" target="_blank">Halo</a></span>
                <span class="ft-warn">❤️</span>
                <span> Theme by <a href="https://github.com/CodeLunatic/halo-theme-simple-bootstrap" target="_blank">Simple BootStrap</a></span>
            </div>

            <#-- 公共脚本 -->
            <div class="link-info">
                <@global.footer/>
            </div>
        </div>
    </div>

    <#-- 博客运行时间统计 -->
    <script>
      var now = new Date();

      function createtime() {
        var grt = new Date("03/20/2020 00:00:00"); //此处修改你的建站时间或者网站上线时间
        now.setTime(now.getTime() + 250); days = (now - grt) / 1000 / 60 / 60 / 24; dnum = Math.floor(days); hours = (now - grt) / 1000 / 60 / 60 - (24 * dnum); hnum = Math.floor(hours); if (String(hnum).length == 1) { hnum = "0" + hnum; } minutes = (now - grt) / 1000 / 60 - (24 * 60 * dnum) - (60 * hnum); mnum = Math.floor(minutes); if (String(mnum).length == 1) { mnum = "0" + mnum; } seconds = (now - grt) / 1000 - (24 * 60 * 60 * dnum) - (60 * 60 * hnum) - (60 * mnum); snum = Math.round(seconds); if (String(snum).length == 1) { snum = "0" + snum; } document.getElementById("timeDate").innerHTML = "本站勉强运行 " + dnum + " 天 "; document.getElementById("times").innerHTML = hnum + " 小时 " + mnum + " 分 " + snum + " 秒"; } setInterval("createtime()", 250);
    </script>
</footer>