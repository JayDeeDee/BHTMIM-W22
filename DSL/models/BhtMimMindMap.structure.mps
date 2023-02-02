<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:148d3c45-f0fe-4e0a-b54a-ecafc4f6ec31(BhtMimMindMap.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7$Dlcm$1ASY">
    <property role="EcuMT" value="8730602560471592510" />
    <property role="TrG5h" value="BHTMindMap" />
    <property role="19KtqR" value="true" />
    <property role="R4oN_" value="mindmap concept can have multiple levels of topics and can in clude a potential marker for each topic" />
    <property role="34LRSv" value="mindmap " />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7$Dlcm$1BxC" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7$Dlcm$1RoG" role="1TKVEi">
      <property role="IQ2ns" value="8730602560471660076" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="bhtmarker" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="7$Dlcm$1Ghf" resolve="BHTMarker" />
    </node>
  </node>
  <node concept="1TIwiD" id="7$Dlcm$1DqL">
    <property role="EcuMT" value="8730602560471602865" />
    <property role="TrG5h" value="BHTTopic" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="topic for mindmap" />
    <property role="R4oN_" value="topic that all other types of topics derive from" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7$Dlcm$1E8i" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7$Dlcm$1QLD" role="1TKVEi">
      <property role="IQ2ns" value="8730602560471657577" />
      <property role="20kJfa" value="bhtmarker" />
      <ref role="20lvS9" node="7$Dlcm$1Ghf" resolve="BHTMarker" />
    </node>
  </node>
  <node concept="1TIwiD" id="7$Dlcm$1Ghf">
    <property role="EcuMT" value="8730602560471614543" />
    <property role="TrG5h" value="BHTMarker" />
    <property role="R4oN_" value="potential marker for each topic" />
    <property role="34LRSv" value="marker for topic" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7$Dlcm$1Kbz" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7$Dlcm$1S74">
    <property role="EcuMT" value="8730602560471663044" />
    <property role="TrG5h" value="BHTMainTopic" />
    <property role="34LRSv" value="central topic" />
    <property role="R4oN_" value="main or central topic of the mindmap" />
    <ref role="1TJDcQ" node="7$Dlcm$1DqL" resolve="BHTTopic" />
  </node>
</model>

