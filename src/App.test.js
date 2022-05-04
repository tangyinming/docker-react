import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders learn react link", () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test("renders get Edit", () => {
  render(<App />);
  const editElement = screen.getByText(/Edit/i);
  expect(editElement).toBeInTheDocument();
});

test("renders get Edit 2", () => {
  render(<App />);
  const editElement = screen.getByText(/Edit/i);
  expect(editElement).toBeInTheDocument();
});
