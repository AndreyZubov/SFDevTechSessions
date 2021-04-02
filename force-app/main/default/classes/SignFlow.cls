/**
 * Created by Andrey Zubov on 01.04.2021.
 */

public with sharing class SignFlow {
    ProviderBehavior signProvider;
    RegulatorBehavior signRegulator;

    public SignFlow(SignFactory signFactory) {
        signProvider = signFactory.createProvider();
        signRegulator = signFactory.createRegulator();
    }

    public void signDocument(){
        signProvider.request();
        signRegulator.validate();
    }

}