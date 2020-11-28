import styled, { css } from "styled-components";

import Logo from "../../../assets/images/logo-sabia.svg";

const Wrapper = styled.div`
  ${({ theme }) => css`
    background-color: ${theme.main.colors.white};
    height: ${theme.main.sizes.leftMenu.height};
    .leftMenuHeaderLink {
      &:hover {
        text-decoration: none;
      }
    }
    .projectName {
      display: block;
      width: 100%;
      height: ${theme.main.sizes.leftMenu.height};
      font-size: 2rem;
      letter-spacing: 0.2rem;
      color: ${theme.main.colors.white};
      background-image: url(${Logo});
      background-repeat: no-repeat;
      background-position: center;
      background-size: 12rem;
    }
    box-shadow: 0 1px 2px 0 rgba(40,42,49,0.16);
  `}
`;

export default Wrapper;