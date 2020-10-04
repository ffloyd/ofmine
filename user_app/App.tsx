import React from "react";
import { Container } from "native-base";
import { NavigationContainer } from "@react-navigation/native";

import MainBottomNavigator from "./navigation/MainBottomNavigator";

export default function App(): JSX.Element {
  return (
    <NavigationContainer>
      <Container>
        <MainBottomNavigator />
      </Container>
    </NavigationContainer>
  );
}
