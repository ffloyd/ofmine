import React from "react";
import { createStackNavigator } from "@react-navigation/stack";

import AccountsScreen from "../screens/AccountsScreen";

const Stack = createStackNavigator();

function AccountsNavigator(): JSX.Element {
  return (
    <Stack.Navigator>
      <Stack.Screen name="Accounts" component={AccountsScreen} />
    </Stack.Navigator>
  );
}

export default AccountsNavigator;
