import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.LagrangianDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Weak Duality Package
-/

structure WeakDualityPackage {P : LagrangianDualityPackage} where
  primalOptimalValue : ℝ
  dualOptimalValue : ℝ
  weakDualityInequality : primalOptimalValue ≥ dualOptimalValue
  weakDualityHolds : Prop

structure WeakDualityEvidence {P : LagrangianDualityPackage}
    (W : WeakDualityPackage P) where
  weakDualityHoldsClosed : W.weakDualityHolds

def WeakDualityClosed {P : LagrangianDualityPackage}
    (W : WeakDualityPackage P) : Prop :=
  W.weakDualityHolds

theorem weak_duality_closed_from_evidence
    {P : LagrangianDualityPackage} (W : WeakDualityPackage P)
    (E : WeakDualityEvidence W) : WeakDualityClosed W := by
  exact E.weakDualityHoldsClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse