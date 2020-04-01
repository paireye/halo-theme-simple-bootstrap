<#--页脚ok-->
<footer class="py-3 border-top bg-white">
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

            <#-- 博客来源 -->
            <div class="link-info">
                <span> Powered by <a href="https://halo.run" target="_blank">Halo</a></span>
                <span class="ft-warn">❤️</span>
                <span> Theme by <a href="https://github.com/CodeLunatic/halo-theme-simple-bootstrap" target="_blank">Simple BootStrap</a></span>
            </div>

            <#-- 公共脚本 -->
            <div>
                <span class="text-muted"><@global.footer/></span>
            </div>
        </div>
    </div>
</footer>