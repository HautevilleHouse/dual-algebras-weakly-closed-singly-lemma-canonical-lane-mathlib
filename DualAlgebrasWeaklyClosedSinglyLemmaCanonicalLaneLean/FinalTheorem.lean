import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.DualAlgebraGate

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

def ConstrainedDualAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_algebra_endgame (A : AdmissibleClass) : ConstrainedDualAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse