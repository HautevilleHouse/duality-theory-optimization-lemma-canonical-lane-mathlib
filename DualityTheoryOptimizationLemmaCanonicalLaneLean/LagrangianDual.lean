import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryOptimizationLemmaCanonicalLaneLean

structure LagrangianDual where
  primalFunction : Float → Float
  dualFunction : Float → Float
  lagrangian : Float → Float → Float
  saddlePointExists : Prop
  lagrangianDualProperty : Prop
  saddlePointExistsClosed : saddlePointExists
  lagrangianDualPropertyClosed : lagrangianDualProperty

def LagrangianDualClosed (L : LagrangianDual) : Prop :=
  L.saddlePointExists ∧ L.lagrangianDualProperty

theorem lagrangian_dual_closed_from_evidence (L : LagrangianDual) : LagrangianDualClosed L :=
  And.intro L.saddlePointExistsClosed L.lagrangianDualPropertyClosed

end DualityTheoryOptimizationLemmaCanonicalLaneLean
end HautevilleHouse
