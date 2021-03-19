/**
 * Created by Andrey Zubov on 19.03.2021.
 */

public with sharing class ProviderDocusign implements ProviderBehavior {
    public void request(){
        System.debug('Request Docusign');
    }
}