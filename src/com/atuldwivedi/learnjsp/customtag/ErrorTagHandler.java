package com.atuldwivedi.learnjsp.customtag;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class ErrorTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;

	private String property;

	public void setProperty(String property) {
		this.property = property;
	}

	@Override
	public int doEndTag() throws JspException {
		try {
			Object message = pageContext.findAttribute(property);
			if (message != null) {
				Writer out = pageContext.getOut();
				out.write(message.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return super.doEndTag();
	}
}
