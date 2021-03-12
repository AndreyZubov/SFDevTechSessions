/**
 * Created by Andrey Zubov on 11.03.2021.
 */

trigger AccountProcessFirst on Account (before update, after update) {
    AccountProcessHandlerFirst handler = new AccountProcessHandlerFirst();
    if(Trigger.isBefore && Trigger.isUpdate){
        System.debug('First Before');
        handler.setContext('First Before');
        System.debug('Context First Before: ' + handler.getContext());
        AccountProcessHandlerSecond.staticContext = 'Static Context First Before';
        System.debug('Static Context First Before: ' + AccountProcessHandlerSecond.staticContext);
        System.debug('Limits.getCpuTime() Before ' + Limits.getCpuTime());
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        System.debug('First After');
        System.debug('Context First After: ' + handler.getContext());
        System.debug('Static Context First After: ' + AccountProcessHandlerSecond.staticContext);
        System.debug('Limits.getCpuTime() After ' + Limits.getCpuTime());
    }
}