import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure WeaklyClosedSubalgebra (D : DualAlgebraPackage) where
  subalgebra : Set D.carrier
  closedUnderProduct : ∀ a b, a ∈ subalgebra → b ∈ subalgebra → a * b ∈ subalgebra
  closedUnderInvolution : ∀ a, a ∈ subalgebra → D.dualAlgebra.involution a ∈ subalgebra

structure WeaklyClosedPackage (D : DualAlgebraPackage) where
  subalgebra : WeaklyClosedSubalgebra D
  containsOne : (1 : D.carrier) ∈ subalgebra.subalgebra
  nonempty : subalgebra.subalgebra.Nonempty

structure WeaklyClosedEvidence {D : DualAlgebraPackage} (W : WeaklyClosedPackage D) where
  closedUnderProductClosed : ∀ a b, a ∈ W.subalgebra.subalgebra → b ∈ W.subalgebra.subalgebra → a * b ∈ W.subalgebra.subalgebra
  closedUnderInvolutionClosed : ∀ a, a ∈ W.subalgebra.subalgebra → D.dualAlgebra.involution a ∈ W.subalgebra.subalgebra
  containsOneClosed : (1 : D.carrier) ∈ W.subalgebra.subalgebra

def WeaklyClosedClosed {D : DualAlgebraPackage} (W : WeaklyClosedPackage D) : Prop :=
  (∀ a b, a ∈ W.subalgebra.subalgebra → b ∈ W.subalgebra.subalgebra → a * b ∈ W.subalgebra.subalgebra) ∧
  (∀ a, a ∈ W.subalgebra.subalgebra → D.dualAlgebra.involution a ∈ W.subalgebra.subalgebra) ∧
  ((1 : D.carrier) ∈ W.subalgebra.subalgebra)

theorem weakly_closed_closed_from_evidence {D : DualAlgebraPackage} (W : WeaklyClosedPackage D) (E : WeaklyClosedEvidence W) : WeaklyClosedClosed W := by
  exact And.intro E.closedUnderProductClosed (And.intro E.closedUnderInvolutionClosed E.containsOneClosed)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse