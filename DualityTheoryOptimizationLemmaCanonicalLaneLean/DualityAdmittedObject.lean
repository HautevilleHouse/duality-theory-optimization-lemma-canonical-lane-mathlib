import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure DualitySpace where
  primalSpace : Type
  dualSpace : Type
  pairing : primalSpace → dualSpace → ℝ

structure DualityAdmittedObject where
  space : DualitySpace
  primalFeasible : Prop
  dualFeasible : Prop
  optimalValue : ℝ
  conclusion : primalFeasible ∧ dualFeasible

def DualityWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.primalFeasible ∧ O.dualFeasible

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse
