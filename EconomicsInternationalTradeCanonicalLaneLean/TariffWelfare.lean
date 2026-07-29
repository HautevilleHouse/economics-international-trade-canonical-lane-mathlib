import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TariffWelfarePackage where
  smallCountryAssumption : Prop
  domesticDemand : Prop
  domesticSupply : Prop
  worldPrice : Prop
  tariffLevel : Nat
  tariffRevenue : Prop
  consumerSurplusChange : Prop
  producerSurplusChange : Prop
  netWelfareEffect : Prop
  deadweightLoss : Prop

structure TariffWelfareEvidence (T : TariffWelfarePackage) where
  smallCountryAssumptionClosed : T.smallCountryAssumption
  domesticDemandClosed : T.domesticDemand
  domesticSupplyClosed : T.domesticSupply
  worldPriceClosed : T.worldPrice
  tariffRevenueClosed : T.tariffRevenue
  consumerSurplusChangeClosed : T.consumerSurplusChange
  producerSurplusChangeClosed : T.producerSurplusChange
  netWelfareEffectClosed : T.netWelfareEffect
  deadweightLossClosed : T.deadweightLoss

def TariffWelfareClosed (T : TariffWelfarePackage) : Prop :=
  T.smallCountryAssumption ∧ T.domesticDemand ∧ T.domesticSupply ∧ T.worldPrice ∧
  T.tariffRevenue ∧ T.consumerSurplusChange ∧ T.producerSurplusChange ∧
  T.netWelfareEffect ∧ T.deadweightLoss

theorem tariff_welfare_closed_from_evidence (T : TariffWelfarePackage) (E : TariffWelfareEvidence T) : TariffWelfareClosed T :=
  And.intro E.smallCountryAssumptionClosed
    (And.intro E.domesticDemandClosed
      (And.intro E.domesticSupplyClosed
        (And.intro E.worldPriceClosed
          (And.intro E.tariffRevenueClosed
            (And.intro E.consumerSurplusChangeClosed
              (And.intro E.producerSurplusChangeClosed
                (And.intro E.netWelfareEffectClosed E.deadweightLossClosed)))))))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse