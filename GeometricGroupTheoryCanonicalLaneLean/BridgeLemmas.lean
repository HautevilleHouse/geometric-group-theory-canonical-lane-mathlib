import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse