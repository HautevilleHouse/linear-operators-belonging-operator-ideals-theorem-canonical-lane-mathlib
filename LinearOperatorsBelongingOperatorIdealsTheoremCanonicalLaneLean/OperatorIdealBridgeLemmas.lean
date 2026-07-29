import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

def bridgeClosed (A : OperatorIdealAdmittedClass) : Prop :=
  OperatorIdealWitnessClosed A.object

theorem bridge_from_admissible_class (A : OperatorIdealAdmittedClass) :
    bridgeClosed A := by
  exact A.object.idealPropertyTerm

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse