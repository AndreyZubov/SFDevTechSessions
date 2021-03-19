/**
 * Created by Andrey Zubov on 19.03.2021.
 */

public with sharing class ProviderDocupost implements ProviderBehavior{
    public void request(){
        System.debug('Request Docupost');
    }
}