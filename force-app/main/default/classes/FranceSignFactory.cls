/**
 * Created by Andrey Zubov on 01.04.2021.
 */

public with sharing class FranceSignFactory implements SignFactory{
    public RegulatorBehavior createRegulator() {
        return new FranceRegulator();
    }

    public ProviderBehavior createProvider() {
        return new ProviderDocupost();
    }
}