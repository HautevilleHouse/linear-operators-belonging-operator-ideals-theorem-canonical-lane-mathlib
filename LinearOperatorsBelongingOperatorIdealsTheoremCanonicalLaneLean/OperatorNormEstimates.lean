import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorNormEstimatePackage where
  operatorType : Type u
  normType : Type v
  boundednessCondition : Prop
  idealContainmentNormBound : Prop
  normTypeOrdered : normType
  boundednessConditionClosed : boundednessCondition
  idealContainmentNormBoundClosed : idealContainmentNormBound

structure OperatorNormEstimateEvidence (N : OperatorNormEstimatePackage) where
  boundednessConditionClosed : N.boundednessCondition
  idealContainmentNormBoundClosed : N.idealContainmentNormBound

def OperatorNormEstimateClosed (N : OperatorNormEstimatePackage) : Prop :=
  N.boundednessCondition ∧ N.idealContainmentNormBound

theorem operator_norm_estimate_closed_from_evidence (N : OperatorNormEstimatePackage)
    (E : OperatorNormEstimateEvidence N) : OperatorNormEstimateClosed N := by
  exact And.intro E.boundednessConditionClosed E.idealContainmentNormBoundClosed

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse