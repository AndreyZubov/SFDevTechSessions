/**
 * Created by Andrey Zubov on 02.04.2021.
 */

public with sharing class FranceRegulator implements RegulatorBehavior {
    public void validate(){
        System.debug('France regulator\'s validation');
    }
}