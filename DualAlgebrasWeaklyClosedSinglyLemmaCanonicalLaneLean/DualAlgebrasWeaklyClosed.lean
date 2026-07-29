import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure WeaklyClosedDualAlgebra (A : Type) where
  algebraStructure : A → A → A
  involution : A → A
  weakClosure : Set (A → A) → Set (A → A)
  closureUnderWeakTopology : Prop
  invariantUnderAdjoint : Prop
  containsIdentity : Prop
  containsCompactOperators : Prop

structure WeaklyClosedDualAlgebraAdmittedObject (A : Type) where
  algebra : WeaklyClosedDualAlgebra A
  singleGeneration : Prop
  generationLemma : Prop
  conclusion : generationLemma

def WeaklyClosedDualAlgebraWitnessClosed (O : WeaklyClosedDualAlgebraAdmittedObject A) : Prop :=
  O.generationLemma

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse