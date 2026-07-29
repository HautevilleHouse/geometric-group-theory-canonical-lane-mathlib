import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse