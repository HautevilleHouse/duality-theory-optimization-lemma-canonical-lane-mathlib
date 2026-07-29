import DualityTheoryOptimizationLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Dual Problem Package
-/

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure DualProblemPackage where
  primalObjective : Type u
  dualObjective : Type v
  lagrangian : Type w
  weakDuality : Prop
  strongDuality : Prop

structure DualProblemEvidence (P : DualProblemPackage) where
  weakDualityClosed : P.weakDuality
  strongDualityClosed : P.strongDuality

def DualProblemClosed (P : DualProblemPackage) : Prop :=
  P.weakDuality ∧ P.strongDuality

theorem dual_problem_closed_from_evidence (P : DualProblemPackage) (E : DualProblemEvidence P) :
    DualProblemClosed P := by
  exact And.intro E.weakDualityClosed E.strongDualityClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse