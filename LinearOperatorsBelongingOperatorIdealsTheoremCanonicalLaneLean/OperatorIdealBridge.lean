import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let I : OperatorIdealClass := A.object.operatorIdeal
  OperatorIdealClosed I

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.operatorIdealClosed

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse