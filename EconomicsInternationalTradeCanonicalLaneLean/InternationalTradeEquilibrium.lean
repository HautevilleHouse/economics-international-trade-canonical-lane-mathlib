import EconomicsInternationalTradeCanonicalLaneLean.HeckscherOhlinModel

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TradeEquilibrium where
  worldPrices : Type
  allocations : Type
  tradeBalance : Prop
  welfareProperties : Prop

def TradeEquilibriumPackage (T : TradeEquilibrium) : Prop :=
  T.tradeBalance ∧ T.welfareProperties

structure TradeEquilibriumEvidence (T : TradeEquilibrium) where
  tradeBalanceClosed : T.tradeBalance
  welfarePropertiesClosed : T.welfareProperties

def TradeEquilibriumClosed (T : TradeEquilibrium) : Prop :=
  T.tradeBalance ∧ T.welfareProperties

theorem trade_equilibrium_closed_from_evidence
    (T : TradeEquilibrium) (Ev : TradeEquilibriumEvidence T) :
    TradeEquilibriumClosed T := by
  exact And.intro Ev.tradeBalanceClosed Ev.welfarePropertiesClosed

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse