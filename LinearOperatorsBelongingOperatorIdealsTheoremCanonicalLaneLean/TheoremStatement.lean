import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealAdmittedObject where
  carrier : Type
  operatorSpace : Type
  operatorClass : Prop
  idealMembership : Prop
  conclusion : idealMembership

def OperatorIdealWitnessClosed (O : OperatorIdealAdmittedObject) : Prop :=
  O.idealMembership

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse
