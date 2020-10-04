import React from "react";
import {
  createBottomTabNavigator,
  BottomTabNavigationOptions,
} from "@react-navigation/bottom-tabs";
import { Ionicons } from "@expo/vector-icons";

import TransactionsNavigator from "./TransactionsNavigator";
import AccountsNavigator from "./AccountsNavigator";
import ProfileNavigator from "./ProfileNavigator";

const Tab = createBottomTabNavigator();

const genOptions = (icon: string) => (): BottomTabNavigationOptions => ({
  // eslint-disable-next-line react/display-name
  tabBarIcon: ({ color, size }) => {
    return <Ionicons name={icon} color={color} size={size} />;
  },
});

const transactionsOptions = genOptions("ios-list");
const accountsOptions = genOptions("ios-wallet");
const profileOptions = genOptions("ios-person");

function MainBottomNavigator(): JSX.Element {
  return (
    <Tab.Navigator>
      <Tab.Screen
        name="Transactions"
        component={TransactionsNavigator}
        options={transactionsOptions}
      />
      <Tab.Screen
        name="Accounts"
        component={AccountsNavigator}
        options={accountsOptions}
      />
      <Tab.Screen
        name="Profile"
        component={ProfileNavigator}
        options={profileOptions}
      />
    </Tab.Navigator>
  );
}

export default MainBottomNavigator;
