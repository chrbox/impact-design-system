@@include('./_head.html', {
  "title": "{$title}",
  "path": "{$urlTheme}/templates/dashboard",
  "path_common": "{$urlTheme}/templates/common"
})

<body class="bg-white"> 
  <!-- Main content -->
  <div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary py-5 py-lg-6">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-6 col-md-8 px-5">
              <img src="{$urlTheme}/templates/common/assets/img/brand/widder_w.svg" height="50"></img>
              <img src="{$urlTheme}/templates/common/assets/img/brand/velosg_w.svg" height="40"></img>
              <h1 class="text-white">Willkomen!</h1>
              <p class="text-lead text-white">Hier kannst du Dich im Mitgliederbereich anmelden. Solltest Du noch kein Benutzerkonto haben kannst Du Dich hier registrieren.</p>
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
    <div class="container mt--8 pb-5 text-gray">
      <div class="row justify-content-center">
        <div class="col-lg-7 col-md-7">
          <div class="card bg-white border border-soft mb-0">
            <div class="card-body px-lg-5 py-lg-5">
              {$content}
            </div>
          </div>
        </div>‚
      </div>
    </div>
  </div>
    @@include('./_footer.html', {
        "path": "{$urlTheme}/templates/dashboard",
        "path_common": "{$urlTheme}/templates/common"
    }) 
    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/dashboard",
        "path_common": "{$urlTheme}/templates/common"
    })
</body>