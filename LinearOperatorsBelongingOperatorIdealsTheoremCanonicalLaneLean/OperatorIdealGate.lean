import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealBridge

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse