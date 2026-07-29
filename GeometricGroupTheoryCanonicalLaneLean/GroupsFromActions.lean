import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure GroupAction (G : Type u) (X : Type v) where
  act : G → X → X
  act_one : act 1 = id
  act_mul : ∀ g h x, act (g * h) x = act g (act h x)

structure CayleyGraph (G : Type u) [Group G] (S : Set G) where
  vertices : Set G
  edges : G → G → Prop
  edge_iff : ∀ g h, edges g h ↔ h ∈ S * {g}

structure QuasiIsometry (X Y : Type u) [MetricSpace X] [MetricSpace Y] where
  f : X → Y
  constants : ℝ × ℝ
  bilipschitz : ∀ x y, (1 / constants.2) * dist x y - constants.1 ≤ dist (f x) (f y) ∧ dist (f x) (f y) ≤ constants.2 * dist x y + constants.1
  cobounded : ∀ y, ∃ x, dist (f x) y ≤ constants.1

structure QuasiIsometryInvariant (P : Type u → Prop) : Prop where
  invariant : ∀ (X Y : Type u) [MetricSpace X] [MetricSpace Y], (QuasiIsometry X Y).Nonempty → (P X ↔ P Y)

end HautevilleHouse
end GeometricGroupTheoryCanonicalLaneLean