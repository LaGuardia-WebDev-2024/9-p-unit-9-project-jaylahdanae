setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://static.wikia.nocookie.net/mickeyclub/images/3/3a/The_Mickey_Mouse_Clubhouse.jpg/revision/latest?cb=20200925184125");

var livingroomImage = loadImage("https://s1.dmcdn.net/v/BSVxc1Rm-IPnC4f0q/x1080");

var toolromImage = loadImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/31d22b65-fe97-4eee-9e6b-d7032cdd385e/djld80m-8a819d3e-72e5-4bff-b269-3ec85e98a932.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi8zMWQyMmI2NS1mZTk3LTRlZWUtOWU2Yi1kNzAzMmNkZDM4NWUvZGpsZDgwbS04YTgxOWQzZS03MmU1LTRiZmYtYjI2OS0zZWM4NWU5OGE5MzIuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.WkEs0xp68i-Ai7BK0nMS9d3xAgTn8ImnF2FcixPIaXo
var sceneImage = caveSceneImage;
var sceneText = "Find Toodles!  [Press l to for living room and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'l'){
       sceneImage = livingroomImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



