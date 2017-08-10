<%@ include file="/html/init.jsp" %>

<p>Type the Original and New Urls to be updated in Web Contents.</p>

<liferay-portlet:renderURL varImpl="extractLinksURL">
	<portlet:param name="mvcPath" value='<%= templatePath + "scanner.jsp" %>' />
</liferay-portlet:renderURL>

<aui:form action="<%= extractLinksURL %>" method="get" name="fm">
	<liferay-portlet:renderURLParams varImpl="extractLinksURL" />
	<aui:input name="redirect" type="hidden" value="<%= redirect %>" />
	<aui:fieldset>

		<aui:field-wrapper name="content-types" label="content-types">
			<aui:select name="content-type" inlineLabel="right" label="">
				<aui:option label="web-content" selected="<%= true %>" />
			</aui:select>
		</aui:field-wrapper>

		<aui:input name="original_url" required="true"></aui:input>

		<aui:input name="new_url" required="true"></aui:input>

		<aui:button-row>
			<aui:button onClick='<%= renderResponse.getNamespace() + "extractLinks();" %>' value="process" />
		</aui:button-row>

	</aui:fieldset>
</aui:form>

<aui:script>
	function <portlet:namespace />extractLinks() {
		//alert(<portlet:namespace />original_url.value);
		submitForm(document.<portlet:namespace />fm);
	}
</aui:script>