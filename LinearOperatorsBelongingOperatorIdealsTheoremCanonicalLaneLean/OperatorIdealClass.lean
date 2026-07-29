import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdeal where
  carrier : Type u
  zero : carrier
  add : carrier → carrier → carrier
  smul : ℂ → carrier → carrier
  norm : carrier → ℝ
  idealProperty : Prop
  normedAddCommGroup : NormedAddCommGroup carrier
  closedUnderMultiplication : Prop
  containsFiniteRank : Prop
  idealPropertyTerm : idealProperty
  closedUnderMultiplicationTerm : closedUnderMultiplication
  containsFiniteRankTerm : containsFiniteRank

structure OperatorIdealAdmittedClass where
  object : OperatorIdeal
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def operatorIdealAdmittedClosure (A : OperatorIdealAdmittedClass) : Prop :=
  OperatorIdealWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse