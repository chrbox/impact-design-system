@@include('./_head.html', {
  "title": "{$title}",
  "path": "{$urlTheme}/templates/dashboard",
  "path_common": "{$urlTheme}/templates/common"
})

<body class="bg-white"> 
  <!-- Main content -->
  <div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary py-5 py-sm-2 py-lg-6">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-6 col-md-8 px-5">
              <img src="{$urlTheme}/templates/common/assets/img/brand/widder_w.svg" height="50"></img>
              <img src="{$urlTheme}/templates/common/assets/img/brand/velosg_w.svg" height="40"></img>
            </div>
          </div>
        </div>
      </div>
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--9 pb-5 text-gray">
      <div class="row justify-content-center">
        <div class="col-lg-7 col-md-7">
          <div class="card bg-white border border-soft mb-0">
            <div class="card-body px-lg-5 py-lg-5">
              {if $templateFile != ''}
                {include file=$templateFile}
              {/if} 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <footer class="py-5" id="footer-main">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
          <div class="copyright text-center text-xl-left text-muted">
            &copy; 2020 <a href="https://www.creative-tim.com" class="ml-1" target="_blank">Creative Tim</a> & <a href="https://themesberg.com?ref=creative-tim" class="ml-1" target="_blank">Themesberg</a>
          </div>
        </div>
        <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-lg-end">
            <li class="nav-item">
              <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
            </li>
            <li class="nav-item">
              <a href="https://themesberg.com" class="nav-link" target="_blank">Themesberg</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/license" class="nav-link" target="_blank">License</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
    {* Additional template file that will be loaded if the file was set through $page->setTemplateFile() *}
              

    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/dashboard",
        "path_common": "{$urlTheme}/templates/common"
    })

</body>