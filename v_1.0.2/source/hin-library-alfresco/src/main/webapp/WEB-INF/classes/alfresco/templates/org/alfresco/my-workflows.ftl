<#include "include/alfresco-template.ftl" />
<@templateHeader>
   <script type="text/javascript">//<![CDATA[
      new Alfresco.widget.Resizer("MyWorkflows");
   //]]></script>
</@>

<@templateBody>
   <div id="alf-hd">
   <@region id="header" scope="global" />
   <@region id="task-title" scope="template" />
   </div>
   <div id="bd">
      <div class="yui-t1" id="alfresco-mytasks">
         <div id="yui-main">
            <div class="yui-b" id="alf-content">
               <@region id="toolbar" scope="template" />
               <@region id="list" scope="template" />
            </div>
         </div>
         <div class="yui-b" id="alf-filters">
            <@region id="all-filter" scope="template" />
            <@region id="due-filter" scope="template" />
            <@region id="started-filter" scope="template" />
            <@region id="priority-filter" scope="template" />
            <@region id="workflow-type-filter" scope="template" />
         </div>
      </div>
   </div>
</@>

<@templateFooter>
   <div id="alf-ft">
      <@region id="footer" scope="global" />
   </div>
</@>