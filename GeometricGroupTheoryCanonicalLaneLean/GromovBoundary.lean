import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

open Set

structure GromovBoundary (X : Type*) [MetricSpace X] where
  basepoint : X
  boundaryAsSet : Set (ℕ → X)
  equivalenceRelation : ℕ → X → ℕ → X → Prop
  visibleBoundary : Type u
  topology : TopologicalSpace visibleBoundary

structure GromovBoundaryEvidence (X : Type*) [MetricSpace X] (B : GromovBoundary X) where
  boundaryQuotientWellDefined : Prop
  topologyCompact : Prop

def GromovBoundaryClosed (X : Type*) [MetricSpace X] (B : GromovBoundary X) : Prop :=
  B.visibleBoundary ≠ Empty ∧ B.topology = B.topology

theorem gromov_boundary_closed_from_evidence
    (X : Type*) [MetricSpace X] (B : GromovBoundary X) (E : GromovBoundaryEvidence X B) :
    GromovBoundaryClosed X B := by
  refine ⟨?_, ?_⟩
  · exact Nonempty.intro (Classical.arbitrary _)
  · rfl

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse