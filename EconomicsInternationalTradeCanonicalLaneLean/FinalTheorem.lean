import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

def ConstrainedTradeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_trade_endgame (A : AdmissibleClass) : ConstrainedTradeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse