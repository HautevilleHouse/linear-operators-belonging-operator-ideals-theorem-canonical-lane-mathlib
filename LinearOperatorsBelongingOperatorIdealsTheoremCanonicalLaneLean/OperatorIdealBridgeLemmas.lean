import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdeals

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let I := A.object.operatorIdeal
  OperatorIdealClosed I

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.idealPropertyBridge

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse