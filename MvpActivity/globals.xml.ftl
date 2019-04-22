<?xml version="1.0"?>
<globals>

	 <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    
	<#assign Collection=extractLetters(activityClass)>//从输入的title中获取输入字符
    <#assign collection_name=extractLetters(layoutName)>//获取到的字符转成小写

	<!-- 这里声明全局变量-->
	 <#assign generateKotlin=(((includeKotlinSupport!false) || (language!'Java')?string == 'Kotlin'))>
    <global id="generateKotlin" type="boolean" value="${generateKotlin?string}" />
	<global id="ktOrJavaExt" type="string" value="${generateKotlin?string('kt','java')}" />
	
	<global id="activity_layout" value="${layoutName}" />//作为activity的layout的命名
    <global id="ActivityName" value="${activityClass}" />//作为activity类名
   
	
   		<global id="PresenterName" value="${activityClass?replace("Activity","Presenter")}"/>//作为presenter类名
    	<global id="ModelName" value="${activityClass?replace("Activity","Model")}" />//作为model类名
	<#include "../common/common_globals.xml.ftl" />
</globals>
