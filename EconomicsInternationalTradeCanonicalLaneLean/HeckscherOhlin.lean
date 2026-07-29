import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure HeckscherOhlinPackage where
  factorAbundanceHome : Prop
  factorAbundanceForeign : Prop
  factorIntensityGoodA : Prop
  factorIntensityGoodB : Prop
  tradePatternPrediction : Prop
  factorPriceEqualization : Prop
  openingTradeScenario : Prop

structure HeckscherOhlinEvidence (H : HeckscherOhlinPackage) where
  factorAbundanceHomeClosed : H.factorAbundanceHome
  factorAbundanceForeignClosed : H.factorAbundanceForeign
  factorIntensityGoodAClosed : H.factorIntensityGoodA
  factorIntensityGoodBClosed : H.factorIntensityGoodB
  tradePatternPredictionClosed : H.tradePatternPrediction
  factorPriceEqualizationClosed : H.factorPriceEqualization
  openingTradeScenarioClosed : H.openingTradeScenario

def HeckscherOhlinClosed (H : HeckscherOhlinPackage) : Prop :=
  H.factorAbundanceHome ∧ H.factorAbundanceForeign ∧ H.factorIntensityGoodA ∧
  H.factorIntensityGoodB ∧ H.tradePatternPrediction ∧ H.factorPriceEqualization ∧ H.openingTradeScenario

theorem heckscher_ohlin_closed_from_evidence (H : HeckscherOhlinPackage) (E : HeckscherOhlinEvidence H) : HeckscherOhlinClosed H :=
  And.intro E.factorAbundanceHomeClosed
    (And.intro E.factorAbundanceForeignClosed
      (And.intro E.factorIntensityGoodAClosed
        (And.intro E.factorIntensityGoodBClosed
          (And.intro E.tradePatternPredictionClosed
            (And.intro E.factorPriceEqualizationClosed E.openingTradeScenarioClosed)))))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse