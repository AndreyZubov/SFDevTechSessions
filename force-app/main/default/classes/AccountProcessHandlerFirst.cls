/**
 * Created by Andrey Zubov on 11.03.2021.
 */

public with sharing class AccountProcessHandlerFirst {
    private String context = '';

    public String getContext(){
        return context;
    }

    public void setContext(String newContext){
        context = newContext;
    }
}