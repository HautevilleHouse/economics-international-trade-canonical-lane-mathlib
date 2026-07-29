import EconomicsInternationalTradeCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsInternationalTradeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TradeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.equilibriumExists

end EconomicsInternationalTradeCanonicalLaneLean
end HautevilleHouse