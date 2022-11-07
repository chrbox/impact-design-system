<head> 
    @@include('./_head.html', {
        "path": "{$urlTheme}/templates/front",
        "path_common": "{$urlTheme}/templates/common",
        "title": "{$title}"
    })
</head>

<body id={$id}>

@@include('./_navigation.html', {
        "path": "{$urlTheme}/templates/front",
        "logo_classes": "d-none",
        "cta_button_classes": "d-lg-none",
        "path_common": "{$urlTheme}/templates/common",
        "classes": "navbar-dark navbar-theme-primary"
    })

    <main>

        @@include('./_preloader.html', {
            "path": "{$urlTheme}/templates/front"
        })

        <!-- Hero -->
        <section class="section-header pb-9 bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center mb-0">
                    <div class="col-12 col-sm-8 col-md-7 col-lg-6 text-center">
                        <img src="{$urlTheme}/templates/front/assets/img/brand/widder_w.svg" class="mb-4" height="100" alt="Logo Velo Solingen e.V.">
                        <h1 class="display-4 text-muted mb-0 font-weight-normal"><img src="{$urlTheme}/templates/front/assets/img/brand/velosg_w.svg" class="mb-4" height="65" alt="Logo Velo Solingen e.V."></h1>
                    </div>   
                </div>
                <div class="row justify-content-center mb-0">
                    {load_admidio_plugin plugin="news-ticker" file="news-ticker.php"}
                </div>
            </div>
            <div class="pattern bottom"></div>
        </section>
        
        <section id="aboutus" class="section section-lg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="display-2 text-center mb-5 mb-lg-7 mt-4">Wer wir sind:</h2>
                    </div>
                </div>
                <div class="row justify-content-between align-items-center mb-5 mb-lg-7">
                    <div class="col-lg-5 order-lg-2">
                        <h2 class="h1">Der Radsportverein in Solingen</h2>
                        <p class="lead mb-4">Rennrad - Mountainbike - Gravity</p>
                        <p class="mb-5">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                        <div class="d-flex justify-content-between align-items-center mt-lg-4 mb-4">
                            <div class="d-block">
                                <a href="{$urlAdmidio}/adm_program/{if $validLogin}system/logout{else}modules/profile/profile_new{/if}.php" class="btn btn-md btn-secondary animate-up-2">{if $validLogin}<i class="fas fa-sign-out-alt mr-2"></i> ausloggen{else}<i class="fas fa-paper-plane mr-2"></i> Mitgliedschaft beantragen{/if}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <img src="{$urlTheme}/templates/front/assets/img/velosolingen/collage.jpg" alt="Velo Solingen Collage">
                    </div>
                </div>
                <div class="row justify-content-center mb-5 mb-lg-7">
                    <div class="col-6 col-md-3 text-center mb-4">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-secondary mb-4">
                            <i class="fas fa-pager"></i>
                        </div>
                        <h3 class="font-weight-bolder">4</h3>
                        <p class="text-gray">Front Pages</p>
                    </div>
                    <div class="col-6 col-md-3 text-center mb-4">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-secondary mb-4">
                            <i class="fas fa-puzzle-piece"></i>
                        </div>
                        <h3 class="font-weight-bolder">100+</h3>
                        <p class="text-gray">Premium Components</p>
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-secondary mb-4">
                            <i class="fab fa-sass"></i>
                        </div>
                        <h3 class="font-weight-bolder">Workflow</h3>
                        <p class="text-gray">Sass & Gulp</p>
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-secondary mb-4">
                            <i class="fas fa-book"></i>
                        </div>
                        <h3 class="font-weight-bolder">Full</h3>
                        <p class="text-gray">Documentation</p>
                    </div>
                </div>
                <div class="row justify-content-between align-items-center mb-5 mb-lg-7">
                    <div class="col-lg-5">
                        <h2 class="h1">Dashboard</h2>
                        <p class="lead mb-4">Over 100 individual components</p>
                        <p class="mb-5">Start your development with a open source dashboard with over 100 individual components, giving you the freedom of choosing and combining. All components can take variations in colour, that you can easily modify using SASS files.</p>
                        <div class="d-flex justify-content-between align-items-center mt-lg-4 mb-4">
                            <div class="d-block">
                                <a href="{$urlTheme}/templates/dashboard/pages/dashboards/dashboard.html" class="btn btn-primary mr-3 animate-up-2 mb-3">Dashboard demo</a>
                                <a href="https://demos.creative-tim.com/impact-design-system-pro/docs/dashboard/alerts/" class="btn btn-outline-gray animate-up-2 mb-3"><i class="fas fa-th-large mr-2"></i> Components</a>
                            </div>
                        </div>
                        <a href="https://creative-tim.com/" class="d-block mb-5" target="_blank">
                            <div class="author-image mr-2 d-flex">
                                <img src="{$urlTheme}/templates/front/assets/img/creative-tim-logo.png" alt="Creative Tim Logo">
                                <div class="d-block text-black ml-3">
                                    <p class="mb-1 text-gray font-small">Created by</p>
                                    <h6>Creative Tim</h6>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <img src="{$urlTheme}/templates/front/assets/img/presentation-mockup-3.jpg" alt="Dashboard Preview">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-6 col-md-3 text-center mb-4">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-primary mb-4">
                            <i class="fas fa-pager"></i>
                        </div>
                        <h3 class="font-weight-bolder">5+</h3>
                        <p class="text-gray">Dashboard Pages</p>
                    </div>
                    <div class="col-6 col-md-3 text-center mb-4">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-primary mb-4">
                            <i class="fas fa-puzzle-piece"></i>
                        </div>
                        <h3 class="font-weight-bolder">100</h3>
                        <p class="text-gray">Individual Components</p>
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-primary mb-4">
                            <i class="fab fa-sass"></i>
                        </div>
                        <h3 class="font-weight-bolder">Workflow</h3>
                        <p class="text-gray">Sass & Gulp</p>
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <div class="icon icon-shape icon-lg bg-white shadow-lg border-light rounded-circle icon-primary mb-4">
                            <i class="fas fa-book"></i>
                        </div>
                        <h3 class="font-weight-bolder">Full</h3>
                        <p class="text-gray">Documentation</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg bg-soft">
            <div class="container">
                <div class="row">
                    <div id="carouselExampleIndicators" class="carousel slide col-12" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                            <img src="..." class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                            <img src="..." class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                            <img src="..." class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="admidio-overview-plugin col-sm-6 col-lg-4 col-xl-3" id="admidio-plugin-sidebar-announcements">
                    <div class="card admidio-card">
                        <div class="card-body">
                            {load_admidio_plugin plugin="sidebar_announcements" file="sidebar_announcements.php"}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <h2 class="mb-4 mb-lg-5">Dashboard pages</h2>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/dashboards/dashboard.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/dashboard.jpg" alt="Dashboard preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/tables/tables.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/tables.jpg" alt="Dashboard Tables preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard Tables <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/maps/google.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/map.jpg" alt="Dashboard Maps preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard Maps <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/examples/profile.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/profile.jpg" alt="Dashboard Profile preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard Profile <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/examples/register.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/register.jpg" alt="Dashboard Register preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard Register <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-4 mb-5">
                        <a href="{$urlTheme}/templates/dashboard/pages/examples/login.html" class="page-preview scale-up-hover-2">
                            <img class="shadow-lg rounded scale" src="{$urlTheme}/templates/front/assets/img/pages/dashboard/login.jpg" alt="Dashboard Login preview">
                            <div class="text-center show-on-hover">
                                <h6 class="m-0 text-center text-white">Dashboard Login <i class="fas fa-external-link-alt ml-2"></i></h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg bg-primary text-white">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-lg-6">
                    <div class="col-12 text-center">
                        <h2 class="h1 px-lg-5">Awesome Features</h2>
                        <p class="lead px-lg-8">You get all Bootstrap components fully customized. Besides, you receive numerous plugins out of the box and ready to use.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fab fa-bootstrap"></i></span>
                                <h5 class="font-weight-normal text-primary">Bootstrap</h5>
                                <p>Built with the most popular CSS Framework</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fab fa-sass"></i></span>
                                <h5 class="font-weight-normal text-primary">Sass</h5>
                                <p>Variables and mixins to empower development</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fas fa-mobile-alt"></i></span>
                                <h5 class="font-weight-normal text-primary">Responsive</h5>
                                <p>All pages and components are 100% responsive</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fab fa-gulp"></i></span>
                                <h5 class="font-weight-normal text-primary">Gulp</h5>
                                <p>Gulp & BrowserSync for a flawless workflow</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="far fa-images"></i></span>
                                <h5 class="font-weight-normal text-primary">Creative rights</h5>
                                <p>All images, icons and fonts are licensed & free to use</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="far fa-file-alt"></i></span>
                                <h5 class="font-weight-normal text-primary">Documentation</h5>
                                <p>Everything that comes with Impact is well documented</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fas fa-medkit"></i></span>
                                <h5 class="font-weight-normal text-primary">Premium support</h5>
                                <p>We offer 6 months of premium support by default</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="card bg-white shadow-soft text-primary rounded mb-4">
                            <div class="px-3 px-lg-4 py-5 text-center">
                                <span class="icon icon-lg mb-4"><i class="fab fa-html5"></i></span>
                                <h5 class="font-weight-normal text-primary">W3C Validated</h5>
                                <p>HTML pages are all valid by W3C Standards</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg line-bottom-soft">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-lg-6">
                    <div class="col-12 text-center">
                        <h2 class="h1 px-lg-5">What's inside?</h2>
                        <p class="lead px-lg-8">We have carefully crafted the perfect folder structure to ensure that finding the files you're looking for are easily reachable and well organized.</p>
                    </div>
                </div>
                <div class="row d-flex align-items-center">
                    <div class="col-12 col-lg-6 mb-4">
                        <div class="d-none d-lg-block mt-5">
                            <h4>You need only HTML, CSS and Javascript?</h4>
                            <p class="lead mb-4">Don't worry, we got you covered. We have a folder called <code class="text-danger">html&css</code> which includes only the basic HTML5, CSS3 and Javascript technologies.</p>
                            <a href="https://demos.creative-tim.com/impact-design-system-pro/docs/getting-started/file-structure/" class="btn btn-md btn-primary animate-up-2 mr-3"><i class="fas fa-book mr-1"></i> Docs File Structure</a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 order-lg-first d-flex justify-content-center">
                        <ul class="d-block fmw-100 list-style-none folder-structure">
                            <li data-toggle="tooltip" data-placement="left" title="Main folder that you will be working with"><i class="fas fa-folder mr-2"></i>src</li>
                            <li>
                                <ul class="list-style-none pl-4">
                                    <li data-toggle="tooltip" data-placement="left" title="Front pages source files"><i class="fas fa-folder mr-2"></i> front</li>
                                    <li>
                                        <ul class="class list-style-none pl-4">
                                            <li data-toggle="tooltip" data-placement="left" title="CSS, Images, Fonts and Javascript"><i class="fas fa-folder mr-2"></i> assets</li>
                                            <li data-toggle="tooltip" data-placement="left" title="HTML templates"><i class="fas fa-folder mr-2"></i> pages</li>
                                            <li data-toggle="tooltip" data-placement="left" title="Partials are HTML snippets that are included in multiple pages, such as the menu or footer"><i class="fas fa-folder mr-2"></i> partials</li>
                                            <li data-toggle="tooltip" data-placement="left" title="Sass source files"><i class="fas fa-folder mr-2"></i> scss</li>
                                        </ul>
                                    </li>
                                    <li data-toggle="tooltip" data-placement="left" title="Dashboard pages source files"><i class="fas fa-folder mr-2"></i> dashboard</li>
                                    <li>
                                        <ul class="class list-style-none pl-4">
                                            <li data-toggle="tooltip" data-placement="left" title="CSS, Images, Fonts and Javascript"><i class="fas fa-folder mr-2"></i> assets</li>
                                            <li data-toggle="tooltip" data-placement="left" title="HTML templates"><i class="fas fa-folder mr-2"></i> pages</li>
                                            <li data-toggle="tooltip" data-placement="left" title="Partials are HTML snippets that are included in multiple pages, such as the menu or footer"><i class="fas fa-folder mr-2"></i> partials</li>
                                            <li data-toggle="tooltip" data-placement="left" title="Sass source files"><i class="fas fa-folder mr-2"></i> scss</li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li data-toggle="tooltip" data-placement="left" title="Temporary folder that is created when serving files with BrowserSync"><i class="fas fa-folder text-muted mr-2"></i>.temp</li>
                            <li data-toggle="tooltip" data-placement="left" title="Minified version of the project">
                                <i class="fas fa-folder mr-2 text-muted"></i> dist</li>
                            <li data-toggle="tooltip" data-placement="left" title="Project dependencies from package.json"><i class="fas fa-folder text-muted mr-2"></i> node_modules
                            </li>
                            <li data-toggle="tooltip" data-placement="left" title="Development workflow commands. We have them well documented."><i class="fab fa-js-square mr-2 text-warning"></i> gulpfile.js</li>
                            <li data-toggle="tooltip" data-placement="left" title="The page you're looking at right now. Call it inception."><i class="fab fa-html5 mr-2 text-secondary"></i> index.html</li>
                            <li data-toggle="tooltip" data-placement="left" title="Project details and dependencies."><i class="fas fa-file-code mr-2 text-tertiary"></i> package.json</li>
                            <li data-toggle="tooltip" data-placement="left" title="No project can miss a README :)"><i class="fas fa-file-code mr-2 text-tertiary"></i> README.md</li>
                            <li data-toggle="tooltip" data-placement="left" title="This file ensures that generated files and folder are ignored by Git. (eg. node_modules)">
                                <i class="fas fa-file-code mr-2 text-tertiary"></i> .gitignore</li>
                        </ul>
                    </div>
                    <div class="col-12 mt-5 d-lg-none">
                        <h5>You need only HTML, CSS and Javascript?</h5>
                        <p>Don't worry, we got you covered. We have a folder called <code class="text-danger">html&css</code> which includes only the basic HTML5, CSS3 and Javascript technologies.</p>
                    </div>
                </div>
            </div>
        </section>

        @@include('./_footer.html', {
            "path": "{$urlTheme}/templates/front",
            "classes": "bg-primary text-white"
        })

    </main>

    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/front",
        "path_common": "{$urlTheme}/templates/common"
    })
    
</body>