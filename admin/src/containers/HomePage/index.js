/*
 *
 * HomePage
 *
 */
/* eslint-disable */
import React, { memo } from "react";
import { FormattedMessage } from "react-intl";
import PageTitle from "../../components/PageTitle";

import { Block, Container, P } from "./components";

const HomePage = () => {
  return (
    <>
      <FormattedMessage id="HomePage.helmet.title">
        {(title) => <PageTitle title={title} />}
      </FormattedMessage>
      <Container className="container-fluid">
        <div className="row">
          <div className="col-lg-12 col-md-12">
            <Block>
              <h2 id="mainHeader">Bem vindo ao blog da Plataforma Sabiá!</h2>
              <P>
                Fique por dentro dos voos da Sabiá!
              </P>
            </Block>
          </div>
        </div>
      </Container>
    </>
  );
};

export default memo(HomePage);