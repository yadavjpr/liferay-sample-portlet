package in.kailashyadav.liferay;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;

import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;

public class SampleConfigurationAction extends DefaultConfigurationAction {
@Override
public void processAction(PortletConfig portletConfig,
		ActionRequest actionRequest, ActionResponse actionResponse)
		throws Exception {
	// TODO Auto-generated method stub
	super.processAction(portletConfig, actionRequest, actionResponse);
}
}
