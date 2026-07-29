import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.GateLemmas

/-!
# Dual Algebras Weakly Closed Singly Lemma
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure DualAlgebrasPackage where
  dualAlgebra : Type u
  multiplication : dualAlgebra → dualAlgebra → dualAlgebra
  involution : dualAlgebra → dualAlgebra
  norm : dualAlgebra → ℝ
  closedUnderWeakOperatorTopology : Prop
  singleGeneratorEnough : Prop
  spectralTheoremApplied : Prop

def DualAlgebrasClosed (P : DualAlgebrasPackage) : Prop :=
  P.closedUnderWeakOperatorTopology ∧ P.singleGeneratorEnough ∧ P.spectralTheoremApplied

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse