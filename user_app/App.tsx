import { StatusBar } from "expo-status-bar";
import React from "react";
import { StyleSheet, Text, View } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});

export default function App(): JSX.Element {
  return (
    <View style={styles.container}>
      <Text>Hello, world!</Text>
      <StatusBar style="auto" />
    </View>
  );
}