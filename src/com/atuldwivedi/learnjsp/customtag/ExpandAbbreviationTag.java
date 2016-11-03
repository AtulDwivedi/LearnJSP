package com.atuldwivedi.learnjsp.customtag;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class ExpandAbbreviationTag extends BodyTagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public int doEndTag() throws JspException {
		String bodyContent = getBodyContent().getString();
		int index = bodyContent.indexOf("JSP");
		String subString = bodyContent.substring(0, index - 1);
		
		try {
			Writer out = pageContext.getOut();
			out.write(subString +" "+ "Java Server Pages");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_BUFFERED;
	}
}
