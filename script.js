var i=0;
var images = [
            ['assets/images/amazon_prime.jpg', 'AmazonPrime'],
            ['assets/images/youtube_premium.png', 'Youtube'],
            ['assets/images/spotify.png', 'Spotify'],
            ['https://play-lh.googleusercontent.com/OuZqDwJcoCna3sbEjlV58dwBxk2bFYdgwRqe3xOphhAm5RymSSfud3qNSy4pSaRYB9M', 'END']];
           window.onload = skipSub;


/*images[0][0] = 'https://m.media-amazon.com/images/I/41UqZEoLeLL._SS180_.jpg';
images[0][1] = 'Spotify';
images[1][0] = 'https://d1qxviojg2h5lt.cloudfront.net/images/01CQW61H9Z8SQ9Y63ENN801MAH/youtubepremium400.png';
images [1][1] = 'Youtube'
images[2][0] = 'https://image.roku.com/developer_channels/prod/01ff04e620e7157e570077460ad8aa9fe1a5b2699f92e00bae7f756cac890013.png';
images [2][1] = 'Amazon'*/
function skipSub(){
    
    if(i<images.length){
        document.catOne.src = images[i][0];
        i++;
    }
}

function addSub(){
    
    if (i==0){
        console.log('AmazonPrime');
        i++;
    }
    else{
        if(i<images.length){ 
            document.catOne.src = images[i][0];
            console.log(images[i-1][1]);  
            i++;      
    }
    }
    

    //setTimeout("changeImg()", time);
}




