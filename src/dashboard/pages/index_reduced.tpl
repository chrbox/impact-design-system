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
        "path": "{$urlTheme}/templates/dashboard",
        "path_common": "{$urlTheme}",
        "title": "{$title}"
    })
</head>

<body>

{* The main content of the page that will be generated through the Admidio scripts *}
    {$content}

{* Additional template file that will be loaded if the file was set through $page->setTemplateFile() *}
    {if $templateFile != ''}
        {include file=$templateFile}
    {/if}           


    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/dashboard",
        "path_common": "{$urlTheme}"
    })
    
</body>

</html>