<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)">
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
  <node concept="1TIwiD" id="C9Zxjvu85p">
    <property role="EcuMT" value="723388580771692889" />
    <property role="TrG5h" value="BHTMindMap" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="mindmap" />
    <property role="R4oN_" value="mindmap can have an central root idea which has multiple levels of ideas" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="C9Zxjvu8nG" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="C9ZxjvuoAS" role="1TKVEi">
      <property role="IQ2ns" value="723388580771760568" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="label" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="C9ZxjvuiK6" resolve="BHTLabel" />
    </node>
    <node concept="1TJgyj" id="C9ZxjvuoTA" role="1TKVEi">
      <property role="IQ2ns" value="723388580771761766" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rootIdea" />
      <ref role="20lvS9" node="C9Zxjvudr9" resolve="BHTRootIdea" />
    </node>
  </node>
  <node concept="1TIwiD" id="C9Zxjvuam4">
    <property role="EcuMT" value="723388580771702148" />
    <property role="TrG5h" value="BHTIdea" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="idea" />
    <property role="R4oN_" value="an abstract idea is a topic or node in the mindmap that all other types of ideas derive from" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="C9ZxjvuaNl" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="153Db1SlOXW" role="1TKVEi">
      <property role="IQ2ns" value="1244018999924576124" />
      <property role="20kJfa" value="label" />
      <ref role="20lvS9" node="C9ZxjvuiK6" resolve="BHTLabel" />
    </node>
  </node>
  <node concept="1TIwiD" id="C9Zxjvudr9">
    <property role="EcuMT" value="723388580771714761" />
    <property role="TrG5h" value="BHTRootIdea" />
    <property role="34LRSv" value="central idea" />
    <property role="R4oN_" value="central idea root node of the mindmap can have several main ideas" />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
    <node concept="1TJgyj" id="C9Zxjvuq9H" role="1TKVEi">
      <property role="IQ2ns" value="723388580771766893" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="mainIdea" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="C9ZxjvugXx" resolve="BHTMainIdea" />
    </node>
  </node>
  <node concept="1TIwiD" id="C9Zxjvufax">
    <property role="EcuMT" value="723388580771721889" />
    <property role="TrG5h" value="BHTSubIdea" />
    <property role="34LRSv" value="sub idea" />
    <property role="R4oN_" value="sub idea can have several sub ideas" />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
    <node concept="1TJgyj" id="C9Zxjvur7v" role="1TKVEi">
      <property role="IQ2ns" value="723388580771770847" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="subSubIdea" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="C9Zxjvufax" resolve="BHTSubIdea" />
    </node>
  </node>
  <node concept="1TIwiD" id="C9ZxjvugXx">
    <property role="EcuMT" value="723388580771729249" />
    <property role="TrG5h" value="BHTMainIdea" />
    <property role="34LRSv" value="main idea " />
    <property role="R4oN_" value="main idea is first level node after the root idea" />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
    <node concept="1TJgyj" id="C9ZxjvurAp" role="1TKVEi">
      <property role="IQ2ns" value="723388580771772825" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="subIdea" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="C9Zxjvufax" resolve="BHTSubIdea" />
    </node>
  </node>
  <node concept="1TIwiD" id="C9ZxjvuiK6">
    <property role="EcuMT" value="723388580771736582" />
    <property role="TrG5h" value="BHTLabel" />
    <property role="34LRSv" value="label for ideas" />
    <property role="R4oN_" value="potential label for each idea can be used for sorting the mindmap chaos (levels etc)" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="C9ZxjvujEe" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

