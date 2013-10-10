<%@page import="com.liferay.portal.kernel.util.StringPool"%>
<%@page import="com.liferay.portal.kernel.util.GetterUtil"%>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page import="com.liferay.portal.kernel.template.TemplateHandlerRegistryUtil"%>
<%@page import="com.liferay.portal.kernel.template.TemplateHandler"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme"%>

<portlet:defineObjects />
<liferay-theme:defineObjects />
<%
String displayStyle = portletPreferences.getValue("displayStyle", StringPool.BLANK);
long displayStyleGroupId = GetterUtil.getLong(portletPreferences.getValue("displayStyleGroupId", null), themeDisplay.getScopeGroupId());
%>
<liferay-portlet:actionURL portletConfiguration="true" var="configurationURL" /> 
This is the <b>Sample ADT Portlet</b> portlet in Config mode.

<aui:form action="<%= configurationURL %>" method="post" name="fm">
	<aui:fieldset>    
		<% TemplateHandler templateHandler =  TemplateHandlerRegistryUtil.getTemplateHandler("DemoClassName"); %>   
		<liferay-ui:ddm-template-selector classNameId="<%= PortalUtil.getClassNameId(templateHandler.getClassName()) %>" 
			displayStyle="<%= displayStyle %>"
			 displayStyleGroupId="<%= displayStyleGroupId %>"
			  refreshURL="<%= PortalUtil.getCurrentURL(request) %>" showEmptyOption="<%= true %>" /> 

	</aui:fieldset> 
</aui:form>