import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure DualAlgebra (A : Type u) [Ring A] where
  involution : A → A
  involution_involutive : ∀ a, involution (involution a) = a
  involution_antiautomorphism : ∀ a b, involution (a * b) = involution b * involution a

structure DualAlgebraPackage where
  carrier : Type u
  ring : Ring carrier
  dualAlgebra : DualAlgebra carrier
  unital : Prop
  unitalTerm : unital

structure DualAlgebraEvidence (D : DualAlgebraPackage) where
  involutionInvolutiveClosed : ∀ a : D.carrier, D.dualAlgebra.involution (D.dualAlgebra.involution a) = a
  involutionAntiautomorphismClosed : ∀ a b : D.carrier, D.dualAlgebra.involution (a * b) = D.dualAlgebra.involution b * D.dualAlgebra.involution a

def DualAlgebraClosed (D : DualAlgebraPackage) : Prop :=
  D.unital ∧ ∀ a : D.carrier, D.dualAlgebra.involution (D.dualAlgebra.involution a) = a ∧ ∀ a b : D.carrier, D.dualAlgebra.involution (a * b) = D.dualAlgebra.involution b * D.dualAlgebra.involution a

theorem dual_algebra_closed_from_evidence (D : DualAlgebraPackage) (E : DualAlgebraEvidence D) : DualAlgebraClosed D := by
  refine And.intro D.unitalTerm ?_
  intro a
  exact And.intro (E.involutionInvolutiveClosed a) (E.involutionAntiautomorphismClosed a)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse