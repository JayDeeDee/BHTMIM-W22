package BHTMindMap.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class BHTRootIdea_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.mainIdea$Juf3)) {
      tgs.appendNode(item);
    }
    tgs.newLine();
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink mainIdea$Juf3 = MetaAdapterFactory.getContainmentLink(0xbbb766b466e54907L, 0xa8925f51afe0212dL, 0xa09fe14df78d6c9L, 0xa09fe14df79a26dL, "mainIdea");
  }
}
