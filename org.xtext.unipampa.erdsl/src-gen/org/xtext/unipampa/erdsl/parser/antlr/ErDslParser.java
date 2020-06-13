/*
 * generated by Xtext 2.21.0
 */
package org.xtext.unipampa.erdsl.parser.antlr;

import com.google.inject.Inject;
import org.eclipse.xtext.parser.antlr.AbstractAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.xtext.unipampa.erdsl.parser.antlr.internal.InternalErDslParser;
import org.xtext.unipampa.erdsl.services.ErDslGrammarAccess;

public class ErDslParser extends AbstractAntlrParser {

	@Inject
	private ErDslGrammarAccess grammarAccess;

	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	

	@Override
	protected InternalErDslParser createParser(XtextTokenStream stream) {
		return new InternalErDslParser(stream, getGrammarAccess());
	}

	@Override 
	protected String getDefaultRuleName() {
		return "ERModel";
	}

	public ErDslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(ErDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
