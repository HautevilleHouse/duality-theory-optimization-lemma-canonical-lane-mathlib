import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.LagrangianDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Slater Condition Package
-/

structure SlaterConditionPackage {P : LagrangianDualityPackage} where
  strictlyFeasiblePoint : P.primalSpace
  strictlyFeasible : P.constraintFunction strictlyFeasiblePoint < 0
  slaterConditionHolds : Prop

structure SlaterConditionEvidence {P : LagrangianDualityPackage}
    (S : SlaterConditionPackage P) where
  strictlyFeasibleClosed : S.strictlyFeasible
  slaterConditionHoldsClosed : S.slaterConditionHolds

def SlaterConditionClosed {P : LagrangianDualityPackage}
    (S : SlaterConditionPackage P) : Prop :=
  S.strictlyFeasible ∧ S.slaterConditionHolds

theorem slater_condition_closed_from_evidence
    {P : LagrangianDualityPackage} (S : SlaterConditionPackage P)
    (E : SlaterConditionEvidence S) : SlaterConditionClosed S := by
  exact And.intro E.strictlyFeasibleClosed E.slaterConditionHoldsClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse