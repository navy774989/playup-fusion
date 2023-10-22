/**
 * @format
 */

import {AppRegistry} from 'react-native';
import App from './src/App';
import codePush from 'react-native-code-push'
import Reactotron from 'reactotron-react-native'

Reactotron
  .configure() // controls connection & communication settings
  .useReactNative() // add all built-in react native plugins
  .connect() // let
AppRegistry.registerComponent("draftStars", () => codePush({
    checkFrequency: codePush.CheckFrequency.ON_APP_RESUME,
    installMode: codePush.InstallMode.IMMEDIATE,
    updateDialog: false,
})(App));