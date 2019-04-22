<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<!--merge 表示需要合并到指定文件的内容 （表示AndroidManifest声明新建的Activity） -->
 <!--   <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" /> -->

  <#include "../common/recipe_manifest.xml.ftl" />

	<!-- instantiate 表示创建文件到指定文件夹	（把需要创建文件的模板放在root文件夹下对应文件夹,针对自己的项目修改路径）	  -->
  <#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
   <!--  <instantiate from="root/res/layout/activity_main.xml.ftl" 
					to="${escapeXmlAttribute(resOut)}/layout/${activity_layout}.xml" /> -->
 </#if>
    <instantiate from="root/src/app_package/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ActivityName}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${ActivityName}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${PresenterName}.${ktOrJavaExt}" />
	<instantiate from="root/src/app_package/MvpModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ModelName}.${ktOrJavaExt}" />

</recipe>
