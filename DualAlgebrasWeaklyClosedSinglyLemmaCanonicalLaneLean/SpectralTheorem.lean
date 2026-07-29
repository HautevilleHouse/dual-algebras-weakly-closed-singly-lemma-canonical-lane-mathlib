import DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean.SinglyGeneratedStructure

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure SpectralTheoremPackage (S : SinglyGeneratedDualAlgebra A) where
  spectralMeasure : A → ℝ
  functionalCalculus : Prop
  spectralRepresentation : Prop
  measureSupportOnSpectrum : Prop

structure SpectralTheoremEvidence (S : SinglyGeneratedDualAlgebra A) (P : SpectralTheoremPackage S) where
  functionalCalculusClosed : P.functionalCalculus
  spectralRepresentationClosed : P.spectralRepresentation
  measureSupportClosed : P.measureSupportOnSpectrum

def SpectralTheoremClosed (S : SinglyGeneratedDualAlgebra A) (P : SpectralTheoremPackage S) : Prop :=
  P.functionalCalculus ∧ P.spectralRepresentation ∧ P.measureSupportOnSpectrum

theorem spectral_theorem_closed_from_evidence (S : SinglyGeneratedDualAlgebra A) (P : SpectralTheoremPackage S) (E : SpectralTheoremEvidence S P) : SpectralTheoremClosed S P := by
  exact And.intro E.functionalCalculusClosed (And.intro E.spectralRepresentationClosed E.measureSupportClosed)

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse