<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a8e00bf8-c3da-4345-a0d2-760b3b91f7bc(BhtMimMindMap.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="5b38a289-a18d-48cf-a3c2-7f325ec8d2f5" name="BhtMimMindMap" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="5b38a289-a18d-48cf-a3c2-7f325ec8d2f5" name="BhtMimMindMap">
      <concept id="8730602560471711303" name="BhtMimMindMap.structure.BHTSubTopic" flags="ng" index="3t8mE2">
        <child id="8730602560471727822" name="subSubTopic" index="3t8iCb" />
      </concept>
      <concept id="8730602560471693431" name="BhtMimMindMap.structure.BHTMainTopic" flags="ng" index="3tbEMM">
        <child id="8730602560471725138" name="subTopic" index="3t8i2n" />
      </concept>
      <concept id="8730602560471663044" name="BhtMimMindMap.structure.BHTRootTopic" flags="ng" index="3tbHk1">
        <child id="8730602560471705370" name="mainTopic" index="3t8nfv" />
      </concept>
      <concept id="8730602560471592510" name="BhtMimMindMap.structure.BHTMindMap" flags="ng" index="3tbNFV">
        <child id="8730602560471675634" name="centralTopic" index="3tbIoR" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3tbNFV" id="5g_GpUC0_p4">
    <property role="TrG5h" value="dslMindMap" />
    <node concept="3tbHk1" id="5g_GpUC0_p5" role="3tbIoR">
      <property role="TrG5h" value="dsl" />
      <node concept="3tbEMM" id="5g_GpUC0_p8" role="3t8nfv">
        <property role="TrG5h" value="definition" />
        <node concept="3t8mE2" id="5g_GpUC0_pa" role="3t8i2n">
          <property role="TrG5h" value="focused on specific domain" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_pg" role="3t8i2n">
          <property role="TrG5h" value="language nature" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_pj" role="3t8i2n">
          <property role="TrG5h" value="limited expressiveness" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_pc" role="3t8nfv">
        <property role="TrG5h" value="categories" />
        <node concept="3t8mE2" id="5g_GpUC0_pn" role="3t8i2n">
          <property role="TrG5h" value="internal dsl" />
          <node concept="3t8mE2" id="5g_GpUC0_pp" role="3t8iCb">
            <property role="TrG5h" value="has grammar" />
          </node>
          <node concept="3t8mE2" id="5g_GpUC0_pv" role="3t8iCb">
            <property role="TrG5h" value="do not use formal grammar" />
          </node>
          <node concept="3t8mE2" id="5g_GpUC0_py" role="3t8iCb">
            <property role="TrG5h" value="ability to use closure" />
          </node>
          <node concept="3t8mE2" id="5g_GpUC0_pA" role="3t8iCb">
            <property role="TrG5h" value="bound by host language" />
          </node>
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_pr" role="3t8i2n">
          <property role="TrG5h" value="external dsl" />
          <node concept="3t8mE2" id="5g_GpUC0_pF" role="3t8iCb">
            <property role="TrG5h" value="need language parser" />
          </node>
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_pH" role="3t8i2n">
          <property role="TrG5h" value="language workbench" />
          <node concept="3t8mE2" id="5g_GpUC0_pQ" role="3t8iCb">
            <property role="TrG5h" value="tools that allow to build languages and its environment" />
          </node>
          <node concept="3t8mE2" id="5g_GpUC0_pS" role="3t8iCb">
            <property role="TrG5h" value="benefits" />
            <node concept="3t8mE2" id="5g_GpUC0_pV" role="3t8iCb">
              <property role="TrG5h" value="freedom to build dsls" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_pX" role="3t8nfv">
        <property role="TrG5h" value="tools" />
        <node concept="3t8mE2" id="5g_GpUC0_qf" role="3t8i2n">
          <property role="TrG5h" value="xText" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_q_" role="3t8i2n">
          <property role="TrG5h" value="MPS" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_qh" role="3t8nfv">
        <property role="TrG5h" value="semantic model" />
        <node concept="3t8mE2" id="5g_GpUC0_qC" role="3t8i2n">
          <property role="TrG5h" value="state machine" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_qE" role="3t8i2n">
          <property role="TrG5h" value="interpretation" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_qH" role="3t8i2n">
          <property role="TrG5h" value="code generation" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_qL" role="3t8nfv">
        <property role="TrG5h" value="benefits" />
        <node concept="3t8mE2" id="5g_GpUC0_ra" role="3t8i2n">
          <property role="TrG5h" value="programmer productivity" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_rc" role="3t8i2n">
          <property role="TrG5h" value="express behaviour in a natural way to the domain" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_rf" role="3t8nfv">
        <property role="TrG5h" value="disadvantages" />
        <node concept="3t8mE2" id="5g_GpUC0_rF" role="3t8i2n">
          <property role="TrG5h" value="cost of building dsl" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_rH" role="3t8i2n">
          <property role="TrG5h" value="migration problem when business evolves and requires modified dsl" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_rK" role="3t8i2n">
          <property role="TrG5h" value="understanding dsl - what is a good dsl" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_rO" role="3t8nfv">
        <property role="TrG5h" value="life cycle" />
        <node concept="3t8mE2" id="5g_GpUC0_sk" role="3t8i2n">
          <property role="TrG5h" value="build dsl" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_sm" role="3t8i2n">
          <property role="TrG5h" value="evolve dsl" />
          <node concept="3t8mE2" id="5g_GpUC0_sC" role="3t8iCb">
            <property role="TrG5h" value="how do we migrate build system" />
          </node>
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_sp" role="3t8i2n">
          <property role="TrG5h" value="impact on build system" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_st" role="3t8i2n">
          <property role="TrG5h" value="language parser" />
        </node>
        <node concept="3t8mE2" id="5g_GpUC0_sy" role="3t8i2n">
          <property role="TrG5h" value="testing" />
        </node>
      </node>
      <node concept="3tbEMM" id="5g_GpUC0_sE" role="3t8nfv">
        <property role="TrG5h" value="syntactic facade over complex framework" />
      </node>
    </node>
  </node>
</model>

