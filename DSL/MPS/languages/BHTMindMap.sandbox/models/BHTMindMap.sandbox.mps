<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f0529c79-5b1a-4c6e-9e90-767013224a4a(BHTMindMap.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="bbb766b4-66e5-4907-a892-5f51afe0212d" name="BHTMindMap" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="bbb766b4-66e5-4907-a892-5f51afe0212d" name="BHTMindMap">
      <concept id="723388580771729249" name="BHTMindMap.structure.BHTMainIdea" flags="ng" index="3lsf5P">
        <child id="723388580771772825" name="subIdea" index="3ls4ud" />
      </concept>
      <concept id="723388580771721889" name="BHTMindMap.structure.BHTSubIdea" flags="ng" index="3lsgMP">
        <child id="723388580771770847" name="subSubIdea" index="3ls4Zb" />
      </concept>
      <concept id="723388580771714761" name="BHTMindMap.structure.BHTRootIdea" flags="ng" index="3lsizt">
        <child id="723388580771766893" name="mainIdea" index="3ls5LT" />
      </concept>
      <concept id="723388580771692889" name="BHTMindMap.structure.BHTMindMap" flags="ng" index="3lsnXd">
        <child id="723388580771761766" name="rootIdea" index="3ls71M" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3lsnXd" id="C9ZxjvuHEU">
    <property role="TrG5h" value="dsl mindmap" />
    <node concept="3lsizt" id="C9ZxjvuHHp" role="3ls71M">
      <property role="TrG5h" value="dsl" />
      <node concept="3lsf5P" id="C9ZxjvuHHr" role="3ls5LT">
        <property role="TrG5h" value="definition" />
        <node concept="3lsgMP" id="C9ZxjvuHHt" role="3ls4ud">
          <property role="TrG5h" value="focused on specific domain" />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHHv" role="3ls4ud">
          <property role="TrG5h" value="language nature " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHHy" role="3ls4ud">
          <property role="TrG5h" value="limited expressiveness " />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHHA" role="3ls5LT">
        <property role="TrG5h" value="categories" />
        <node concept="3lsgMP" id="C9ZxjvuHHG" role="3ls4ud">
          <property role="TrG5h" value="internal dsl bhtmarker" />
          <node concept="3lsgMP" id="C9ZxjvuHHI" role="3ls4Zb">
            <property role="TrG5h" value="has grammar" />
          </node>
          <node concept="3lsgMP" id="C9ZxjvuHHK" role="3ls4Zb">
            <property role="TrG5h" value="do not use formal grammar" />
          </node>
          <node concept="3lsgMP" id="C9ZxjvuHHT" role="3ls4Zb">
            <property role="TrG5h" value="ability to use closure" />
          </node>
          <node concept="3lsgMP" id="C9ZxjvuHHX" role="3ls4Zb">
            <property role="TrG5h" value="bound by host language" />
          </node>
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHI2" role="3ls4ud">
          <property role="TrG5h" value="external dsl " />
          <node concept="3lsgMP" id="C9ZxjvuHI9" role="3ls4Zb">
            <property role="TrG5h" value="need language parser" />
          </node>
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHIb" role="3ls4ud">
          <property role="TrG5h" value="language workbench" />
          <node concept="3lsgMP" id="C9ZxjvuHIk" role="3ls4Zb">
            <property role="TrG5h" value="tools that allow to build languages and its environment" />
          </node>
          <node concept="3lsgMP" id="C9ZxjvuHIm" role="3ls4Zb">
            <property role="TrG5h" value="benefits" />
            <node concept="3lsgMP" id="C9ZxjvuHIp" role="3ls4Zb">
              <property role="TrG5h" value="freedom to build dsls" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHIr" role="3ls5LT">
        <property role="TrG5h" value="tools bhtmarker " />
        <node concept="3lsgMP" id="C9ZxjvuHIH" role="3ls4ud">
          <property role="TrG5h" value="xText bhtmarker " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHJl" role="3ls4ud">
          <property role="TrG5h" value="MPS" />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHJo" role="3ls5LT">
        <property role="TrG5h" value="semantic model " />
        <node concept="3lsgMP" id="C9ZxjvuHJH" role="3ls4ud">
          <property role="TrG5h" value="state machine " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHJJ" role="3ls4ud">
          <property role="TrG5h" value="interpretation" />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHJM" role="3ls4ud">
          <property role="TrG5h" value="code generation " />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHJQ" role="3ls5LT">
        <property role="TrG5h" value="benefits " />
        <node concept="3lsgMP" id="C9ZxjvuHKf" role="3ls4ud">
          <property role="TrG5h" value="programmer productivity " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHKh" role="3ls4ud">
          <property role="TrG5h" value="express behaviour in a natural way to the domain " />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHKk" role="3ls5LT">
        <property role="TrG5h" value="disadvantages" />
        <node concept="3lsgMP" id="C9ZxjvuHKK" role="3ls4ud">
          <property role="TrG5h" value="cost of building dsl " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHKM" role="3ls4ud">
          <property role="TrG5h" value="migration problem when business evolves and requires modified dsl " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHKP" role="3ls4ud">
          <property role="TrG5h" value="understanding dsl - what is a good dsl " />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHKT" role="3ls5LT">
        <property role="TrG5h" value="life cycle " />
        <node concept="3lsgMP" id="C9ZxjvuHLp" role="3ls4ud">
          <property role="TrG5h" value="build dsl" />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHLr" role="3ls4ud">
          <property role="TrG5h" value="evolve dsl " />
          <node concept="3lsgMP" id="C9ZxjvuHLu" role="3ls4Zb">
            <property role="TrG5h" value="how do we migrate build system " />
          </node>
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHLw" role="3ls4ud">
          <property role="TrG5h" value="impact on build system " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHL_" role="3ls4ud">
          <property role="TrG5h" value="language parser " />
        </node>
        <node concept="3lsgMP" id="C9ZxjvuHLF" role="3ls4ud">
          <property role="TrG5h" value="testing " />
        </node>
      </node>
      <node concept="3lsf5P" id="C9ZxjvuHLM" role="3ls5LT">
        <property role="TrG5h" value="syntactic facade over complex framework " />
      </node>
    </node>
  </node>
</model>

