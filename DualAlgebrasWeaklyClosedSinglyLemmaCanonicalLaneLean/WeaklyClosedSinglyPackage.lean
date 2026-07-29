import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.DualAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure WeaklyClosedSinglyPackage (A : AdmissibleClass) where
  algebra : Type u
  representation : Type v
  weaklyClosed : Prop
  singlyLemma : Prop

structure WeaklyClosedSinglyEvidence (A : AdmissibleClass) (W : WeaklyClosedSinglyPackage A) where
  weaklyClosedClosed : W.weaklyClosed
  singlyLemmaClosed : W.singlyLemma

def WeaklyClosedSinglyClosed (A : AdmissibleClass) (W : WeaklyClosedSinglyPackage A) : Prop :=
  W.weaklyClosed ∧ W.singlyLemma

theorem weakly_closed_singly_closed_from_evidence (A : AdmissibleClass) (W : WeaklyClosedSinglyPackage A) (E : WeaklyClosedSinglyEvidence A W) : WeaklyClosedSinglyClosed A W := by
  exact And.intro E.weaklyClosedClosed E.singlyLemmaClosed

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse