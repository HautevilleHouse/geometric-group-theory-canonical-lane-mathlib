import canonicalLaneMathlib
import GeometricGroupTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "geometric-group-theory-canonical-lane"

def sourceDescription : String := "geometric-group-theory"

def sourceTheoremBoundary : String := "The boundary of the theorem is the word problem and the geodesic growth function."

def theoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary,
    manifoldConstrainedStatement := "The word problem is solvable for hyperbolic groups.",
    certificateLane := "manifold_constrained",
    carriedRemainder := "The general word problem for finitely presented groups remains carried out."
  }

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse