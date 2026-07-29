import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.DualAlgebrasPackage

/-!
# MASA (Maximal Abelian Subalgebra) and Bidual Structure
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure MASAAndBidualPackage {P : DualAlgebrasPackage} where
  masa : Type u
  inclusion : masa → P.dualAlgebra
  maximalAbelian : Prop
  bidualRepresentation : Prop
  doubleCommutantTheorem : Prop

structure MASAAndBidualEvidence {P : DualAlgebrasPackage} (M : MASAAndBidualPackage P) where
  masaClosed : M.maximalAbelian
  bidualRepresentationClosed : M.bidualRepresentation
  doubleCommutantTheoremClosed : M.doubleCommutantTheorem

def MASAAndBidualClosed {P : DualAlgebrasPackage} (M : MASAAndBidualPackage P) : Prop :=
  M.maximalAbelian ∧ M.bidualRepresentation ∧ M.doubleCommutantTheorem

theorem masa_and_bidual_closed_from_evidence
    {P : DualAlgebrasPackage} (M : MASAAndBidualPackage P)
    (E : MASAAndBidualEvidence M) : MASAAndBidualClosed M := by
  exact And.intro E.masaClosed (And.intro E.bidualRepresentationClosed E.doubleCommutantTheoremClosed)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse