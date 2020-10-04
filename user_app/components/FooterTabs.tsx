import React from "react";

import { Footer, FooterTab, Button, Icon, Text } from "native-base";

const FooterTabs = (): JSX.Element => {
  return (
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
  );
};

export default FooterTabs;
