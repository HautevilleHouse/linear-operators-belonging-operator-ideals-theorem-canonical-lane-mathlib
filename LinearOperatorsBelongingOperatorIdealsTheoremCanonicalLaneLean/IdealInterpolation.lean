import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure IdealInterpolationPackage where
  operatorFamily : Type u
  parameterSpace : Type v
  interpolationCondition : Prop
  idealMembershipPreserved : Prop
  parameterSpaceTopological : parameterSpace
  interpolationConditionClosed : interpolationCondition
  idealMembershipPreservedClosed : idealMembershipPreserved

structure IdealInterpolationEvidence (I : IdealInterpolationPackage) where
  interpolationConditionClosed : I.interpolationCondition
  idealMembershipPreservedClosed : I.idealMembershipPreserved

def IdealInterpolationClosed (I : IdealInterpolationPackage) : Prop :=
  I.interpolationCondition ∧ I.idealMembershipPreserved

theorem ideal_interpolation_closed_from_evidence (I : IdealInterpolationPackage)
    (E : IdealInterpolationEvidence I) : IdealInterpolationClosed I := by
  exact And.intro E.interpolationConditionClosed E.idealMembershipPreservedClosed

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse