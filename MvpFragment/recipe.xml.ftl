<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

	<!-- instantiate 表示创建文件到指定文件夹	（把需要创建文件的模板放在root文件夹下对应文件夹,针对自己的项目修改路径）	  -->
    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>
    <instantiate from="root/src/app_package/MvpFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${FragmentName}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${FragmentName}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${PresenterName}.${ktOrJavaExt}" />
	<instantiate from="root/src/app_package/MvpModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ModelName}.${ktOrJavaExt}" />

</recipe>
