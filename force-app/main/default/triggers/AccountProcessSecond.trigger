/**
 * Created by Andrey Zubov on 11.03.2021.
 */

trigger AccountProcessSecond on Account (before update, after update) {
    AccountProcessHandlerFirst handler = new AccountProcessHandlerFirst();
    if(Trigger.isBefore && Trigger.isUpdate){
        System.debug('Second Before');
        // System.debug('AccountProcessHandlerFirst: ' + handler.getContext());
        AccountProcessHandlerSecond.staticContext = 'Static Context First Before';
        System.debug('Static Context Second Before: ' + AccountProcessHandlerSecond.staticContext);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        System.debug('Seconds After');
        // System.debug('AccountProcessHandlerFirst: ' + handler.getContext());
        System.debug('Static Context Second After: ' + AccountProcessHandlerSecond.staticContext);
    }
}