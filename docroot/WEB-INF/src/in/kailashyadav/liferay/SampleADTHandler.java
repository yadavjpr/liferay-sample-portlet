package in.kailashyadav.liferay;

import java.util.Locale;

import com.liferay.portal.kernel.portletdisplaytemplate.BasePortletDisplayTemplateHandler;

/**
 * Portlet implementation class SampleADTPortlet
 */
public class SampleADTHandler extends BasePortletDisplayTemplateHandler {

	@Override
	public String getClassName() {
		// TODO Auto-generated method stub
		return "DemoClassName";
	}

	@Override
	public String getName(Locale arg0) {
		// TODO Auto-generated method stub
		return "DemoDisplayName";
	}

	@Override
	public String getResourceName() {
		// TODO Auto-generated method stub
		return "sampleadt_WAR_liferaysampleportlet";
	}
 

}
