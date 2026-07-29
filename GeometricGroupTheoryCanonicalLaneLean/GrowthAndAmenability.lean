import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupTheoryCanonicalLaneLean

structure GrowthPackage (G : Type u) [Group G] [Fintype G] where
  generatingSet : Finset G
  growthFunction : ℕ → ℕ
  growthClosed : Prop
  polynomialGrowth : Prop
  exponentialGrowth : Prop
  growthClosedTerm : growthClosed

def GrowthClosed {G : Type u} [Group G] [Fintype G] (Gr : GrowthPackage G) : Prop :=
  Gr.growthClosed

theorem growth_closed_trivial {G : Type u} [Group G] [Fintype G] (Gr : GrowthPackage G) : GrowthClosed Gr :=
  Gr.growthClosedTerm

end GeometricGroupTheoryCanonicalLaneLean
end HautevilleHouse