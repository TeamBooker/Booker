function AdminController($scope, $http) {
    $scope._ = _;
    var baseUrl = '/admin';
    console.log($http);
    var loadCatalog = function(pageNumber){
        pageNumber = pageNumber ? pageNumber : 0;
        return $http({
            url : baseUrl + '/catalog',
            params : { "page": pageNumber }
        });
    };

    loadCatalog(0)
        .then(function(resp){
            console.log(resp);
            $scope.catalog = resp.data;
        });

    $scope.pageCatalog = function(page){
        loadCatalog(page)
            .then(function(resp){
                console.log(resp);
                $scope.catalog = resp.data;
            });
    }
    $scope.nextCatalog = function(){
        if ($scope.catalog.last)
            return;
        loadCatalog($scope.catalog.number + 1)
            .then(function(resp){
                console.log(resp);
                $scope.catalog = resp.data;
            });
    };

    $scope.previousCatalog = function(){
        if ($scope.catalog.first)
            return;
        loadCatalog($scope.catalog.number - 1)
            .then(function(resp){
                console.log(resp);
                $scope.catalog = resp.data;
            });
    };

    var loadMembers = function(pageNumber){
        pageNumber = pageNumber ? pageNumber : 0;
        return $http({
            url : baseUrl + '/members',
            params : { "page": pageNumber }
        });
    };

    loadMembers(0)
        .then(function(resp){
            console.log(resp);
            $scope.members = resp.data;
        });

    $scope.pageMembers = function(page){
        loadMembers(page)
            .then(function(resp){
                console.log(resp);
                $scope.members = resp.data;
            });
    }
    $scope.nextMembers = function(){
        if ($scope.members.last)
            return;
        loadMembers($scope.members.number + 1)
            .then(function(resp){
                console.log(resp);
                $scope.members = resp.data;
            });
    };

    $scope.previousMembers = function(){
        if ($scope.members.first)
            return;
        loadCatalog($scope.members.number - 1)
            .then(function(resp){
                console.log(resp);
                $scope.members = resp.data;
            });
    };

}
