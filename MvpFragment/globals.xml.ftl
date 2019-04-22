<?xml version="1.0"?>
<globals>

	    


	<!-- 这里声明全局变量-->
	 <#assign generateKotlin=(((includeKotlinSupport!false) || (language!'Java')?string == 'Kotlin'))>
    <global id="generateKotlin" type="boolean" value="${generateKotlin?string}" />
	<global id="ktOrJavaExt" type="string" value="${generateKotlin?string('kt','java')}" />
	
	<global id="fragment_layout" value="${fragmentName}" />//作为fragment的layout的命名
    <global id="FragmentName" value="${className}" />//作为fragment类名
   
	
   		<global id="PresenterName" value="${className?replace("Fragment","Presenter")}"/>//作为presenter类名
    	<global id="ModelName" value="${className?replace("Fragment","Model")}" />//作为model类名
	
</globals>
