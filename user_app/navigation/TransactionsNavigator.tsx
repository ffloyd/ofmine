import React from "react";
import { createStackNavigator } from "@react-navigation/stack";
import TransactionsScreen from "../screens/TransactionsScreen";

const Stack = createStackNavigator();

function TransactionsNavigator(): JSX.Element {
  return (
    <Stack.Navigator>
      <Stack.Screen name="Transactions" component={TransactionsScreen} />
    </Stack.Navigator>
  );
}

export default TransactionsNavigator;
