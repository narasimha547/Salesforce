public class Spoonacular {
    private static final String FINAL_URL = 'https://api.spoonacular.com/';
    private static final String API_KEY = 'ebad94f6f7e248b28422cd502037285b';
    public static void getRandomRecipie(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request.setEndpoint('https://api.spoonacular.com/recipes/random?number=1&tags=vegetarian,dessert&apiKey=ebad94f6f7e248b28422cd502037285b');
        request.setEndpoint(FINAL_URL+'recipes/random?apiKey='+API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('Received response'+response);
        if(response.getStatusCode() == 200) {
                System.debug(response.getBody());
        }
        
    }
    
    public static void getReceipieByIDInfo(String RecipieID){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(FINAL_URL+'recipes/'+RecipieID+'/information?apiKey='+API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('Received response'+response);
        if(response.getStatusCode() == 200) {
                System.debug(response.getBody());
        }
        
    }

    public static void getReceipieByIngredient(String name){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(FINAL_URL+'recipes/findByIngredients?apiKey='+API_KEY+'&ingredients='+name);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('Received response'+response);
        if(response.getStatusCode() == 200) {
                System.debug(response.getBody());
        }
    }
    
}