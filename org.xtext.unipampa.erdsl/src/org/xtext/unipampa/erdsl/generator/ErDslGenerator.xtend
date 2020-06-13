/*
 * generated by Xtext 2.17.0
 */
package org.xtext.unipampa.erdsl.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import org.xtext.unipampa.erdsl.erDsl.ERModel

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class ErDslGenerator extends AbstractGenerator {


	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		val modeloER = resource.contents.get(0) as ERModel fsa.generateFile('LogicalSchema_'+modeloER.domain.name+'.html', 
			'''
	<!DOCTYPE html>
	<html>
	<head>
		<title>ERtext Logical schema</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<style>
		    body    { background: #fff; border: 1px solid black, padding: 5px 0 5px 0}
		    .title  { font: bold 160% serif; color: #0066FF; padding: 10px 0 10px 0; text-align: center; background: #ccc8c8}
		    .stitle { font: bold 120% sans-serif; color: #0044DD; padding: 10px 0 10px 0 }
		    .sstitle{ font: bold 120% serif; color: #000000; background: #efefef; padding: 5px 0 5px 0; padding-left: 20px; }
		    .field  { font: 100% sans-serif; color: #000000; padding: 2px; padding-left: 50px; border: 1px solid black}
		    .value  { font: 100% sans-serif; color: #505050 }
		</style>
	</head>
	<body> 
	<div>
	<p class="title">ERtext Logical schema</p>
	</div>
	«/**
	 *
	 * Display of the modeled domain (database name)
	 *
	 */»
	<div>
	<p class="sstitle">Domain</p> 
	<p class="field">«modeloER.domain.name.toUpperCase»</p>
	</div>
	«/**
	 *	
	 * Display of modeled entities (tables)
	 *
	 */»
	<div>
	<p class="sstitle">Entities</p>
	<p class="field">
	«FOR entity : modeloER.entities SEPARATOR " )</br></br>" AFTER ")</br>"»
		«entity.name.toUpperCase» (
		«/**
		 *
		 * Verification and display of primary (PK) and, at the same time, foreign (FK) 
		 * keys from generalizations / specializations
		 *  1- Checks for a reference to a parent entity
		 *  2- If it exists, the key that references the parent is written being primary and foreign at the same time
		 *
		 */»
		«IF !(entity.is === null)»
			«FOR aux : modeloER.entities»
				«IF aux.name.equalsIgnoreCase(entity.is.toString)»
					<font color="blue"><b>«aux.name»</b></font><font color="red"><b>*</b></font>, 
				«ENDIF»
			«ENDFOR»
		«ENDIF»
			
		«FOR attribute : entity.attributes SEPARATOR ", "»
			«IF attribute.isIsKey»
				<font color="red"><b>«attribute.name»*</b></font>
			«ELSEIF !attribute.isIsKey»
				«attribute.name»
			«ENDIF»	
		«ENDFOR»	
		
		«/**
		 *
		 * 
		 * 
		 */»
		
	«ENDFOR»
	«/**
	 *
	 * Formation of entities from relations N:N
	 *	1- Checks if there is a name for the relationship, if it does not exist, the name of the two associated entities is concatenated
	 *  2- The primary keys of the associated entities are allocated and become primary and foreign at the same time
	 *  3- If the relationship has attributes they are written at the end
	 * 
	 */»
	«FOR relation : modeloER.relations»
		«IF ((relation.leftEnding.cardinality.equalsIgnoreCase('(0:N)') || relation.leftEnding.cardinality.equalsIgnoreCase('(1:N)'))
		&& 
		(relation.rightEnding.cardinality.equalsIgnoreCase('(0:N)') || relation.rightEnding.cardinality.equalsIgnoreCase('(1:N)')))»
			
			«IF relation.name.nullOrEmpty»
			</br>«relation.leftEnding.target.toString.toUpperCase»«relation.rightEnding.target.toString.toUpperCase» (
			«ELSEIF !relation.name.nullOrEmpty»
			</br>«relation.name.toUpperCase» (
			«ENDIF»
			
			«FOR entity : modeloER.entities»
				«IF relation.leftEnding.target.toString.equalsIgnoreCase(entity.name)»
					«FOR attribute : entity.attributes»
						«IF attribute.isIsKey»
							<font color="blue"><b>«attribute.name»</b></font><font color="red"><b>*</b></font>,
						«ENDIF»
					«ENDFOR»
				«ENDIF»
				
				«IF relation.rightEnding.target.toString.equalsIgnoreCase(entity.name)»
					«FOR attribute : entity.attributes»
						«IF attribute.isIsKey»
							<font color="blue"><b>«attribute.name»</b></font><font color="red"><b>*</b></font>
						«ENDIF»
					«ENDFOR»
				«ENDIF»				
			«ENDFOR»			
			
			«FOR attribute : relation.attributes»
				«IF !attribute.name.nullOrEmpty»
					, «attribute.name»
				«ENDIF»
			«ENDFOR»
			)</br>
			
		«ENDIF»
	«ENDFOR»
	</p>
	</div>
	«/**
	 *	
	 * Display of inferred references through modeled relationships (foreign keys)
	 *
	 */»
	<div>
	<p class="sstitle">References</p>
	<p class="field">
	«FOR relation : modeloER.relations SEPARATOR "</br></br>"»
		«relation.name» >>> «relation.leftEnding.cardinality.toString» «relation.leftEnding.target» relates «relation.rightEnding.target.toString» «relation.rightEnding.cardinality»
	«ENDFOR»
	</p>
	</div>
	</body>
	</html>
				'''
		)
		
	}
	
}

