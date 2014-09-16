angular
  .module('bordova')
  .controller 'IndexController', ($scope) ->
    $scope.dismissedAlerts = 0

    $scope.alertTests = [
      {
        title: "Alert with String as param"
        options: "Just a string value."
      }
      {
        title: "Alert with options object param"
        options:
          title: "Custom Title"
          message: "I'm an alert!"
          buttonLabel: "Close"
      }
      {
        title: "Alert with null options"
        options: null
      }
      {
        title: "Alert without options"
      }
    ]

    $scope.testAlert = (options) ->
      supersonic.cordova.notification.alert(options).then ->
        $scope.dismissedAlerts++

    $scope.confirms = [
      0
      0
      0
    ]

    $scope.confirmTests = [
      {
        title: "Confirm with String as param"
        options: "Just a string value."
      }
      {
        title: "Alert with options object param"
        options:
          title: "Custom Title"
          message: "I'm a Confirm!"
          buttonLabels: ["Yay","NO!","third"]
      }
      {
        title: "Confirm with null options"
        options: null
      }
      {
        title: "Confirm without options"
      }
    ]

    $scope.testConfirm = (options) ->
      supersonic.cordova.notification.confirm(options).then (index) ->
        $scope.confirms[index]++

    $scope.vibrations = 0

    $scope.vibrateTests = [
      {
        title: "Vibrate for 2500 ms"
        options: 2500
      }
      {
        title: "Vibrate"
        options: null
      }
    ]

    $scope.testVibrate = (options) ->
      supersonic.cordova.notification.vibrate(options).then ->
        $scope.vibrations++

    $scope.buttonIndex = undefined
    $scope.input = undefined

    $scope.promptTests = [
      {
        title: "Prompt with String as param"
        options: "Just a string value."
      }
      {
        title: "Prompt with options object param"
        options:
          title: "Custom Title" 
          message: "I am a prompt"
          buttonLabels: ["Yay","NO!"]
          defaultText: "Type something"
      }
      {
        title: "Prompt with null options"
        options: null
      }
      {
        title: "Prompt without options"
      }
    ]

    $scope.testPrompt = (options) ->
      supersonic.cordova.notification.prompt(options).then (input) ->
        $scope.input = input
