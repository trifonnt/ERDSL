/*
 * generated by Xtext 2.21.0
 */
grammar InternalErDsl;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.unipampa.erdsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.unipampa.erdsl.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.unipampa.erdsl.services.ErDslGrammarAccess;

}
@parser::members {
	private ErDslGrammarAccess grammarAccess;

	public void setGrammarAccess(ErDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleERModel
entryRuleERModel
:
{ before(grammarAccess.getERModelRule()); }
	 ruleERModel
{ after(grammarAccess.getERModelRule()); } 
	 EOF 
;

// Rule ERModel
ruleERModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getERModelAccess().getGroup()); }
		(rule__ERModel__Group__0)
		{ after(grammarAccess.getERModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDomain
entryRuleDomain
:
{ before(grammarAccess.getDomainRule()); }
	 ruleDomain
{ after(grammarAccess.getDomainRule()); } 
	 EOF 
;

// Rule Domain
ruleDomain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDomainAccess().getGroup()); }
		(rule__Domain__Group__0)
		{ after(grammarAccess.getDomainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getGroup()); }
		(rule__Attribute__Group__0)
		{ after(grammarAccess.getAttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEntity
entryRuleEntity
:
{ before(grammarAccess.getEntityRule()); }
	 ruleEntity
{ after(grammarAccess.getEntityRule()); } 
	 EOF 
;

// Rule Entity
ruleEntity 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEntityAccess().getGroup()); }
		(rule__Entity__Group__0)
		{ after(grammarAccess.getEntityAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelation
entryRuleRelation
:
{ before(grammarAccess.getRelationRule()); }
	 ruleRelation
{ after(grammarAccess.getRelationRule()); } 
	 EOF 
;

// Rule Relation
ruleRelation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationAccess().getGroup()); }
		(rule__Relation__Group__0)
		{ after(grammarAccess.getRelationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRelationSide
entryRuleRelationSide
:
{ before(grammarAccess.getRelationSideRule()); }
	 ruleRelationSide
{ after(grammarAccess.getRelationSideRule()); } 
	 EOF 
;

// Rule RelationSide
ruleRelationSide 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRelationSideAccess().getAlternatives()); }
		(rule__RelationSide__Alternatives)
		{ after(grammarAccess.getRelationSideAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule DataType
ruleDataType
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDataTypeAccess().getAlternatives()); }
		(rule__DataType__Alternatives)
		{ after(grammarAccess.getDataTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationSideAccess().getGroup_0()); }
		(rule__RelationSide__Group_0__0)
		{ after(grammarAccess.getRelationSideAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationSideAccess().getTargetAssignment_1()); }
		(rule__RelationSide__TargetAssignment_1)
		{ after(grammarAccess.getRelationSideAccess().getTargetAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__CardinalityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationSideAccess().getCardinality01Keyword_0_0_0_0()); }
		'(0:1)'
		{ after(grammarAccess.getRelationSideAccess().getCardinality01Keyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getRelationSideAccess().getCardinality11Keyword_0_0_0_1()); }
		'(1:1)'
		{ after(grammarAccess.getRelationSideAccess().getCardinality11Keyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getRelationSideAccess().getCardinality0NKeyword_0_0_0_2()); }
		'(0:N)'
		{ after(grammarAccess.getRelationSideAccess().getCardinality0NKeyword_0_0_0_2()); }
	)
	|
	(
		{ before(grammarAccess.getRelationSideAccess().getCardinality1NKeyword_0_0_0_3()); }
		'(1:N)'
		{ after(grammarAccess.getRelationSideAccess().getCardinality1NKeyword_0_0_0_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DataType__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDataTypeAccess().getINTEnumLiteralDeclaration_0()); }
		('int')
		{ after(grammarAccess.getDataTypeAccess().getINTEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getDOUBLEEnumLiteralDeclaration_1()); }
		('double')
		{ after(grammarAccess.getDataTypeAccess().getDOUBLEEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getMONEYEnumLiteralDeclaration_2()); }
		('money')
		{ after(grammarAccess.getDataTypeAccess().getMONEYEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getSTRINGEnumLiteralDeclaration_3()); }
		('string')
		{ after(grammarAccess.getDataTypeAccess().getSTRINGEnumLiteralDeclaration_3()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getBOOLEANEnumLiteralDeclaration_4()); }
		('boolean')
		{ after(grammarAccess.getDataTypeAccess().getBOOLEANEnumLiteralDeclaration_4()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getDATETIMEEnumLiteralDeclaration_5()); }
		('datetime')
		{ after(grammarAccess.getDataTypeAccess().getDATETIMEEnumLiteralDeclaration_5()); }
	)
	|
	(
		{ before(grammarAccess.getDataTypeAccess().getBLOBEnumLiteralDeclaration_6()); }
		('file')
		{ after(grammarAccess.getDataTypeAccess().getBLOBEnumLiteralDeclaration_6()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__0__Impl
	rule__ERModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getDomainAssignment_0()); }
	(rule__ERModel__DomainAssignment_0)
	{ after(grammarAccess.getERModelAccess().getDomainAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__1__Impl
	rule__ERModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getSemicolonKeyword_1()); }
	';'
	{ after(grammarAccess.getERModelAccess().getSemicolonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__2__Impl
	rule__ERModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getGroup_2()); }
	(rule__ERModel__Group_2__0)
	{ after(grammarAccess.getERModelAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__3__Impl
	rule__ERModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getERModelAccess().getEntitiesAssignment_3()); }
		(rule__ERModel__EntitiesAssignment_3)
		{ after(grammarAccess.getERModelAccess().getEntitiesAssignment_3()); }
	)
	(
		{ before(grammarAccess.getERModelAccess().getEntitiesAssignment_3()); }
		(rule__ERModel__EntitiesAssignment_3)*
		{ after(grammarAccess.getERModelAccess().getEntitiesAssignment_3()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__4__Impl
	rule__ERModel__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getGroup_4()); }
	(rule__ERModel__Group_4__0)
	{ after(grammarAccess.getERModelAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__5__Impl
	rule__ERModel__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getGroup_5()); }
	(rule__ERModel__Group_5__0)
	{ after(grammarAccess.getERModelAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__6__Impl
	rule__ERModel__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getRelationsAssignment_6()); }
	(rule__ERModel__RelationsAssignment_6)*
	{ after(grammarAccess.getERModelAccess().getRelationsAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getGroup_7()); }
	(rule__ERModel__Group_7__0)
	{ after(grammarAccess.getERModelAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ERModel__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_2__0__Impl
	rule__ERModel__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getEntitiesKeyword_2_0()); }
	'Entities'
	{ after(grammarAccess.getERModelAccess().getEntitiesKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getLeftCurlyBracketKeyword_2_1()); }
	'{'
	{ after(grammarAccess.getERModelAccess().getLeftCurlyBracketKeyword_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ERModel__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_4__0__Impl
	rule__ERModel__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getRightCurlyBracketKeyword_4_0()); }
	'}'
	{ after(grammarAccess.getERModelAccess().getRightCurlyBracketKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getSemicolonKeyword_4_1()); }
	';'
	{ after(grammarAccess.getERModelAccess().getSemicolonKeyword_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ERModel__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_5__0__Impl
	rule__ERModel__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getRelationshipsKeyword_5_0()); }
	'Relationships'
	{ after(grammarAccess.getERModelAccess().getRelationshipsKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getLeftCurlyBracketKeyword_5_1()); }
	'{'
	{ after(grammarAccess.getERModelAccess().getLeftCurlyBracketKeyword_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ERModel__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_7__0__Impl
	rule__ERModel__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getRightCurlyBracketKeyword_7_0()); }
	'}'
	{ after(grammarAccess.getERModelAccess().getRightCurlyBracketKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ERModel__Group_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getERModelAccess().getSemicolonKeyword_7_1()); }
	';'
	{ after(grammarAccess.getERModelAccess().getSemicolonKeyword_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Domain__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Domain__Group__0__Impl
	rule__Domain__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Domain__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDomainAccess().getDomainKeyword_0()); }
	'Domain'
	{ after(grammarAccess.getDomainAccess().getDomainKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Domain__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Domain__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Domain__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDomainAccess().getNameAssignment_1()); }
	(rule__Domain__NameAssignment_1)
	{ after(grammarAccess.getDomainAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
	(rule__Attribute__NameAssignment_0)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getTypeAssignment_1()); }
	(rule__Attribute__TypeAssignment_1)
	{ after(grammarAccess.getAttributeAccess().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getIsKeyAssignment_2()); }
	(rule__Attribute__IsKeyAssignment_2)?
	{ after(grammarAccess.getAttributeAccess().getIsKeyAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group__0__Impl
	rule__Entity__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getNameAssignment_0()); }
	(rule__Entity__NameAssignment_0)
	{ after(grammarAccess.getEntityAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group__1__Impl
	rule__Entity__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getGroup_1()); }
	(rule__Entity__Group_1__0)*
	{ after(grammarAccess.getEntityAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getGroup_2()); }
	(rule__Entity__Group_2__0)?
	{ after(grammarAccess.getEntityAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_1__0__Impl
	rule__Entity__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getIsKeyword_1_0()); }
	'is'
	{ after(grammarAccess.getEntityAccess().getIsKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getIsAssignment_1_1()); }
	(rule__Entity__IsAssignment_1_1)
	{ after(grammarAccess.getEntityAccess().getIsAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2__0__Impl
	rule__Entity__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_2_0()); }
	'{'
	{ after(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2__1__Impl
	rule__Entity__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getAttributesAssignment_2_1()); }
	(rule__Entity__AttributesAssignment_2_1)
	{ after(grammarAccess.getEntityAccess().getAttributesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2__2__Impl
	rule__Entity__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getGroup_2_2()); }
	(rule__Entity__Group_2_2__0)*
	{ after(grammarAccess.getEntityAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_2_3()); }
	'}'
	{ after(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2_2__0__Impl
	rule__Entity__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getCommaKeyword_2_2_0()); }
	','
	{ after(grammarAccess.getEntityAccess().getCommaKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Entity__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEntityAccess().getAttributesAssignment_2_2_1()); }
	(rule__Entity__AttributesAssignment_2_2_1)
	{ after(grammarAccess.getEntityAccess().getAttributesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group__0__Impl
	rule__Relation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getNameAssignment_0()); }
	(rule__Relation__NameAssignment_0)?
	{ after(grammarAccess.getRelationAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group__1__Impl
	rule__Relation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getGroup_1()); }
	(rule__Relation__Group_1__0)
	{ after(grammarAccess.getRelationAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getGroup_2()); }
	(rule__Relation__Group_2__0)*
	{ after(grammarAccess.getRelationAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relation__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_1__0__Impl
	rule__Relation__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getLeftSquareBracketKeyword_1_0()); }
	'['
	{ after(grammarAccess.getRelationAccess().getLeftSquareBracketKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_1__1__Impl
	rule__Relation__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getLeftEndingAssignment_1_1()); }
	(rule__Relation__LeftEndingAssignment_1_1)
	{ after(grammarAccess.getRelationAccess().getLeftEndingAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_1__2__Impl
	rule__Relation__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getRelatesKeyword_1_2()); }
	'relates'
	{ after(grammarAccess.getRelationAccess().getRelatesKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_1__3__Impl
	rule__Relation__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getRightEndingAssignment_1_3()); }
	(rule__Relation__RightEndingAssignment_1_3)
	{ after(grammarAccess.getRelationAccess().getRightEndingAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getRightSquareBracketKeyword_1_4()); }
	']'
	{ after(grammarAccess.getRelationAccess().getRightSquareBracketKeyword_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relation__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2__0__Impl
	rule__Relation__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getLeftCurlyBracketKeyword_2_0()); }
	'{'
	{ after(grammarAccess.getRelationAccess().getLeftCurlyBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2__1__Impl
	rule__Relation__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getAttributesAssignment_2_1()); }
	(rule__Relation__AttributesAssignment_2_1)
	{ after(grammarAccess.getRelationAccess().getAttributesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2__2__Impl
	rule__Relation__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getGroup_2_2()); }
	(rule__Relation__Group_2_2__0)*
	{ after(grammarAccess.getRelationAccess().getGroup_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getRightCurlyBracketKeyword_2_3()); }
	'}'
	{ after(grammarAccess.getRelationAccess().getRightCurlyBracketKeyword_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Relation__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2_2__0__Impl
	rule__Relation__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getCommaKeyword_2_2_0()); }
	','
	{ after(grammarAccess.getRelationAccess().getCommaKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Relation__Group_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationAccess().getAttributesAssignment_2_2_1()); }
	(rule__Relation__AttributesAssignment_2_2_1)
	{ after(grammarAccess.getRelationAccess().getAttributesAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RelationSide__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationSide__Group_0__0__Impl
	rule__RelationSide__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationSideAccess().getCardinalityAssignment_0_0()); }
	(rule__RelationSide__CardinalityAssignment_0_0)
	{ after(grammarAccess.getRelationSideAccess().getCardinalityAssignment_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RelationSide__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRelationSideAccess().getTargetAssignment_0_1()); }
	(rule__RelationSide__TargetAssignment_0_1)
	{ after(grammarAccess.getRelationSideAccess().getTargetAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ERModel__DomainAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getERModelAccess().getDomainDomainParserRuleCall_0_0()); }
		ruleDomain
		{ after(grammarAccess.getERModelAccess().getDomainDomainParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__EntitiesAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getERModelAccess().getEntitiesEntityParserRuleCall_3_0()); }
		ruleEntity
		{ after(grammarAccess.getERModelAccess().getEntitiesEntityParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ERModel__RelationsAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getERModelAccess().getRelationsRelationParserRuleCall_6_0()); }
		ruleRelation
		{ after(grammarAccess.getERModelAccess().getRelationsRelationParserRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Domain__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDomainAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getDomainAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getTypeDataTypeEnumRuleCall_1_0()); }
		ruleDataType
		{ after(grammarAccess.getAttributeAccess().getTypeDataTypeEnumRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__IsKeyAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getIsKeyIsIdentifierKeyword_2_0()); }
		(
			{ before(grammarAccess.getAttributeAccess().getIsKeyIsIdentifierKeyword_2_0()); }
			'isIdentifier'
			{ after(grammarAccess.getAttributeAccess().getIsKeyIsIdentifierKeyword_2_0()); }
		)
		{ after(grammarAccess.getAttributeAccess().getIsKeyIsIdentifierKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__IsAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntityAccess().getIsEntityCrossReference_1_1_0()); }
		(
			{ before(grammarAccess.getEntityAccess().getIsEntityIDTerminalRuleCall_1_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getEntityAccess().getIsEntityIDTerminalRuleCall_1_1_0_1()); }
		)
		{ after(grammarAccess.getEntityAccess().getIsEntityCrossReference_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__AttributesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_2_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__AttributesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_2_2_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getRelationAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__LeftEndingAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getLeftEndingRelationSideParserRuleCall_1_1_0()); }
		ruleRelationSide
		{ after(grammarAccess.getRelationAccess().getLeftEndingRelationSideParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__RightEndingAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getRightEndingRelationSideParserRuleCall_1_3_0()); }
		ruleRelationSide
		{ after(grammarAccess.getRelationAccess().getRightEndingRelationSideParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__AttributesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getAttributesAttributeParserRuleCall_2_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getRelationAccess().getAttributesAttributeParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Relation__AttributesAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationAccess().getAttributesAttributeParserRuleCall_2_2_1_0()); }
		ruleAttribute
		{ after(grammarAccess.getRelationAccess().getAttributesAttributeParserRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__CardinalityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationSideAccess().getCardinalityAlternatives_0_0_0()); }
		(rule__RelationSide__CardinalityAlternatives_0_0_0)
		{ after(grammarAccess.getRelationSideAccess().getCardinalityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__TargetAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationSideAccess().getTargetEntityCrossReference_0_1_0()); }
		(
			{ before(grammarAccess.getRelationSideAccess().getTargetEntityIDTerminalRuleCall_0_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getRelationSideAccess().getTargetEntityIDTerminalRuleCall_0_1_0_1()); }
		)
		{ after(grammarAccess.getRelationSideAccess().getTargetEntityCrossReference_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RelationSide__TargetAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRelationSideAccess().getTargetRelationCrossReference_1_0()); }
		(
			{ before(grammarAccess.getRelationSideAccess().getTargetRelationIDTerminalRuleCall_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getRelationSideAccess().getTargetRelationIDTerminalRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getRelationSideAccess().getTargetRelationCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
