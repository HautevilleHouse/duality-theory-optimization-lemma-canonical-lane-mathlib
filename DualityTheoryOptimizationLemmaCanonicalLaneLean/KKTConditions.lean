import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.LagrangianDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Karush-Kuhn-Tucker Conditions Package
-/

structure KKTConditionsPackage {P : LagrangianDualityPackage} where
  primalOptimal : P.primalSpace
  dualOptimal : P.dualSpace
  stationarity : Prop
  complementarySlackness : Prop
  primalFeasibility : Prop
  dualFeasibility : Prop

structure KKTConditionsEvidence {P : LagrangianDualityPackage}
    (K : KKTConditionsPackage P) where
  stationarityClosed : K.stationarity
  complementarySlacknessClosed : K.complementarySlackness
  primalFeasibilityClosed : K.primalFeasibility
  dualFeasibilityClosed : K.dualFeasibility

def KKTConditionsClosed {P : LagrangianDualityPackage}
    (K : KKTConditionsPackage P) : Prop :=
  K.stationarity ∧ K.complementarySlackness ∧ K.primalFeasibility ∧ K.dualFeasibility

theorem kkt_conditions_closed_from_evidence
    {P : LagrangianDualityPackage} (K : KKTConditionsPackage P)
    (E : KKTConditionsEvidence K) : KKTConditionsClosed K := by
  exact And.intro E.stationarityClosed
    (And.intro E.complementarySlacknessClosed
      (And.intro E.primalFeasibilityClosed E.dualFeasibilityClosed))

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse