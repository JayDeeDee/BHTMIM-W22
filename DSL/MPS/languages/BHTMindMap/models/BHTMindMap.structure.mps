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
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  </node>
  <node concept="1TIwiD" id="C9Zxjvudr9">
    <property role="EcuMT" value="723388580771714761" />
    <property role="TrG5h" value="BHTRootIdea" />
    <property role="34LRSv" value="central idea" />
    <property role="R4oN_" value="cnetral idea root node of the mindmap " />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
  </node>
  <node concept="1TIwiD" id="C9Zxjvufax">
    <property role="EcuMT" value="723388580771721889" />
    <property role="TrG5h" value="BHTSubIdea" />
    <property role="34LRSv" value="sub topic" />
    <property role="R4oN_" value="subtopics can be children of main topics or other sub topics" />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
  </node>
  <node concept="1TIwiD" id="C9ZxjvugXx">
    <property role="EcuMT" value="723388580771729249" />
    <property role="TrG5h" value="BHTMainIdea" />
    <property role="34LRSv" value="main idea " />
    <property role="R4oN_" value="main idea is first level node after the root idea" />
    <ref role="1TJDcQ" node="C9Zxjvuam4" resolve="BHTIdea" />
  </node>
  <node concept="1TIwiD" id="C9ZxjvuiK6">
    <property role="EcuMT" value="723388580771736582" />
    <property role="TrG5h" value="BHTLabel" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="C9ZxjvujEe" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

