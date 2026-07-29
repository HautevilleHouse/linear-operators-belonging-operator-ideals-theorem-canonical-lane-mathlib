import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.SchattenIdeals

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealEndpointPackage {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    {S : SchattenIdealPackage P} (Z : NonTrivialSchattenSimilarity S) where
  targetIdeal : Set (O.underlyingSpace →ₗ[ℝ] O.underlyingSpace)
  targetIdealProperties : Prop
  membershipCriterion : Prop
  endpointMatchesIdealStatement : Prop

structure OperatorIdealEndpointEvidence {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    {S : SchattenIdealPackage P} (Z : OperatorIdealEndpointPackage S) where
  targetIdealPropertiesClosed : Z.targetIdealProperties
  membershipCriterionClosed : Z.membershipCriterion
  endpointMatchesIdealStatementClosed : Z.endpointMatchesIdealStatement

def OperatorIdealEndpointClosed {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    {S : SchattenIdealPackage P} (Z : OperatorIdealEndpointPackage S) : Prop :=
  Z.targetIdealProperties ∧ Z.membershipCriterion ∧
  Z.endpointMatchesIdealStatement

theorem operator_ideal_endpoint_closed_from_evidence
    {O : OperatorIdealAdmittedObject}
    {P : OperatorIdealPropertiesPackage O}
    {S : SchattenIdealPackage P} (Z : OperatorIdealEndpointPackage S)
    (E : OperatorIdealEndpointEvidence Z) :
    OperatorIdealEndpointClosed Z := by
  exact And.intro E.targetIdealPropertiesClosed
    (And.intro E.membershipCriterionClosed
      E.endpointMatchesIdealStatementClosed)

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse