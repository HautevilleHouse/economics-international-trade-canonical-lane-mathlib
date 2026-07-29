import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TradePolicyPackage where
  tariffRate : Type u
  quotaRestriction : Prop
  welfareEffect : Prop
  optimalTariff : Prop
  retaliationDynamics : Prop
  multilateralAgreement : Prop

structure TradePolicyEvidence (T : TradePolicyPackage) where
  tariffRateClosed : T.tariffRate
  quotaRestrictionClosed : T.quotaRestriction
  welfareEffectClosed : T.welfareEffect
  optimalTariffClosed : T.optimalTariff
  retaliationDynamicsClosed : T.retaliationDynamics
  multilateralAgreementClosed : T.multilateralAgreement

def TradePolicyClosed (T : TradePolicyPackage) : Prop :=
  T.tariffRate ∧ T.quotaRestriction ∧ T.welfareEffect ∧ T.optimalTariff ∧ T.retaliationDynamics ∧ T.multilateralAgreement

theorem trade_policy_closed_from_evidence (T : TradePolicyPackage) (E : TradePolicyEvidence T) : TradePolicyClosed T := by
  exact And.intro E.tariffRateClosed (And.intro E.quotaRestrictionClosed (And.intro E.welfareEffectClosed (And.intro E.optimalTariffClosed (And.intro E.retaliationDynamicsClosed E.multilateralAgreementClosed))))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse