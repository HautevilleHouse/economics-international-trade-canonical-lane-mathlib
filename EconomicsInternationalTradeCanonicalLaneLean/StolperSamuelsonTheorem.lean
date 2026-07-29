import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure StolperSamuelsonPackage where
  factorIntensity : Prop
  commodityPriceChange : Prop
  factorPriceResponse : Prop
  realWageEffect : Prop
  magnifiedEffect : Prop

structure StolperSamuelsonEvidence (S : StolperSamuelsonPackage) where
  factorIntensityClosed : S.factorIntensity
  commodityPriceChangeClosed : S.commodityPriceChange
  factorPriceResponseClosed : S.factorPriceResponse
  realWageEffectClosed : S.realWageEffect
  magnifiedEffectClosed : S.magnifiedEffect

def StolperSamuelsonClosed (S : StolperSamuelsonPackage) : Prop :=
  S.factorIntensity ∧ S.commodityPriceChange ∧ S.factorPriceResponse ∧ S.realWageEffect ∧ S.magnifiedEffect

theorem stolper_samuelson_closed_from_evidence (S : StolperSamuelsonPackage) (E : StolperSamuelsonEvidence S) : StolperSamuelsonClosed S := by
  exact And.intro E.factorIntensityClosed (And.intro E.commodityPriceChangeClosed (And.intro E.factorPriceResponseClosed (And.intro E.realWageEffectClosed E.magnifiedEffectClosed)))

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse