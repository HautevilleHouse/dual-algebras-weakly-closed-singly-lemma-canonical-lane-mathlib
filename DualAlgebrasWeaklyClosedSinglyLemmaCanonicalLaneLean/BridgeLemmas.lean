import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualAlgebraClosed A.object
theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DualAlgebrasWeaklyClosedSinglyLemmaCanonicalLaneLean
end HautevilleHouse