import DualityTheoryOptimizationLemmaCanonicalLaneLean.DualProblem

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure SaddlePointPackage {P : DualProblemPackage} where
  primalFeasible : Prop
  dualFeasible : Prop
  lagrangianOptimal : Prop
  saddlePointExistence : Prop

structure SaddlePointEvidence {P : DualProblemPackage} (S : SaddlePointPackage P) where
  primalFeasibleClosed : S.primalFeasible
  dualFeasibleClosed : S.dualFeasible
  lagrangianOptimalClosed : S.lagrangianOptimal
  saddlePointExistenceClosed : S.saddlePointExistence

def SaddlePointClosed {P : DualProblemPackage} (S : SaddlePointPackage P) : Prop :=
  S.primalFeasible ∧ S.dualFeasible ∧ S.lagrangianOptimal ∧ S.saddlePointExistence

theorem saddle_point_closed_from_evidence {P : DualProblemPackage} (S : SaddlePointPackage P)
    (E : SaddlePointEvidence S) : SaddlePointClosed S := by
  exact And.intro E.primalFeasibleClosed (And.intro E.dualFeasibleClosed (And.intro E.lagrangianOptimalClosed E.saddlePointExistenceClosed))

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse