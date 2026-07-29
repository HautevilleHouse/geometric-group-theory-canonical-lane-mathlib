import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure QuasiIsometryPackage (X : Type u) [MetricSpace X] (Y : Type v) [MetricSpace Y] where
  map : X → Y
  quasiIsometricConstants : ℝ × ℝ
  quasiIsometricBounds : Prop
  coarseInverse : Y → X
  coarseInverseBounds : Prop
  quasiIsometricBoundsClosed : quasiIsometricBounds
  coarseInverseBoundsClosed : coarseInverseBounds

structure QuasiIsometryEvidence {X : Type u} [MetricSpace X] {Y : Type v} [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) where
  quasiIsometricBoundsClosed : Q.quasiIsometricBounds
  coarseInverseBoundsClosed : Q.coarseInverseBounds

def QuasiIsometryClosed {X : Type u} [MetricSpace X] {Y : Type v} [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) : Prop :=
  Q.quasiIsometricBounds ∧ Q.coarseInverseBounds

theorem quasi_isometry_closed_from_evidence {X : Type u} [MetricSpace X] {Y : Type v} [MetricSpace Y]
    (Q : QuasiIsometryPackage X Y) (E : QuasiIsometryEvidence Q) : QuasiIsometryClosed Q :=
  And.intro E.quasiIsometricBoundsClosed E.coarseInverseBoundsClosed

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse