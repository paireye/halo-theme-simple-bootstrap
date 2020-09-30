<#--主页的公告信息ok-->
<section id="notice" class="mt-4 bg-white d-xl-block d-none">
    <div class="card">
        <div class="card-header"><i class="fa fa-volume-up mr-2"></i>公告信息</div>
        <div class="card-body d-flex flex-column align-items-center">
          <#--公告头部-->
          <div class="mt-4 w-100 d-flex justify-content-around">
            <div class="w-100 text-center">
              <small class="text-muted">标签数量</small>
              <span class="d-block h2 mt-2"> </span>
            </div>
          </div>

          <#--分割线-->
          <div class="w-100 border-top"></div>

          <#--公告内容-->
          <div class="mb-4 mt-n2">
            ${settings.notice_info!'暂无公告...'}
          </div>

        </div>
    </div>
</section>
