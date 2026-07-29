import DualityTheoryOptimizationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dualityProjection : Projection DualityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem duality_projection_idempotent (x : DualityEndgameState) :
    dualityProjection.toFun (dualityProjection.toFun x) = dualityProjection.toFun x := by
  exact dualityProjection.idempotent x

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse