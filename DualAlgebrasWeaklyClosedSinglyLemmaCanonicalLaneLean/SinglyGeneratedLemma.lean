import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.DualAlgebraStructure

/-!
# Singly Generated Lemma Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure SinglyGeneratedLemmaPackage {D : DualAlgebraPackage} (E : DualAlgebraEvidence D) where
  generatorExists : Prop
  cyclicVectorExists : Prop
  spectralMeasuresDefined : Prop
  commutantTrivial : Prop

structure SinglyGeneratedLemmaEvidence {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    (S : SinglyGeneratedLemmaPackage E) where
  generatorExistsClosed : S.generatorExists
  cyclicVectorExistsClosed : S.cyclicVectorExists
  spectralMeasuresDefinedClosed : S.spectralMeasuresDefined
  commutantTrivialClosed : S.commutantTrivial

def SinglyGeneratedLemmaClosed {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    (S : SinglyGeneratedLemmaPackage E) : Prop :=
  S.generatorExists ∧ S.cyclicVectorExists ∧ S.spectralMeasuresDefined ∧ S.commutantTrivial

theorem singly_generated_lemma_closed_from_evidence
    {D : DualAlgebraPackage} {E : DualAlgebraEvidence D}
    (S : SinglyGeneratedLemmaPackage E) (Ev : SinglyGeneratedLemmaEvidence S) :
    SinglyGeneratedLemmaClosed S := by
  exact And.intro Ev.generatorExistsClosed
    (And.intro Ev.cyclicVectorExistsClosed
      (And.intro Ev.spectralMeasuresDefinedClosed Ev.commutantTrivialClosed))

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse