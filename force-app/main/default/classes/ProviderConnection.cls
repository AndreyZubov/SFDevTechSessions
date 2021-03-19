/**
 * Created by Andrey Zubov on 19.03.2021.
 */

public with sharing class ProviderConnection {
    private String providerName = '';

    public ProviderConnection(String providerName){
        this.providerName = providerName;
    }

    public void requestProvider(){
        ProviderBehavior provider = ProvidersFactory.createProvider(this.providerName);
        provider.request();
    }
}