package com.eunmin;

public class IntValue implements ExpValue {
  private Integer value;

  public IntValue(int value) {
      this.value = value;
  }

  public int getValue() {
    return value;
  }

  @Override
  public String getName() {
    return "IntValue";
  }
}
