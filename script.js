
// for each unactive subscription in the database add to array category
//subData x6 and renaimed to each category
var subData = [{"name":"Spotify", "img":"assets/images/spotify.png", "downloads":10000},
                { "name":"Amazon", "img":"assets/images/amazon_prime.jpg", "downloads":20000},
                { "name":"Youtube", "img":"assets/images/youtube_premium.png", "downloads":300000}]
        
sortArr();

function sortArr(){
    subData.sort(function(a, b){return b.downloads - a.downloads}); //sorts subscriptions by popularity
}
        
var subscription = {
                
    name: "",
    img : "",
    downloads: 0
}

cardCounter = 0;
window.onload =  skipSub;

function addSub(){
    
    if (subData.length == 0){
        alert("You have reached the end of the list");     
    }
    else if(subData.length==1){
        skipSub(); 
        cardCounter--;
       
        subData.shift(); //array should be emty now
        document.catOne.src = "";
    }
    else{
    
    
    var Temp = subData[0]; //swap first element in array with added suggestion
    cardCounter--;
  
    subData[0] = subData[cardCounter] //prepare to remove element
  
    subData[cardCounter] = Temp; //return orginal first element to array
   
    subData.shift(); //remove added suggestion
     
    sortArr(); //sort array to orginal format
    skipSub();     
    
    
}
}

function skipSub(){
    if(subData==0)
    {
        alert("You have reached the end of the list");
        document.catOne.src = "";
       }
    else{
        try{
        loadSub(cardCounter);
        document.catOne.src = subscription.img;     
        cardCounter++;
         }
        catch{
            cardCounter = 0;
            skipSub();
        }
    }
        
}
    
function loadSub(cardCounter){
    subscription.name = subData[cardCounter].name;
    subscription.img =subData[cardCounter].img;
    subscription.downloads =subData[cardCounter].downloads;  
}