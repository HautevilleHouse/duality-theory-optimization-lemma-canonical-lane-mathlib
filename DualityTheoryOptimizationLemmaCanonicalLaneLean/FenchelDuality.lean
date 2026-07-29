import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure FenchelDuality where
  primalFunction : Float → Float
  convexConjugate : Float → Float
  fenchelYoungInequality : Prop
  fenchelDualityTheorem : Prop
  fenchelYoungClosed : fenchelYoungInequality
  fenchelDualityClosed : fenchelDualityTheorem

def FenchelDualityClosed (F : FenchelDuality) : Prop :=
  F.fenchelYoungInequality ∧ F.fenchelDualityTheorem

theorem fenchel_duality_closed_from_evidence (F : FenchelDuality) : FenchelDualityClosed F :=
  And.intro F.fenchelYoungClosed F.fenchelDualityClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse
