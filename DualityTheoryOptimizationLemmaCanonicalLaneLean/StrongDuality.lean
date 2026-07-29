import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.WeakDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Strong Duality Package
-/

structure StrongDualityPackage {La : LagrangianDualityPackage}
    (W : WeakDualityPackage La) where
  constraintQualification : Prop
  strongDualityEquality : Prop
  optimalityConditions : Prop

structure StrongDualityEvidence {La : LagrangianDualityPackage}
    {W : WeakDualityPackage La} (S : StrongDualityPackage W) where
  constraintQualificationClosed : S.constraintQualification
  strongDualityEqualityClosed : S.strongDualityEquality
  optimalityConditionsClosed : S.optimalityConditions

def StrongDualityClosed {La : LagrangianDualityPackage}
    {W : WeakDualityPackage La} (S : StrongDualityPackage W) : Prop :=
  S.constraintQualification ∧ S.strongDualityEquality ∧ S.optimalityConditions

theorem strong_duality_closed_from_evidence
    {La : LagrangianDualityPackage} {W : WeakDualityPackage La}
    (S : StrongDualityPackage W) (E : StrongDualityEvidence S) :
    StrongDualityClosed S := by
  exact And.intro E.constraintQualificationClosed
    (And.intro E.strongDualityEqualityClosed E.optimalityConditionsClosed)

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse