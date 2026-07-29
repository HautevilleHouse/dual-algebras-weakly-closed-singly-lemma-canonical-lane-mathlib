import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.SinglyGeneratedLemma

/-!
# Weak Closure Bridge Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure WeakClosureBridgePackage {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    {S : SinglyGeneratedLemmaPackage E} (Ev : SinglyGeneratedLemmaEvidence S) where
  weakClosureContainsGenerator : Prop
  strongClosureComparison : Prop
  closureIsAlgebra : Prop
  closureIsSinglyGenerated : Prop

structure WeakClosureBridgeEvidence {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    {S : SinglyGeneratedLemmaPackage E} {Ev : SinglyGeneratedLemmaEvidence S}
    (W : WeakClosureBridgePackage Ev) where
  weakClosureContainsGeneratorClosed : W.weakClosureContainsGenerator
  strongClosureComparisonClosed : W.strongClosureComparison
  closureIsAlgebraClosed : W.closureIsAlgebra
  closureIsSinglyGeneratedClosed : W.closureIsSinglyGenerated

def WeakClosureBridgeClosed {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    {S : SinglyGeneratedLemmaPackage E} {Ev : SinglyGeneratedLemmaEvidence S}
    (W : WeakClosureBridgePackage Ev) : Prop :=
  W.weakClosureContainsGenerator ∧ W.strongClosureComparison ∧
  W.closureIsAlgebra ∧ W.closureIsSinglyGenerated

theorem weak_closure_bridge_closed_from_evidence
    {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    {S : SinglyGeneratedLemmaPackage E} {Ev : SinglyGeneratedLemmaEvidence S}
    (W : WeakClosureBridgePackage Ev) (We : WeakClosureBridgeEvidence W) :
    WeakClosureBridgeClosed W := by
  exact And.intro We.weakClosureContainsGeneratorClosed
    (And.intro We.strongClosureComparisonClosed
      (And.intro We.closureIsAlgebraClosed We.closureIsSinglyGeneratedClosed))

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse