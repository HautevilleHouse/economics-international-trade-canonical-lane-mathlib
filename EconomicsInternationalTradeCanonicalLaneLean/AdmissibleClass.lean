import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

structure TradeModelObject where
  consumptionSet : Type
  preferenceRelation : Type
  endowment : Type
  equilibriumExists : Prop
  equilibriumEfficient : Prop

structure AdmissibleClass where
  object : TradeModelObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TradeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse