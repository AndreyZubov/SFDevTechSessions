/**
 * Created by Andrey Zubov on 02.04.2021.
 */

public with sharing class RussiaRegulator implements RegulatorBehavior{
    public void validate(){
        System.debug('Russia regulator\'s validation');
    }
}