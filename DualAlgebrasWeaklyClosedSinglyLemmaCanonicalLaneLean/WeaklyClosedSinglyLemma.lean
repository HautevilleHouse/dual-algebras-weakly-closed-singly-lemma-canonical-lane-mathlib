import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure WeaklyClosedSinglyLemmaPackage where
  dualAlgebra : Prop
  weakClosure : Prop
  singleGenerator : Prop
  lemmaStatement : dualAlgebra ∧ weakClosure ∧ singleGenerator

structure WeaklyClosedSinglyEvidence (P : WeaklyClosedSinglyLemmaPackage) where
  dualAlgebraClosed : P.dualAlgebra
  weakClosureClosed : P.weakClosure
  singleGeneratorClosed : P.singleGenerator

def WeaklyClosedSinglyClosed (P : WeaklyClosedSinglyLemmaPackage) : Prop :=
  P.dualAlgebra ∧ P.weakClosure ∧ P.singleGenerator

theorem weakly_closed_singly_closed_from_evidence (P : WeaklyClosedSinglyLemmaPackage)
    (E : WeaklyClosedSinglyEvidence P) : WeaklyClosedSinglyClosed P := by
  exact And.intro E.dualAlgebraClosed (And.intro E.weakClosureClosed E.singleGeneratorClosed)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse