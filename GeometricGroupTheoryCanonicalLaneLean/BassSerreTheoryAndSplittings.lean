import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure BassSerreSplittingPackage where
  group : Type u
  tree : Type v
  actionOnTree : group → tree → tree
  edgeSet : Set (tree × tree)
  vertexSet : Set tree
  quotientGraph : Type w
  splittingIsA : Prop

structure BassSerreEvidence (B : BassSerreSplittingPackage) where
  actionIsIsometric : Prop
  splittingIsAClosed : B.splittingIsA

def BassSerreClosed (B : BassSerreSplittingPackage) : Prop :=
  B.splittingIsA

theorem bass_serre_closed_from_evidence (B : BassSerreSplittingPackage) (E : BassSerreEvidence B) :
    BassSerreClosed B := by
  exact E.splittingIsAClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse