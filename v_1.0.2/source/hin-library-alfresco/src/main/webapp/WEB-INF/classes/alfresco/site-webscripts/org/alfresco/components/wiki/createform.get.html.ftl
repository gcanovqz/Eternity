<script type="text/javascript">//<![CDATA[
   new Alfresco.WikiCreateForm("${args.htmlid}").setOptions(
      {
         locale:'${locale?substring(0, 2)}',
         siteId: "${page.url.templateArgs["site"]!""}"
      }).setMessages(${messages});
//]]></script>
<div class="page-form-header">
   <h1>${msg("header.create")}</h1>
   <hr/>
</div>

<div class="page-form-body">
   <#-- The "action" attribute is set dynamically upon form submission -->
   <form id="${args.htmlid}-form" action="" method="post">
      <fieldset>
         <input type="hidden" id="${args.htmlid}-page" name="page" value="wiki-page" />
         <div class="yui-gd">
            <div class="yui-u first">
               <label for="${args.htmlid}-title">${msg("label.title")}:</label>
            </div>
            <div class="yui-u">
               <input type="text" maxlength="256" size="75" id="${args.htmlid}-title" name="pageTitle"/>
            </div>
         </div>
   
         <div class="yui-gd">
            <div class="yui-u first">
               <label for="${args.htmlid}-content">${msg("label.text")}:</label>
            </div>
            <div class="yui-u">
               <textarea class="yuieditor" name="pagecontent" id="${args.htmlid}-content" cols="180" rows="10"></textarea>
            </div>
         </div>
   
         <div class="yui-gd">
            <div class="yui-u first">
               <label for="${htmlid}-tag-input-field">${msg("label.tags")}:</label>
            </div>
            <div class="yui-u">
               <#import "/org/alfresco/modules/taglibrary/taglibrary.lib.ftl" as taglibraryLib/>
               <@taglibraryLib.renderTagLibraryHTML htmlid=args.htmlid />
            </div>
         </div>
   
         <div class="yui-gd">
            <div class="yui-u first">&nbsp;</div>
            <div class="yui-u">
               <input type="submit" id="${args.htmlid}-save-button" value="${msg("button.save")}" />
               <a href="${url.context}/page/site/${page.url.templateArgs.site}/wiki" id="${args.htmlid}-cancel-button">${msg("button.cancel")}</a>
            </div>
         </div>
      </fieldset>
   </form>
</div>
