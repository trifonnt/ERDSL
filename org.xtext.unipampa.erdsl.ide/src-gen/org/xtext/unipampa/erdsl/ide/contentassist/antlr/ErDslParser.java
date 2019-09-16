/*
 * generated by Xtext 2.18.0.M3
 */
package org.xtext.unipampa.erdsl.ide.contentassist.antlr;

import com.google.common.collect.ImmutableMap;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.Map;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.xtext.unipampa.erdsl.ide.contentassist.antlr.internal.InternalErDslParser;
import org.xtext.unipampa.erdsl.services.ErDslGrammarAccess;

public class ErDslParser extends AbstractContentAssistParser {

	@Singleton
	public static final class NameMappings {
		
		private final Map<AbstractElement, String> mappings;
		
		@Inject
		public NameMappings(ErDslGrammarAccess grammarAccess) {
			ImmutableMap.Builder<AbstractElement, String> builder = ImmutableMap.builder();
			init(builder, grammarAccess);
			this.mappings = builder.build();
		}
		
		public String getRuleName(AbstractElement element) {
			return mappings.get(element);
		}
		
		private static void init(ImmutableMap.Builder<AbstractElement, String> builder, ErDslGrammarAccess grammarAccess) {
			builder.put(grammarAccess.getRelationSideAccess().getAlternatives(), "rule__RelationSide__Alternatives");
			builder.put(grammarAccess.getRelationSideAccess().getCardinalityAlternatives_0_0_0(), "rule__RelationSide__CardinalityAlternatives_0_0_0");
			builder.put(grammarAccess.getERModelAccess().getGroup(), "rule__ERModel__Group__0");
			builder.put(grammarAccess.getERModelAccess().getGroup_2(), "rule__ERModel__Group_2__0");
			builder.put(grammarAccess.getERModelAccess().getGroup_4(), "rule__ERModel__Group_4__0");
			builder.put(grammarAccess.getERModelAccess().getGroup_5(), "rule__ERModel__Group_5__0");
			builder.put(grammarAccess.getERModelAccess().getGroup_7(), "rule__ERModel__Group_7__0");
			builder.put(grammarAccess.getDomainAccess().getGroup(), "rule__Domain__Group__0");
			builder.put(grammarAccess.getAttributeAccess().getGroup(), "rule__Attribute__Group__0");
			builder.put(grammarAccess.getEntityAccess().getGroup(), "rule__Entity__Group__0");
			builder.put(grammarAccess.getEntityAccess().getGroup_1(), "rule__Entity__Group_1__0");
			builder.put(grammarAccess.getEntityAccess().getGroup_2(), "rule__Entity__Group_2__0");
			builder.put(grammarAccess.getEntityAccess().getGroup_2_2(), "rule__Entity__Group_2_2__0");
			builder.put(grammarAccess.getRelationAccess().getGroup(), "rule__Relation__Group__0");
			builder.put(grammarAccess.getRelationAccess().getGroup_1(), "rule__Relation__Group_1__0");
			builder.put(grammarAccess.getRelationAccess().getGroup_2(), "rule__Relation__Group_2__0");
			builder.put(grammarAccess.getRelationAccess().getGroup_2_2(), "rule__Relation__Group_2_2__0");
			builder.put(grammarAccess.getRelationSideAccess().getGroup_0(), "rule__RelationSide__Group_0__0");
			builder.put(grammarAccess.getERModelAccess().getDomainAssignment_0(), "rule__ERModel__DomainAssignment_0");
			builder.put(grammarAccess.getERModelAccess().getEntitiesAssignment_3(), "rule__ERModel__EntitiesAssignment_3");
			builder.put(grammarAccess.getERModelAccess().getRelationsAssignment_6(), "rule__ERModel__RelationsAssignment_6");
			builder.put(grammarAccess.getDomainAccess().getNameAssignment_1(), "rule__Domain__NameAssignment_1");
			builder.put(grammarAccess.getAttributeAccess().getNameAssignment_0(), "rule__Attribute__NameAssignment_0");
			builder.put(grammarAccess.getAttributeAccess().getIsKeyAssignment_1(), "rule__Attribute__IsKeyAssignment_1");
			builder.put(grammarAccess.getEntityAccess().getNameAssignment_0(), "rule__Entity__NameAssignment_0");
			builder.put(grammarAccess.getEntityAccess().getIsAssignment_1_1(), "rule__Entity__IsAssignment_1_1");
			builder.put(grammarAccess.getEntityAccess().getAttributesAssignment_2_1(), "rule__Entity__AttributesAssignment_2_1");
			builder.put(grammarAccess.getEntityAccess().getAttributesAssignment_2_2_1(), "rule__Entity__AttributesAssignment_2_2_1");
			builder.put(grammarAccess.getRelationAccess().getNameAssignment_0(), "rule__Relation__NameAssignment_0");
			builder.put(grammarAccess.getRelationAccess().getLeftEndingAssignment_1_1(), "rule__Relation__LeftEndingAssignment_1_1");
			builder.put(grammarAccess.getRelationAccess().getRightEndingAssignment_1_3(), "rule__Relation__RightEndingAssignment_1_3");
			builder.put(grammarAccess.getRelationAccess().getAttributesAssignment_2_1(), "rule__Relation__AttributesAssignment_2_1");
			builder.put(grammarAccess.getRelationAccess().getAttributesAssignment_2_2_1(), "rule__Relation__AttributesAssignment_2_2_1");
			builder.put(grammarAccess.getRelationSideAccess().getCardinalityAssignment_0_0(), "rule__RelationSide__CardinalityAssignment_0_0");
			builder.put(grammarAccess.getRelationSideAccess().getTargetAssignment_0_1(), "rule__RelationSide__TargetAssignment_0_1");
			builder.put(grammarAccess.getRelationSideAccess().getTargetAssignment_1(), "rule__RelationSide__TargetAssignment_1");
		}
	}
	
	@Inject
	private NameMappings nameMappings;

	@Inject
	private ErDslGrammarAccess grammarAccess;

	@Override
	protected InternalErDslParser createParser() {
		InternalErDslParser result = new InternalErDslParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		return nameMappings.getRuleName(element);
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public ErDslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(ErDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
	public NameMappings getNameMappings() {
		return nameMappings;
	}
	
	public void setNameMappings(NameMappings nameMappings) {
		this.nameMappings = nameMappings;
	}
}
