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
{if $id == 'admidio-overview' || $id== 'admidio-memberrequest'}
{* Additional template file that will be loaded if the file was set through $page->setTemplateFile() *}
    {if $templateFile != ''}
        {include file=$templateFile}
    {/if}           
{elseif $id == 'admidio-announcements'}
{include file='file:announcements.tpl'}
{elseif $id == 'admidio-photos'}
{include file='file:photos.tpl'}
{elseif $id == 'admidio-message'}
{include file='file:sysmessage.tpl'}
{elseif $id == 'admidio-login'}
{include file='file:login.tpl'}
{elseif $id == 'admidio-password-reset'}
{include file='file:password-reset.tpl'}
{else}

@@include('./_head.html', {
    "path": "{$urlTheme}/templates/dashboard",
    "path_common": "{$urlTheme}/templates/common",
    "title": "{$title}"
})


<body id={$id}>
<!-- Modal Window -->
  @@include('./_modal.html')
<!-- Sidenav -->
  @@include('./_sidenav.html')
  <!-- Main content -->
  <div class="main-content" id="panel">
    @@include('./_topnav.html', {})
    <!-- Page content -->
    <div class="container mt-5 mb-5">
      @@include('./_fab.html')
      {* The main content of the page that will be generated through the Admidio scripts *}
      {$content}
    </div>
  </div>
  
{* Additional template file that will be loaded if the file was set through $page->setTemplateFile() *}
    {if $templateFile != ''}
        {include file=$templateFile}
    {/if}           

    @@include('./_scripts.html', {
        "path": "{$urlTheme}/templates/dashboard",
        "path_base": "{$urlTheme}",
        "path_common": "{$urlTheme}/templates/common"
    })
    
</body>
{/if}
</html>