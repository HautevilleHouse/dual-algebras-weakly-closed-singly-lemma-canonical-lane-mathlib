import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure DualAlgebraAnalyticFoundation where
  dualAlgebra : Prop
  weakClosure : Prop
  singlyGenerated : Prop
  dualAlgebraEvidence : dualAlgebra
  weakClosureEvidence : weakClosure
  singlyGeneratedEvidence : singlyGenerated

def DualAlgebraFoundationClosed (A : DualAlgebraAnalyticFoundation) : Prop :=
  A.dualAlgebra ∧ A.weakClosure ∧ A.singlyGenerated

theorem dual_algebra_foundation_closed (A : DualAlgebraAnalyticFoundation) :
    DualAlgebraFoundationClosed A := by
  exact And.intro A.dualAlgebraEvidence (And.intro A.weakClosureEvidence A.singlyGeneratedEvidence)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse