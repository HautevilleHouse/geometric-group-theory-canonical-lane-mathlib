import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure FølnerSequence (G : Type u) [Group G] [DiscreteTopology G] where
  F : ℕ → Set G
  nonempty : ∀ n, F n ≠ ∅
  finite : ∀ n, Set.Finite (F n)
  invariant : ∀ g : G, limsup (|F n Δ (g • F n)| / |F n|) = 0

def Amenable (G : Type u) [Group G] [DiscreteTopology G] : Prop :=
  ∃ (F : FølnerSequence G), True

structure GrowthFunction (G : Type u) [Group G] [FinitelyGenerated G] where
  S : Set G  -- finite symmetric generating set
  growth : ℕ → ℕ
  growth_eq : ∀ n, growth n = |{g ∈ G : wordLength S g ≤ n}|
  growthType : (ℕ → ℕ) → Prop  -- exponential, polynomial, etc.

def PolynomialGrowth (G : Type u) [Group G] [FinitelyGenerated G] : Prop :=
  ∃ (C d : ℕ), ∀ n, growth G n ≤ C * n^d

def ExponentialGrowth (G : Type u) [Group G] [FinitelyGenerated G] : Prop :=
  ∃ (c > 1), ∀ n, growth G n ≥ c^n

end HautevilleHouse
end GeometricGroupTheoryCanonicalLaneLean