import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.DualityLemma

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_endgame (A : AdmissibleClass) :
    ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse