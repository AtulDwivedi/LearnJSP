package com.atuldwivedi.learnjsp.customtag;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class CountWordTag extends BodyTagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String word;

	@Override
	public int doEndTag() throws JspException {
		try {
			String str = getBodyContent().getString();
			Writer out = pageContext.getOut();
			out.write(word +" count is: "+ countWord(str));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_BUFFERED;
	}

	public void setWord(String word) {
		this.word = word;
	}
	
	private int countWord(String str){
		int count = 0;
		
		for (int i = 0; i < str.length(); i++) {
			int index = str.indexOf(word, i);
			if(index >= 0){
				count++;
				i = index + 1;
			}
		}
		System.out.println(count);
		return count;
	}

}
