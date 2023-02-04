package BHTMindMap.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptBHTIdea = createDescriptorForBHTIdea();
  /*package*/ final ConceptDescriptor myConceptBHTLabel = createDescriptorForBHTLabel();
  /*package*/ final ConceptDescriptor myConceptBHTMainIdea = createDescriptorForBHTMainIdea();
  /*package*/ final ConceptDescriptor myConceptBHTMindMap = createDescriptorForBHTMindMap();
  /*package*/ final ConceptDescriptor myConceptBHTRootIdea = createDescriptorForBHTRootIdea();
  /*package*/ final ConceptDescriptor myConceptBHTSubIdea = createDescriptorForBHTSubIdea();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptBHTIdea, myConceptBHTLabel, myConceptBHTMainIdea, myConceptBHTMindMap, myConceptBHTRootIdea, myConceptBHTSubIdea);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.BHTIdea:
        return myConceptBHTIdea;
      case LanguageConceptSwitch.BHTLabel:
        return myConceptBHTLabel;
      case LanguageConceptSwitch.BHTMainIdea:
        return myConceptBHTMainIdea;
      case LanguageConceptSwitch.BHTMindMap:
        return myConceptBHTMindMap;
      case LanguageConceptSwitch.BHTRootIdea:
        return myConceptBHTRootIdea;
      case LanguageConceptSwitch.BHTSubIdea:
        return myConceptBHTSubIdea;
      default:
        return null;
    }
  }


  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForBHTIdea() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTIdea", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78a584L);
    b.class_(false, true, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771702148");
    b.version(3);
    b.associate("label", 0xa09fe14df7996d7L).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df792c06L).optional(true).origin("723388580771763927").done();
    b.alias("idea");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBHTLabel() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTLabel", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df792c06L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771736582");
    b.version(3);
    b.alias("label for ideas");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBHTMainIdea() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTMainIdea", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df790f61L);
    b.class_(false, false, false);
    // extends: BHTMindMap.structure.BHTIdea
    b.super_(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78a584L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771729249");
    b.version(3);
    b.aggregate("subIdea", 0xa09fe14df79b999L).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78f2a1L).optional(true).ordered(true).multiple(true).origin("723388580771772825").done();
    b.alias("main idea ");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBHTMindMap() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTMindMap", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df788159L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771692889");
    b.version(3);
    b.aggregate("label", 0xa09fe14df7989b8L).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df792c06L).optional(true).ordered(true).multiple(true).origin("723388580771760568").done();
    b.aggregate("rootIdea", 0xa09fe14df798e66L).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78d6c9L).optional(true).ordered(true).multiple(false).origin("723388580771761766").done();
    b.alias("mindmap");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBHTRootIdea() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTRootIdea", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78d6c9L);
    b.class_(false, false, false);
    // extends: BHTMindMap.structure.BHTIdea
    b.super_(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78a584L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771714761");
    b.version(3);
    b.aggregate("mainIdea", 0xa09fe14df79a26dL).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df790f61L).optional(true).ordered(true).multiple(true).origin("723388580771766893").done();
    b.alias("central idea");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForBHTSubIdea() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("BHTMindMap", "BHTSubIdea", 0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78f2a1L);
    b.class_(false, false, false);
    // extends: BHTMindMap.structure.BHTIdea
    b.super_(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78a584L);
    b.origin("r:62804b7b-4c86-48e6-a3e7-10065db00a7d(BHTMindMap.structure)/723388580771721889");
    b.version(3);
    b.aggregate("subSubIdea", 0xa09fe14df79b1dfL).target(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78f2a1L).optional(true).ordered(true).multiple(true).origin("723388580771770847").done();
    b.alias("sub idea");
    return b.create();
  }
}