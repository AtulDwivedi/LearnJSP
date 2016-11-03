package com.atuldwivedi.learnjsp.customtag;

import java.io.IOException;
import java.io.Writer;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class GreetTagHandler extends TagSupport {

	private static final long serialVersionUID = 1L;
	private String uname;

	public void setUname(String uname) {
		this.uname = uname;
	}

	@Override
	public int doEndTag() throws JspException {
		Writer out = pageContext.getOut();
		try {
			if (uname == null || uname.trim().isEmpty()) {
				out.write("You have not specified your name.");
			} else {
				out.write("Hello " + uname);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doEndTag();
	}
}
