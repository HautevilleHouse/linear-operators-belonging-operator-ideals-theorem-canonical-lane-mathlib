import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealsAdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure OperatorIdealPropertiesPackage (O : OperatorIdealAdmittedObject) where
  stabilityUnderComposition : Prop
  stabilityUnderAdjoint : Prop
  stabilityUnderSMM : Prop
  spectralMappingProperty : Prop

structure OperatorIdealPropertiesEvidence {O : OperatorIdealAdmittedObject}
    (P : OperatorIdealPropertiesPackage O) where
  stabilityUnderCompositionClosed : P.stabilityUnderComposition
  stabilityUnderAdjointClosed : P.stabilityUnderAdjoint
  stabilityUnderSMMClosed : P.stabilityUnderSMM
  spectralMappingPropertyClosed : P.spectralMappingProperty

def OperatorIdealPropertiesClosed {O : OperatorIdealAdmittedObject}
    (P : OperatorIdealPropertiesPackage O) : Prop :=
  P.stabilityUnderComposition ∧ P.stabilityUnderAdjoint ∧
  P.stabilityUnderSMM ∧ P.spectralMappingProperty

theorem operator_ideal_properties_closed_from_evidence
    {O : OperatorIdealAdmittedObject} (P : OperatorIdealPropertiesPackage O)
    (E : OperatorIdealPropertiesEvidence P) : OperatorIdealPropertiesClosed P := by
  exact And.intro E.stabilityUnderCompositionClosed
    (And.intro E.stabilityUnderAdjointClosed
      (And.intro E.stabilityUnderSMMClosed
        E.spectralMappingPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse