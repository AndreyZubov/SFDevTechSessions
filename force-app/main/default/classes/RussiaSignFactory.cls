/**
 * Created by Andrey Zubov on 01.04.2021.
 */

public with sharing class RussiaSignFactory implements SignFactory{
    public RegulatorBehavior createRegulator() {
        return new RussiaRegulator();
    }

    public ProviderBehavior createProvider() {
        return new ProviderDocusign();
    }
}