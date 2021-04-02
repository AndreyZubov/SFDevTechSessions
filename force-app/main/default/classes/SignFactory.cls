/**
 * Created by Andrey Zubov on 01.04.2021.
 */

public interface SignFactory {
    RegulatorBehavior createRegulator();
    ProviderBehavior createProvider();
}