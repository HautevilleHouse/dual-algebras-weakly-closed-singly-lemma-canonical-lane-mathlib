import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

structure DualAlgebraSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualAlgebraAdmittedObject where
  space : DualAlgebraSpace
  dualAlgebra : Prop
  weaklyClosed : Prop
  singlyGenerated : Prop
  conclusion : dualAlgebra ∧ weaklyClosed ∧ singlyGenerated

structure DualAlgebraEndgameState where
  object : DualAlgebraAdmittedObject

def DualAlgebraWitnessClosed (O : DualAlgebraAdmittedObject) : Prop :=
  O.conclusion

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse