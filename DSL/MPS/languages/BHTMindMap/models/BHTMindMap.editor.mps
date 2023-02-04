<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3b310db4-5424-48c9-8155-d8a6204a229a(BHTMindMap.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pequ" ref="r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1226339938453" name="jetbrains.mps.lang.editor.structure.AbstractPaddingStyleClassItem" flags="ln" index="27zB68">
        <property id="1226504838901" name="measure" index="2hoDZC" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="C9ZxjvuI9z">
    <ref role="1XX52x" to="pequ:C9Zxjvu85p" resolve="BHTMindMap" />
    <node concept="3EZMnI" id="C9ZxjvuIeu" role="2wV5jI">
      <node concept="3F0ifn" id="C9ZxjvuIhS" role="3EZMnx">
        <property role="3F0ifm" value="mindmap" />
      </node>
      <node concept="3F0A7n" id="C9ZxjvuIpg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="C9ZxjvuIex" role="2iSdaV" />
      <node concept="3F0ifn" id="C9ZxjvuKjA" role="3EZMnx">
        <property role="3F0ifm" value="with" />
      </node>
      <node concept="3F2HdR" id="C9ZxjvuJVS" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9ZxjvuoAS" resolve="label" />
        <node concept="l2Vlx" id="C9ZxjvuJVV" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="C9ZxjvuKCF" role="3EZMnx">
        <property role="3F0ifm" value="about" />
      </node>
      <node concept="3F1sOY" id="C9ZxjvuKGZ" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9ZxjvuoTA" resolve="rootIdea" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="C9ZxjvuLpQ">
    <ref role="1XX52x" to="pequ:C9Zxjvudr9" resolve="BHTRootIdea" />
    <node concept="3EZMnI" id="C9ZxjvuLt8" role="2wV5jI">
      <node concept="3F0A7n" id="C9ZxjvuLw5" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="C9ZxjvuLtb" role="2iSdaV" />
      <node concept="3F0ifn" id="C9ZxjvuLAF" role="3EZMnx">
        <property role="3F0ifm" value="on level" />
      </node>
      <node concept="3F0ifn" id="C9ZxjvuM1d" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="C9ZxjvuM73" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:153Db1SlOXW" resolve="label" />
        <node concept="1sVBvm" id="C9ZxjvuM75" role="1sWHZn">
          <node concept="3F0A7n" id="C9ZxjvuMc7" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuMkq" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="C9ZxjvuMrk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="C9ZxjvuMFo" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9Zxjvuq9H" resolve="mainIdea" />
        <node concept="l2Vlx" id="C9ZxjvuMFs" role="2czzBx" />
        <node concept="ljvvj" id="C9ZxjvuNCX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="C9ZxjvuNRC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuNKU" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="C9ZxjvuNZ0">
    <ref role="1XX52x" to="pequ:C9ZxjvugXx" resolve="BHTMainIdea" />
    <node concept="3EZMnI" id="C9ZxjvuO1S" role="2wV5jI">
      <node concept="3F0A7n" id="C9ZxjvuO7i" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="C9ZxjvuO1V" role="2iSdaV" />
      <node concept="3F0ifn" id="C9ZxjvuOf$" role="3EZMnx">
        <property role="3F0ifm" value="on level" />
      </node>
      <node concept="3F0ifn" id="C9ZxjvuOoV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="C9ZxjvuOtX" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:153Db1SlOXW" resolve="label" />
        <node concept="1sVBvm" id="C9ZxjvuOtZ" role="1sWHZn">
          <node concept="3F0A7n" id="C9ZxjvuOxp" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuOCu" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="C9ZxjvuOFR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="C9ZxjvuPbL" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9ZxjvurAp" resolve="subIdea" />
        <node concept="l2Vlx" id="C9ZxjvuPbO" role="2czzBx" />
        <node concept="lj46D" id="C9ZxjvuPW4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuOQE" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="ljvvj" id="C9ZxjvuPHl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuPMu" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="C9ZxjvuQQA">
    <ref role="1XX52x" to="pequ:C9Zxjvufax" resolve="BHTSubIdea" />
    <node concept="3EZMnI" id="C9ZxjvuQTu" role="2wV5jI">
      <node concept="3F0A7n" id="C9ZxjvuQYR" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="30gYXW" id="C9Zxjvvccv" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
        <node concept="3$7fVu" id="C9Zxjvvenb" role="3F10Kt">
          <property role="3$6WeP" value="4" />
          <property role="2hoDZC" value="hQhnRQp/PIXELS" />
        </node>
        <node concept="3$7jql" id="C9ZxjvveD_" role="3F10Kt">
          <property role="3$6WeP" value="4" />
          <property role="2hoDZC" value="hQhnRQp/PIXELS" />
        </node>
      </node>
      <node concept="l2Vlx" id="C9ZxjvuQTx" role="2iSdaV" />
      <node concept="3F0ifn" id="C9ZxjvuR5V" role="3EZMnx">
        <property role="3F0ifm" value="on level" />
      </node>
      <node concept="3F0ifn" id="C9ZxjvuRe4" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="1iCGBv" id="C9ZxjvuRl8" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9Zxjvuprn" resolve="label" />
        <node concept="1sVBvm" id="C9ZxjvuRla" role="1sWHZn">
          <node concept="3F0A7n" id="C9ZxjvuRsF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuS6A" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="C9ZxjvuShL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="C9ZxjvuSPa" role="3EZMnx">
        <ref role="1NtTu8" to="pequ:C9Zxjvur7v" resolve="subSubIdea" />
        <node concept="l2Vlx" id="C9ZxjvuSPd" role="2czzBx" />
        <node concept="ljvvj" id="C9ZxjvuUe2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="C9ZxjvuUhk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="C9ZxjvuUB7" role="3EZMnx">
        <property role="3F0ifm" value="} " />
      </node>
    </node>
  </node>
</model>

