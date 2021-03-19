/**
 * Created by Andrey Zubov on 19.03.2021.
 */

public with sharing class ProvidersFactory {
    static public ProviderBehavior createProvider(String providerType){
        Type t = Type.forName(providerType);
        ProviderBehavior provider = (ProviderBehavior) t.newInstance();
        return provider;
    }
}