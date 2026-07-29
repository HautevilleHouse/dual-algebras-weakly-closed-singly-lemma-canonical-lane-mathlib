import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure SinglyGeneratedSubalgebra (D : DualAlgebraPackage) (W : WeaklyClosedPackage D) where
  generator : D.carrier
  selfAdjoint : D.dualAlgebra.involution generator = generator
  minimal : ∀ (S : WeaklyClosedPackage D), generator ∈ S.subalgebra.subalgebra → (∀ x, x ∈ W.subalgebra.subalgebra → x ∈ S.subalgebra.subalgebra)

structure SinglyGeneratedPackage (D : DualAlgebraPackage) (W : WeaklyClosedPackage D) where
  generator : SinglyGeneratedSubalgebra D W
  subalgebraEqualsW : ∀ x, x ∈ W.subalgebra.subalgebra ↔ x ∈ Subalgebra.generated (D.dualAlgebra) {generator.generator}

structure SinglyGeneratedEvidence {D : DualAlgebraPackage} {W : WeaklyClosedPackage D} (S : SinglyGeneratedPackage D W) where
  generatorSelfAdjointClosed : D.dualAlgebra.involution S.generator.generator = S.generator.generator
  minimalClosed : ∀ (S' : WeaklyClosedPackage D), S.generator.generator ∈ S'.subalgebra.subalgebra → (∀ x, x ∈ W.subalgebra.subalgebra → x ∈ S'.subalgebra.subalgebra)
  subalgebraEqualsWClosed : ∀ x, x ∈ W.subalgebra.subalgebra ↔ x ∈ Subalgebra.generated (D.dualAlgebra) {S.generator.generator}

def SinglyGeneratedClosed {D : DualAlgebraPackage} {W : WeaklyClosedPackage D} (S : SinglyGeneratedPackage D W) : Prop :=
  (D.dualAlgebra.involution S.generator.generator = S.generator.generator) ∧
  (∀ (S' : WeaklyClosedPackage D), S.generator.generator ∈ S'.subalgebra.subalgebra → (∀ x, x ∈ W.subalgebra.subalgebra → x ∈ S'.subalgebra.subalgebra)) ∧
  (∀ x, x ∈ W.subalgebra.subalgebra ↔ x ∈ Subalgebra.generated (D.dualAlgebra) {S.generator.generator})

theorem singly_generated_closed_from_evidence {D : DualAlgebraPackage} {W : WeaklyClosedPackage D} (S : SinglyGeneratedPackage D W) (E : SinglyGeneratedEvidence S) : SinglyGeneratedClosed S := by
  exact And.intro E.generatorSelfAdjointClosed (And.intro E.minimalClosed E.subalgebraEqualsWClosed)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse