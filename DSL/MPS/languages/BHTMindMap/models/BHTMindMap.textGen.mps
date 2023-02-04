<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bc07351b-e3ea-4d85-a1b8-2c3cc007b05a(BHTMindMap.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pequ" ref="r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="C9ZxjvvFti">
    <ref role="WuzLi" to="pequ:C9Zxjvu85p" resolve="BHTMindMap" />
    <node concept="29tfMY" id="C9ZxjvvG6p" role="29tGrW">
      <node concept="3clFbS" id="C9ZxjvvG6q" role="2VODD2">
        <node concept="3clFbF" id="C9ZxjvvI39" role="3cqZAp">
          <node concept="3cpWs3" id="C9ZxjvvIQS" role="3clFbG">
            <node concept="2OqwBi" id="C9ZxjvvJrC" role="3uHU7w">
              <node concept="117lpO" id="C9ZxjvvJ7C" role="2Oq$k0" />
              <node concept="3TrcHB" id="C9ZxjvvJBU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="C9ZxjvvI38" role="3uHU7B">
              <property role="Xl_RC" value="mm__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="C9ZxjvvKf$" role="33IsuW">
      <node concept="3clFbS" id="C9ZxjvvKf_" role="2VODD2">
        <node concept="3clFbF" id="C9ZxjvvKwR" role="3cqZAp">
          <node concept="Xl_RD" id="C9ZxjvvKwQ" role="3clFbG">
            <property role="Xl_RC" value="tex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="C9ZxjvvKS0" role="11c4hB">
      <node concept="3clFbS" id="C9ZxjvvKS1" role="2VODD2">
        <node concept="lc7rE" id="C9ZxjvvPmx" role="3cqZAp">
          <node concept="la8eA" id="C9ZxjvvPIQ" role="lcghm">
            <property role="lacIc" value="\\documentclass{article}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Smz3b" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Smz7c" role="lcghm" />
        </node>
        <node concept="lc7rE" id="153Db1Smytz" role="3cqZAp">
          <node concept="la8eA" id="153Db1Smywk" role="lcghm">
            <property role="lacIc" value="\\usepackage[utf8]{inputenc}" />
          </node>
        </node>
        <node concept="lc7rE" id="C9ZxjvvQea" role="3cqZAp">
          <node concept="l8MVK" id="C9ZxjvvQgH" role="lcghm" />
        </node>
        <node concept="lc7rE" id="C9ZxjvvRwA" role="3cqZAp">
          <node concept="la8eA" id="C9ZxjvvRyU" role="lcghm">
            <property role="lacIc" value="\\title{Einsendeaufgabe 9 – DSL}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Sm$aC" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Sm$el" role="lcghm" />
        </node>
        <node concept="lc7rE" id="153Db1Smznc" role="3cqZAp">
          <node concept="la8eA" id="153Db1Smzq1" role="lcghm">
            <property role="lacIc" value="\\author{Jana Deutschlaender}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Sm$pY" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Sm$tF" role="lcghm" />
        </node>
        <node concept="lc7rE" id="C9ZxjvvWIW" role="3cqZAp">
          <node concept="la8eA" id="C9ZxjvvWTQ" role="lcghm">
            <property role="lacIc" value="\\date{February 2023}" />
          </node>
        </node>
        <node concept="lc7rE" id="C9ZxjvvYGH" role="3cqZAp">
          <node concept="l8MVK" id="C9ZxjvvYO3" role="lcghm" />
        </node>
        <node concept="lc7rE" id="C9ZxjvvXeh" role="3cqZAp">
          <node concept="la8eA" id="C9ZxjvvXjg" role="lcghm">
            <property role="lacIc" value="\\begin{document}" />
          </node>
        </node>
        <node concept="lc7rE" id="C9ZxjvvYuq" role="3cqZAp">
          <node concept="l8MVK" id="C9ZxjvvYyd" role="lcghm" />
        </node>
        <node concept="lc7rE" id="C9Zxjvw2Fw" role="3cqZAp">
          <node concept="la8eA" id="C9Zxjvw2M7" role="lcghm">
            <property role="lacIc" value="\\maketitle" />
          </node>
        </node>
        <node concept="lc7rE" id="C9ZxjvvQCE" role="3cqZAp">
          <node concept="l8MVK" id="C9ZxjvvQFF" role="lcghm" />
        </node>
        <node concept="lc7rE" id="153Db1SmGEv" role="3cqZAp">
          <node concept="la8eA" id="153Db1SmGH8" role="lcghm">
            <property role="lacIc" value="\\paragraph{" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmGYq" role="3cqZAp">
          <node concept="la8eA" id="153Db1SmH15" role="lcghm">
            <property role="lacIc" value="Die folgende Struktur wurde aus einer Mindmap der Sprache \\emph{BHTMindMap} erstellt:" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmJAc" role="3cqZAp">
          <node concept="l9hG8" id="153Db1SmJE$" role="lcghm">
            <node concept="2OqwBi" id="153Db1SmJQJ" role="lb14g">
              <node concept="117lpO" id="153Db1SmJH$" role="2Oq$k0" />
              <node concept="3TrcHB" id="153Db1SmTFC" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmTS8" role="3cqZAp">
          <node concept="la8eA" id="153Db1SmTVm" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmUcC" role="3cqZAp">
          <node concept="l9hG8" id="153Db1SmUhW" role="lcghm">
            <node concept="2OqwBi" id="153Db1SmUI2" role="lb14g">
              <node concept="2OqwBi" id="153Db1SmUug" role="2Oq$k0">
                <node concept="117lpO" id="153Db1SmUlm" role="2Oq$k0" />
                <node concept="3TrEf2" id="153Db1SmUzI" role="2OqNvi">
                  <ref role="3Tt5mk" to="pequ:C9ZxjvuoTA" resolve="rootIdea" />
                </node>
              </node>
              <node concept="3TrcHB" id="153Db1SmUYu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmTZM" role="3cqZAp">
          <node concept="la8eA" id="153Db1SmTZN" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmJfz" role="3cqZAp">
          <node concept="la8eA" id="153Db1SmJig" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SmL1O" role="3cqZAp">
          <node concept="l8MVK" id="153Db1SmL6J" role="lcghm" />
        </node>
        <node concept="lc7rE" id="C9Zxjvw35W" role="3cqZAp">
          <node concept="l9hG8" id="C9Zxjvw3ai" role="lcghm">
            <node concept="2OqwBi" id="153Db1SjKx4" role="lb14g">
              <node concept="117lpO" id="C9Zxjvw3e6" role="2Oq$k0" />
              <node concept="3TrEf2" id="153Db1SjKTW" role="2OqNvi">
                <ref role="3Tt5mk" to="pequ:C9ZxjvuoTA" resolve="rootIdea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="C9ZxjvvQSw" role="3cqZAp">
          <node concept="la8eA" id="C9ZxjvvQWo" role="lcghm">
            <property role="lacIc" value="\\end{document}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="153Db1SjpTs">
    <ref role="WuzLi" to="pequ:C9Zxjvudr9" resolve="BHTRootIdea" />
    <node concept="11bSqf" id="153Db1SjpTt" role="11c4hB">
      <node concept="3clFbS" id="153Db1SjpTu" role="2VODD2">
        <node concept="lc7rE" id="153Db1SjqeM" role="3cqZAp">
          <node concept="l9S2W" id="153Db1SjqBB" role="lcghm">
            <node concept="2OqwBi" id="153Db1SjqPf" role="lbANJ">
              <node concept="117lpO" id="153Db1SjqGz" role="2Oq$k0" />
              <node concept="3Tsc0h" id="153Db1Sjrge" role="2OqNvi">
                <ref role="3TtcxE" to="pequ:C9Zxjvuq9H" resolve="mainIdea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Sjrw0" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Sjr_z" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="153Db1SjrJl">
    <ref role="WuzLi" to="pequ:C9ZxjvugXx" resolve="BHTMainIdea" />
    <node concept="11bSqf" id="153Db1SjrJm" role="11c4hB">
      <node concept="3clFbS" id="153Db1SjrJn" role="2VODD2">
        <node concept="lc7rE" id="153Db1SjrPt" role="3cqZAp">
          <node concept="la8eA" id="153Db1SjrRV" role="lcghm">
            <property role="lacIc" value="\\section{" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SjsbJ" role="3cqZAp">
          <node concept="l9hG8" id="153Db1Skl4c" role="lcghm">
            <node concept="2OqwBi" id="153Db1SklpZ" role="lb14g">
              <node concept="117lpO" id="153Db1Sklaq" role="2Oq$k0" />
              <node concept="3TrcHB" id="153Db1SklF9" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SjsU3" role="3cqZAp">
          <node concept="la8eA" id="153Db1Sjt1g" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1SjtcO" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Sjti1" role="lcghm" />
        </node>
        <node concept="lc7rE" id="153Db1Skz7V" role="3cqZAp">
          <node concept="l9S2W" id="153Db1SkzdO" role="lcghm">
            <node concept="2OqwBi" id="153Db1Skzy0" role="lbANJ">
              <node concept="117lpO" id="153Db1Skzpk" role="2Oq$k0" />
              <node concept="3Tsc0h" id="153Db1SkzWQ" role="2OqNvi">
                <ref role="3TtcxE" to="pequ:C9ZxjvurAp" resolve="subIdea" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="153Db1Sjtqb">
    <ref role="WuzLi" to="pequ:C9Zxjvufax" resolve="BHTSubIdea" />
    <node concept="11bSqf" id="153Db1Sjtqc" role="11c4hB">
      <node concept="3clFbS" id="153Db1Sjtqd" role="2VODD2">
        <node concept="3clFbJ" id="153Db1SjtwH" role="3cqZAp">
          <node concept="2OqwBi" id="153Db1Sjupp" role="3clFbw">
            <node concept="2OqwBi" id="153Db1SjtMh" role="2Oq$k0">
              <node concept="117lpO" id="153Db1SjtA6" role="2Oq$k0" />
              <node concept="1mfA1w" id="153Db1Sjue5" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="153Db1SjuCP" role="2OqNvi">
              <node concept="chp4Y" id="153Db1SjuJD" role="cj9EA">
                <ref role="cht4Q" to="pequ:C9Zxjvufax" resolve="BHTSubIdea" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="153Db1SjtwJ" role="3clFbx">
            <node concept="3clFbJ" id="153Db1Sm3_P" role="3cqZAp">
              <node concept="3clFbS" id="153Db1Sm3_R" role="3clFbx">
                <node concept="lc7rE" id="153Db1Sm4It" role="3cqZAp">
                  <node concept="la8eA" id="153Db1Sm7Ue" role="lcghm">
                    <property role="lacIc" value="\\paragraph{" />
                  </node>
                </node>
                <node concept="lc7rE" id="153Db1Sm8mq" role="3cqZAp">
                  <node concept="l9hG8" id="153Db1Sm8sA" role="lcghm">
                    <node concept="2OqwBi" id="153Db1Sm8Dq" role="lb14g">
                      <node concept="117lpO" id="153Db1Sm8vA" role="2Oq$k0" />
                      <node concept="3TrcHB" id="153Db1Sm8RU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="153Db1Sm4sY" role="3clFbw">
                <node concept="2OqwBi" id="153Db1Sm4c9" role="2Oq$k0">
                  <node concept="2OqwBi" id="153Db1Sm3NX" role="2Oq$k0">
                    <node concept="117lpO" id="153Db1Sm3Dl" role="2Oq$k0" />
                    <node concept="1mfA1w" id="153Db1Sm430" role="2OqNvi" />
                  </node>
                  <node concept="1mfA1w" id="153Db1Sm4rN" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="153Db1Sm4zO" role="2OqNvi">
                  <node concept="chp4Y" id="153Db1Sm4Dy" role="cj9EA">
                    <ref role="cht4Q" to="pequ:C9Zxjvufax" resolve="BHTSubIdea" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="153Db1Sm5_0" role="9aQIa">
                <node concept="3clFbS" id="153Db1Sm5_1" role="9aQI4">
                  <node concept="lc7rE" id="153Db1Sm6BG" role="3cqZAp">
                    <node concept="la8eA" id="153Db1Sm6E$" role="lcghm">
                      <property role="lacIc" value="\\subsubsection{" />
                    </node>
                  </node>
                  <node concept="lc7rE" id="153Db1Sm6S9" role="3cqZAp">
                    <node concept="l9hG8" id="153Db1Sm6VT" role="lcghm">
                      <node concept="2OqwBi" id="153Db1Sm6ZK" role="lb14g">
                        <node concept="117lpO" id="153Db1Sm6Zj" role="2Oq$k0" />
                        <node concept="3TrcHB" id="153Db1Sm746" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="153Db1SjwxX" role="9aQIa">
            <node concept="3clFbS" id="153Db1SjwxY" role="9aQI4">
              <node concept="lc7rE" id="153Db1SjwHK" role="3cqZAp">
                <node concept="la8eA" id="153Db1SjwRW" role="lcghm">
                  <property role="lacIc" value="\\subsection{" />
                </node>
              </node>
              <node concept="lc7rE" id="153Db1SjxcP" role="3cqZAp">
                <node concept="l9hG8" id="153Db1SjxnT" role="lcghm">
                  <node concept="2OqwBi" id="153Db1SjxAJ" role="lb14g">
                    <node concept="117lpO" id="153Db1SjxsV" role="2Oq$k0" />
                    <node concept="3TrcHB" id="153Db1SjxOx" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Sm9d4" role="3cqZAp">
          <node concept="la8eA" id="153Db1Sm9iw" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
        <node concept="lc7rE" id="153Db1Sm9rT" role="3cqZAp">
          <node concept="l8MVK" id="153Db1Sm9xn" role="lcghm" />
        </node>
        <node concept="lc7rE" id="153Db1Sjzhz" role="3cqZAp">
          <node concept="l9S2W" id="153Db1Sjz_o" role="lcghm">
            <node concept="2OqwBi" id="153Db1SjzOe" role="lbANJ">
              <node concept="117lpO" id="153Db1SjzFy" role="2Oq$k0" />
              <node concept="3Tsc0h" id="153Db1Sj$hU" role="2OqNvi">
                <ref role="3TtcxE" to="pequ:C9Zxjvur7v" resolve="subSubIdea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="153Db1Socaf" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

