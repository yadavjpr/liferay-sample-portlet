<%@page import="java.util.ArrayList"%>
<%@page import="com.liferay.portal.kernel.util.GetterUtil"%>
<%@page import="com.liferay.portal.kernel.util.StringPool"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.liferay.portlet.portletdisplaytemplate.util.PortletDisplayTemplateUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<portlet:defineObjects />
<liferay-theme:defineObjects />

<% 
String displayStyle = portletPreferences.getValue("displayStyle", StringPool.BLANK);
long displayStyleGroupId = GetterUtil.getLong(portletPreferences.getValue("displayStyleGroupId", null), themeDisplay.getScopeGroupId());

long ddmTemplateId = PortletDisplayTemplateUtil.getPortletDisplayTemplateDDMTemplateId( displayStyleGroupId, displayStyle); 
%>  
<c:choose>  
	<c:when test="<%= ddmTemplateId > 0 %>"> 
		<%= PortletDisplayTemplateUtil.renderDDMTemplate(pageContext, ddmTemplateId, new ArrayList()) %>
	</c:when>  
	<c:otherwise>
		This is default view JSP.
	</c:otherwise>
</c:choose>
