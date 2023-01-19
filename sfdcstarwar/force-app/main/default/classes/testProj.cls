public with sharing class testProj {

    private static final String SWAPI_BASE_URL = 'https://swapi.dev/api';

    public static void getStarwarPeoples(String index) {
        System.debug('Getting People List From SWAPI');
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Accept', 'application/json');
        request.setEndpoint(SWAPI_BASE_URL+'/people/'+index);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('response code: ' +response.getStatusCode());
        if (response.getStatusCode() == 200) {
            System.debug('response: ' +response.getBody());
        }
    }

    public static void getStarwarPlanets(String index) {
        System.debug('Getting Planets List From SWAPI');
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Accept', 'application/json');
        request.setEndpoint(SWAPI_BASE_URL+'/planets/'+index);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('response code: ' +response.getStatusCode());
        if (response.getStatusCode() == 200) {
            System.debug('response: ' +response.getBody());
        }
    }

    public static void getStarwarStarships(String index) {
        System.debug('Getting Starships List From SWAPI');
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Accept', 'application/json');
        request.setEndpoint(SWAPI_BASE_URL+'/starships/'+index);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug('response code: ' +response.getStatusCode());
        if (response.getStatusCode() == 200) {
            System.debug('response: ' +response.getBody());
        }
    }
}