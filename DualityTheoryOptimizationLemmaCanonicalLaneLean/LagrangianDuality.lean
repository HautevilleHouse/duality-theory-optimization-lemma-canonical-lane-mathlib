import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Lagrangian Duality Package
-/

structure LagrangianDualityPackage where
  primalSpace : Type u
  dualSpace : Type v
  objectiveFunction : primalSpace → ℝ
  constraintFunction : primalSpace → ℝ
  lagrangian : primalSpace → dualSpace → ℝ
  dualFunction : dualSpace → ℝ
  lagrangianDefined : Prop
  dualFunctionDefined : Prop

structure LagrangianDualityEvidence (P : LagrangianDualityPackage) where
  lagrangianDefinedClosed : P.lagrangianDefined
  dualFunctionDefinedClosed : P.dualFunctionDefined

def LagrangianDualityClosed (P : LagrangianDualityPackage) : Prop :=
  P.lagrangianDefined ∧ P.dualFunctionDefined

theorem lagrangian_duality_closed_from_evidence
    (P : LagrangianDualityPackage) (E : LagrangianDualityEvidence P) :
    LagrangianDualityClosed P := by
  exact And.intro E.lagrangianDefinedClosed E.dualFunctionDefinedClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse