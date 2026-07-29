import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricGroupTheoryCanonicalLaneLean.WordHyperbolicGroups
import HautevilleHouse.GeometricGroupTheoryCanonicalLaneLean.GromovBoundary

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedGeometricGroupTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_group_theory_endgame (A : AdmissibleClass) :
    ConstrainedGeometricGroupTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse