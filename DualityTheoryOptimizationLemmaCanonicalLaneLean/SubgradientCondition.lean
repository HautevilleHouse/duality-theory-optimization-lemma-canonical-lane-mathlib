import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure SubgradientConditionPackage (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) where
  convexPrimalObjective : Prop
  feasibleSetConvex : Prop
  subgradientExists : Prop
  optimalitySubgradientCondition : Prop
  constraintQualification : Prop

structure SubgradientConditionEvidence (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) where
  convexPrimalObjectiveClosed : S.convexPrimalObjective
  feasibleSetConvexClosed : S.feasibleSetConvex
  subgradientExistsClosed : S.subgradientExists
  optimalitySubgradientConditionClosed : S.optimalitySubgradientCondition
  constraintQualificationClosed : S.constraintQualification

def SubgradientConditionClosed (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) : Prop :=
  S.convexPrimalObjective ∧ S.feasibleSetConvex ∧ S.subgradientExists ∧ S.optimalitySubgradientCondition ∧ S.constraintQualification

theorem subgradient_condition_closed_from_evidence (D : DualityGapCorePackage) (L : LagrangianDualityPackage D) (S : SubgradientConditionPackage D L) (E : SubgradientConditionEvidence D L S) :
    SubgradientConditionClosed D L S := by
  exact And.intro E.convexPrimalObjectiveClosed
    (And.intro E.feasibleSetConvexClosed
      (And.intro E.subgradientExistsClosed
        (And.intro E.optimalitySubgradientConditionClosed E.constraintQualificationClosed)))

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse