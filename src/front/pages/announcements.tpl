<!--

=========================================================
* Impact Design System - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/impact-design-system
* Copyright 2010 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/impact-design-system/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head> 
    @@include('./_head.html', {
        "path": "{$urlTheme}/templates/front",
        "path_common": "{$urlTheme}/templates/common",
        "title": "{$headline}"
    })
</head>

<body>
    @@include('./_modal.html')
    @@include('./_navigation.html', {
        "path": "{$urlTheme}/templates/front",
        "path_common": "{$urlTheme}/templates/common",
        "classes": "navbar-light navbar-theme-primary",
        "menu": ""
    })
    <main>

        <!-- Hero -->
        <section class="section-header pb-5 bg-soft">
            <div class="container">
            </div>
            <div class="pattern bottom"></div>
        </section>
        <section class="section section-lg pt-3">
            <div class="container">
                <h1 class="display-3">{$headline}</h1>
                <div class="accordion">
                    <div class="card card-sm card-body shadow-sm border-soft">
                        <a href="#admidio-filter" data-target="#admidio-filter" class="accordion-panel-header" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="admidio-filter">
                            <span class="icon-title h6 mb-0 font-weight-bold"><i class="fas fa-filter"></i>Filter:<span class="admidio-filter-status small"></span></span>
                            <span class="icon"><i class="fas fa-plus"></i></span>
                        </a>
                        <div class="collapse pt-3" id="admidio-filter">
                        
                        </div>
                    </div>
                </div>
                {$content}
                @@include('./_fab.html')
                </div>
            </div>
        </section>
        <section class="section section-lg bg-soft">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-md-7">
                    <div class="col-12 col-md-8 text-center">
                        <h2 class="h1 font-weight-bolder mb-4">SEO solutions for every need</h2>
                        <p class="lead">We build best-in-class SEO software for every situation, from our all-in-one SEO platform to tools for local SEO, enterprise SERP analytics, and a powerful API.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4 mb-5">
                        <div class="card shadow-soft border-light">
                            <div class="card-header p-0">
                                <img src="{$urlTheme}/templates/front/assets/img/saas-platform-3.jpg" class="card-img-top rounded-top" alt="image">
                            </div>
                            <div class="card-body">
                                <h3 class="card-title mt-3">Impact Local</h3>
                                <p class="card-text">Moz Local distributes your business information across the web for maximum search engine visibility.</p>
                                <ul class="list-group d-flex justify-content-center mb-4">
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Real-time distribution</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Duplicate closure</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Review management</div> 
                                    </li>
                                </ul>
                                <a href="./about.html" class="btn btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-5">
                        <div class="card shadow-soft border-light">
                            <div class="card-header p-0">
                                <img src="{$urlTheme}/templates/front/assets/img/saas-platform-4.jpg" class="card-img-top rounded-top" alt="image">
                            </div>
                            <div class="card-body">
                                <h3 class="card-title mt-3">Impact Pro</h3>
                                <p class="card-text">Our SEO solution to help you rank higher, drive qualified traffic to your website, and run high-impact SEO campaigns.</p>
                                <ul class="list-group d-flex justify-content-center mb-4">
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Keyword & link research</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Technical site audits</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>SEO insights & reporting</div> 
                                    </li>
                                </ul>
                                <a href="./about.html" class="btn btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-5">
                        <div class="card shadow-soft border-light">
                            <div class="card-header p-0">
                                <img src="{$urlTheme}/templates/front/assets/img/saas-platform-5.jpg" class="card-img-top rounded-top" alt="image">
                            </div>
                            <div class="card-body">
                                <h3 class="card-title mt-3">Impact STAT</h3>
                                <p class="card-text">STAT offers serious SERP tracking for experts. Track thousands to millions of keywords across any location.</p>
                                <ul class="list-group d-flex justify-content-center mb-4">
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Daily tracking</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Local and mobile SERPs</div>    
                                    </li>
                                    <li class="list-group-item d-flex pl-0 pb-1">
                                        <span class="mr-2"><i class="fas fa-check-circle text-success"></i></span>
                                        <div>Competitor intelligence</div> 
                                    </li>
                                </ul>
                                <a href="./about.html" class="btn btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg bg-primary text-center text-white">
            <div class="container">
                <div class="row justify-content-center mb-4 mb-lg-6">
                    <div class="col-12">
                        <h1 class="display-3 mb-4 mb-lg-5">The world's most accurate SEO data.</h1>
                        <div class="row text-white">
                            <div class="col-12 col-lg-4 px-md-0 mb-4 mb-lg-0">
                                <div class="card-body text-center bg-primary border-right border-default py-4">
                                    <!-- Heading -->
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">36.5 trillion</span>
                                    </h2>
                                    <!-- Text -->
                                    <span class="h5 font-weight-normal">links indexed by Link Explorer with our tools</span>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 px-md-0 mb-4 mb-lg-0">
                                <div class="card-body text-center bg-primary border-right border-default py-4">
                                    <!-- Heading -->
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">500 million</span>
                                    </h2>
                                    <!-- Text -->
                                    <span class="h5 font-weight-normal">keyword suggestions in Keyword Explorer</span>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 px-md-0">
                                <div class="card-body text-center bg-primary py-4">
                                    <!-- Heading -->
                                    <h2 class="font-weight-bold">
                                        <span class="h1 mr-2">250,000</span>
                                    </h2>
                                    <!-- Text -->
                                    <span class="h5 font-weight-normal">local business listings optimized with Moz Local</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8">
                        <form action="{$urlTheme}/templates/dashboard/pages/dashboards/dashboard.html" class="form-group mb-4">
                            <div class="d-flex flex-row justify-content-center">
                                <div class="input-group">
                                    <input class="form-control form-control-xl border-light" placeholder="Enter a domain" type="text">
                                    <div class="input-group-prepend">
                                        <button type="submit" class="btn btn-secondary rounded-right">Analyze domain</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <span class="small">Impact also offers access to our best-in-class proprietary metrics including Keyword Difficulty, Spam Score, Page Authority, and Domain Authority — the most highly correlated metric with actual Google rankings available today.</span>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-lg-7">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="h1 font-weight-bolder mb-4">Recommended by leading experts in marketing and SEO</h1>
                        <p class="lead">Our products are loved by users worldwide</p>
                    </div>
                </div>
                <div class="row mb-lg-5">
                    <div class="col-12 col-lg-6">
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="{$urlTheme}/templates/front/assets/img/team/profile-picture-1.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- James Curran <small class="ml-0 ml-md-2">General Manager Spotify</small></span>
                            </div>
                        </div>
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="{$urlTheme}/templates/front/assets/img/team/profile-picture-2.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- Richard Thomas <small class="ml-0 ml-md-2">Front-end developer Oracle</small></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 pt-lg-6">
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="{$urlTheme}/templates/front/assets/img/team/profile-picture-4.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- Jose Evans <small class="ml-0 ml-md-2">Chief Engineer Apple</small></span>
                            </div>
                        </div>
                        <div class="customer-testimonial d-flex mb-5">
                            <img src="{$urlTheme}/templates/front/assets/img/team/profile-picture-6.jpg" class="image image-sm mr-3 rounded-circle shadow" alt="">
                            <div class="content bg-soft shadow-soft border border-light rounded position-relative p-4">
                                <div class="d-flex mb-4">
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                    <span class="text-warning mr-2"><i class="star fas fa-star"></i></span>
                                </div>
                                <p class="mt-2">"We use Impact mainly for its site explorer, and it’s immensely improved how we find link targets. We use it both for getting quick analysis of a site, as well as utilizing its extensive index when we want to dive deep."</p>
                                <span class="h6">- Richard Thomas <small class="ml-0 ml-md-2">Manager IBM</small></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <a href="#" class="btn btn-primary animate-up-2"><span class="mr-2"><i class="fas fa-book-open"></i></span> See all stories</a>
                    </div>
                </div>
            </div>
        </section>

    
        @@include('./_footer.html', {
            "path": "{$urlTheme}/templates/front",
            "path_common": "{$urlTheme}/templates/common",
            "classes": "bg-primary text-white"
        })

    </main>

    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/front",
        "path_common": "{$urlTheme}/templates/common"
    })
    
</body>

</html>