import React from "react";
import {
  Container,
  Text,
  Header,
  Content,
  Footer,
  FooterTab,
  Button,
  Left,
  Body,
  Title,
  Right,
  Icon,
  Card,
  CardItem,
} from "native-base";

export default function App(): JSX.Element {
  return (
    <Container>
      <Header>
        <Left />
        <Body>
          <Title>Transactions</Title>
        </Body>
        <Right />
      </Header>
      <Content>
        <Card>
          <CardItem>
            <Body>
              <Text>Hello, I&apos;m a card!</Text>
            </Body>
          </CardItem>
        </Card>
      </Content>
      <Footer>
        <FooterTab>
          <Button vertical>
            <Icon name="menu" />
            <Text>Transactions</Text>
          </Button>
        </FooterTab>
        <FooterTab>
          <Button vertical>
            <Icon name="wallet" />
            <Text>Accounts</Text>
          </Button>
        </FooterTab>
        <FooterTab>
          <Button>
            <Icon name="person" />
            <Text>Profile</Text>
          </Button>
        </FooterTab>
      </Footer>
    </Container>
  );
}
