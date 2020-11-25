var i =0;
var images = [['https://m.media-amazon.com/images/I/41UqZEoLeLL._SS180_.jpg', 'AmazonPrime'],
            ['https://d1qxviojg2h5lt.cloudfront.net/images/01CQW61H9Z8SQ9Y63ENN801MAH/youtubepremium400.png', 'Youtube'],
            ['https://image.roku.com/developer_channels/prod/01ff04e620e7157e570077460ad8aa9fe1a5b2699f92e00bae7f756cac890013.png', 'Spotify']];

/*images[0][0] = 'https://m.media-amazon.com/images/I/41UqZEoLeLL._SS180_.jpg';
images[0][1] = 'Spotify';
images[1][0] = 'https://d1qxviojg2h5lt.cloudfront.net/images/01CQW61H9Z8SQ9Y63ENN801MAH/youtubepremium400.png';
images [1][1] = 'Youtube'
images[2][0] = 'https://image.roku.com/developer_channels/prod/01ff04e620e7157e570077460ad8aa9fe1a5b2699f92e00bae7f756cac890013.png';
images [2][1] = 'Amazon'*/
function changeImg(){
    document.catOne.src = images[i][0];
    console.log(images[i][1]);

    if(i<images.length - 1){
        i++;
    }
    else{
        i = 0;
    }

    //setTimeout("changeImg()", time);
}

window.onload = changeImg;

