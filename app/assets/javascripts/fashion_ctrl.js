(function(){

  angular.module("app").controller("fashionCtrl", function($scope, $http){

    $scope.fetchData = function(){
      $http.get("api/v1/fashions.json").then(function(response){
        $scope.fashions = response.data["fashion"];
      });
    };

   $scope.addFashion = function(newDress, newShirt) {
     var fashion = {
       dress: newDress,
       shirt: newShirt
     };

     $http.post('/api/v1/fashions.json', fashion).then(function(response) {
         $scope.fashions.push(fashion);
       }, function (error) {
         $scope.errors = error.data.errors;
       });


     $scope.newDress = "";
     $scope.newShirt = "";
   };

   $scope.toggleVisible = function(fashion) {
     fashion.detailsVisible = !fashion.detailsVisible;
   };


    window.scope = $scope;
    
  });
}());