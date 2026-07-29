import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.OperatorIdealAdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure FormalizationCertificate where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def formalizationCertificate : FormalizationCertificate :=
  { sourceKey := "linear-operators-belonging-operator-ideals-canonical-lane"
    theoremObject := "Linear Operators Belonging Operator Ideals Theorem"
    commonCoreImported := true
    theoremSpecificDefinitionsNative := true
    theoremSpecificBridgeNative := true
    theoremSpecificAdmittedClosureNative := true
    unrestrictedClassicalClosureNative := false
    carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

theorem formalization_build_checked : formalizationCertificate.leanBuildChecked = true := by rfl

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse