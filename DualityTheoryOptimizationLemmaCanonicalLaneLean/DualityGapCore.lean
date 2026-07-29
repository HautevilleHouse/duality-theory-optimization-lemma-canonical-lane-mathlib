import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure DualityGapCorePackage where
  primalProblem : Prop
  dualProblem : Prop
  weakDualityHolds : Prop
  strongDualityCondition : Prop
  gapCharacterization : Prop

structure DualityGapCoreEvidence (D : DualityGapCorePackage) where
  primalProblemClosed : D.primalProblem
  dualProblemClosed : D.dualProblem
  weakDualityHoldsClosed : D.weakDualityHolds
  strongDualityConditionClosed : D.strongDualityCondition
  gapCharacterizationClosed : D.gapCharacterization

def DualityGapCoreClosed (D : DualityGapCorePackage) : Prop :=
  D.primalProblem ∧ D.dualProblem ∧ D.weakDualityHolds ∧ D.strongDualityCondition ∧ D.gapCharacterization

theorem duality_gap_core_closed_from_evidence (D : DualityGapCorePackage) (E : DualityGapCoreEvidence D) :
    DualityGapCoreClosed D := by
  exact And.intro E.primalProblemClosed
    (And.intro E.dualProblemClosed
      (And.intro E.weakDualityHoldsClosed
        (And.intro E.strongDualityConditionClosed E.gapCharacterizationClosed)))

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse