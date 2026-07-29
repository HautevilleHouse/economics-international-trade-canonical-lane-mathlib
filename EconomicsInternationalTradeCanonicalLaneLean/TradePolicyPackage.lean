import canonicalLaneMathlib.AdmissibleClass
import EconomicsInternationalTradeCanonicalLaneLean.TradeEquilibriumPackage

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TradePolicyPackage {U : UtilityTheoryPackage} (T : TradeEquilibriumPackage U) where
  tariffSchedule : Type u
  quotaRestrictions : Type v
  welfareEffectsUnderTariffs : Prop
  optimalTariffFormula : Prop
  welfareEffectsUnderTariffsTerm : welfareEffectsUnderTariffs
  optimalTariffFormulaTerm : optimalTariffFormula

structure TradePolicyEvidence {U : UtilityTheoryPackage} {T : TradeEquilibriumPackage U}
    (P : TradePolicyPackage T) where
  welfareEffectsUnderTariffsClosed : P.welfareEffectsUnderTariffs
  optimalTariffFormulaClosed : P.optimalTariffFormula

def TradePolicyClosed {U : UtilityTheoryPackage} {T : TradeEquilibriumPackage U}
    (P : TradePolicyPackage T) : Prop :=
  P.welfareEffectsUnderTariffs ∧ P.optimalTariffFormula

theorem trade_policy_closed_from_evidence {U : UtilityTheoryPackage}
    {T : TradeEquilibriumPackage U} (P : TradePolicyPackage T)
    (E : TradePolicyEvidence P) : TradePolicyClosed P := by
  exact And.intro E.welfareEffectsUnderTariffsClosed E.optimalTariffFormulaClosed

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse