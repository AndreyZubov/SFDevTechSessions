/**
 * Created by Andrey Zubov on 11.03.2021.
 */

trigger AccountProcessFirst on Account (before update, after update) {
    AccountProcessHandlerFirst handler = new AccountProcessHandlerFirst();
    if(Trigger.isBefore && Trigger.isUpdate){
//        System.debug('First Trigger Before');

        handler.setContext('First Before');
//        System.debug('Context Variable Before: ' + handler.getContext());
//        AccountProcessHandlerSecond.staticContext = 'Static Context First Before';
//        System.debug('Static Context First Before: ' + AccountProcessHandlerSecond.staticContext);
//        System.debug('Limits.getCpuTime() First Trigger Before ' + Limits.getCpuTime());
    }
    if(Trigger.isAfter && Trigger.isUpdate){
//        System.debug('First Trigger After');
        System.debug('Static Context First Trigger Second After: ' + AccountProcessHandlerSecond.staticContext);
//        System.debug('Context Variable After: ' + handler.getContext());
//        System.debug('Static Context First After: ' + AccountProcessHandlerSecond.staticContext);
//        System.debug('Limits.getCpuTime() First Trigger After ' + Limits.getCpuTime());
    }
}