import React from "react";
import { Container, Text, Content, Body, Card, CardItem } from "native-base";

import AppHeader from "./components/AppHeader";
import FooterTabs from "./components/FooterTabs";

export default function App(): JSX.Element {
  return (
    <Container>
      <AppHeader title="Transactions" />
      <Content>
        <Card>
          <CardItem>
            <Body>
              <Text>Hello, I&apos;m a card!</Text>
            </Body>
          </CardItem>
        </Card>
      </Content>
      <FooterTabs />
    </Container>
  );
}
