/*
 * generated by Xtext 2.21.0
 */
package org.xtext.unipampa.erdsl.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import org.xtext.unipampa.erdsl.erDsl.Attribute;
import org.xtext.unipampa.erdsl.erDsl.Domain;
import org.xtext.unipampa.erdsl.erDsl.ERModel;
import org.xtext.unipampa.erdsl.erDsl.Entity;
import org.xtext.unipampa.erdsl.erDsl.ErDslPackage;
import org.xtext.unipampa.erdsl.erDsl.Relation;
import org.xtext.unipampa.erdsl.erDsl.RelationSide;
import org.xtext.unipampa.erdsl.services.ErDslGrammarAccess;

@SuppressWarnings("all")
public class ErDslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ErDslGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == ErDslPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case ErDslPackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case ErDslPackage.DOMAIN:
				sequence_Domain(context, (Domain) semanticObject); 
				return; 
			case ErDslPackage.ER_MODEL:
				sequence_ERModel(context, (ERModel) semanticObject); 
				return; 
			case ErDslPackage.ENTITY:
				sequence_Entity(context, (Entity) semanticObject); 
				return; 
			case ErDslPackage.RELATION:
				sequence_Relation(context, (Relation) semanticObject); 
				return; 
			case ErDslPackage.RELATION_SIDE:
				sequence_RelationSide(context, (RelationSide) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (name=ID type=DataType isKey?='isIdentifier'?)
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Domain returns Domain
	 *
	 * Constraint:
	 *     name=ID
	 */
	protected void sequence_Domain(ISerializationContext context, Domain semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ErDslPackage.Literals.DOMAIN__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ErDslPackage.Literals.DOMAIN__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getDomainAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ERModel returns ERModel
	 *
	 * Constraint:
	 *     (domain=Domain entities+=Entity+ relations+=Relation*)
	 */
	protected void sequence_ERModel(ISerializationContext context, ERModel semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Entity returns Entity
	 *
	 * Constraint:
	 *     (name=ID is=[Entity|ID]* (attributes+=Attribute attributes+=Attribute*)?)
	 */
	protected void sequence_Entity(ISerializationContext context, Entity semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     RelationSide returns RelationSide
	 *
	 * Constraint:
	 *     (((cardinality='(0:1)' | cardinality='(1:1)' | cardinality='(0:N)' | cardinality='(1:N)') target=[Entity|ID]) | target=[Relation|ID])
	 */
	protected void sequence_RelationSide(ISerializationContext context, RelationSide semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Relation returns Relation
	 *
	 * Constraint:
	 *     (name=ID? leftEnding=RelationSide rightEnding=RelationSide (attributes+=Attribute attributes+=Attribute*)*)
	 */
	protected void sequence_Relation(ISerializationContext context, Relation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
