import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryOptimizationLemmaCanonicalLaneLean.StrongDuality

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

/-!
# Duality Lemma Package
-/

structure DualityLemmaPackage {La : LagrangianDualityPackage}
    (S : StrongDualityPackage (W : WeakDualityPackage La)) where
  lemmaStatement : Prop

structure DualityLemmaEvidence {La : LagrangianDualityPackage}
    {W : WeakDualityPackage La} {S : StrongDualityPackage W}
    (D : DualityLemmaPackage S) where
  lemmaStatementClosed : D.lemmaStatement

def DualityLemmaClosed {La : LagrangianDualityPackage}
    {W : WeakDualityPackage La} {S : StrongDualityPackage W}
    (D : DualityLemmaPackage S) : Prop :=
  D.lemmaStatement

theorem duality_lemma_closed_from_evidence
    {La : LagrangianDualityPackage} {W : WeakDualityPackage La}
    {S : StrongDualityPackage W} (D : DualityLemmaPackage S)
    (E : DualityLemmaEvidence D) : DualityLemmaClosed D := by
  exact E.lemmaStatementClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse