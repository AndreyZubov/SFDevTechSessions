/**
 * Created by Andrey Zubov on 01.04.2021.
 */

public with sharing class RunSignFlow {
    SignFactory signFactory;

    public void runSign(){
        String userLocale = 'Russia';
        SignFlow signFlow = getSignFlow(userLocale);
        signFlow.signDocument();
    }

    private SignFlow getSignFlow(String locale){

        if(locale == 'Russia'){
            this.signFactory = new RussiaSignFactory();
        } else if(locale == 'France') {
            this.signFactory = new FranceSignFactory();
        }
        return new SignFlow(signFactory);
    }
}