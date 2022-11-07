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
            
                {$content}
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