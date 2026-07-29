import HautevilleHouse.LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure BoundedLinearMap (X Y : BanachSpace) where
  toFun : X.carrier → Y.carrier
  linear : LinearMap (RingHom.id ℝ) (toFun)
  bounded : ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X.carrier, Y.norm (toFun x) ≤ C * X.norm x

structure OperatorIdeal (X Y : BanachSpace) where
  ideal : Set (BoundedLinearMap X Y)
  idealProperty : Prop  -- e.g., closed under addition, composition, etc.

def OperatorIdealClosed (I : OperatorIdeal X Y) : Prop :=
  I.idealProperty

end LinearOperatorsBelongingOperatorIdealsTheoremCanonicalLaneLean
end HautevilleHouse