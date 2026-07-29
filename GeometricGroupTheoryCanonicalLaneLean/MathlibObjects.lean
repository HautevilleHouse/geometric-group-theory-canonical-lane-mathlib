import GeometricGroupTheoryCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GGTAdmittedObject where
  group : Type
  groupMultiplication : group → group → group
  groupIdentity : group
  groupInverse : group → group
  finitelyGenerated : Prop
  wordProblemSolvable : Prop
  conclusion : finitelyGenerated ∧ wordProblemSolvable

def GGTWitnessClosed (O : GGTAdmittedObject) : Prop :=
  O.finitelyGenerated ∧ O.wordProblemSolvable

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse