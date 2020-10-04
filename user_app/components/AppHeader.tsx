import React from "react";
import { Header as NBHeader, Left, Body, Title, Right } from "native-base";

type AppHeaderProps = {
  title: string;
};

const AppHeader = ({ title }: AppHeaderProps): JSX.Element => {
  return (
    <NBHeader>
      <Left />
      <Body>
        <Title>{title}</Title>
      </Body>
      <Right />
    </NBHeader>
  );
};

export default AppHeader;
