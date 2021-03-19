/**
 * Created by Andrey Zubov on 19.03.2021.
 */

public with sharing class RunProviderRequest {
    public static void runProvider(){
        // Request Docusign
        ProviderConnection docusignProvider = new ProviderConnection('ProviderDocusign');
        docusignProvider.requestProvider();
        // Request Docupost
        ProviderConnection docupostProvider = new ProviderConnection('ProviderDocupost');
        docupostProvider.requestProvider();
    }
}