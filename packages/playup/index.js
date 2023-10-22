/**
 * @format
 */

import {AppRegistry} from 'react-native';
import App from './src/App';
import codePush from 'react-native-code-push'
AppRegistry.registerComponent("playup", () => codePush({
    checkFrequency: codePush.CheckFrequency.ON_APP_RESUME,
    installMode: codePush.InstallMode.IMMEDIATE,
    updateDialog: false,
})(App));
