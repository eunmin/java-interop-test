package com.eunmin;

public class BoolValue implements ExpValue {
  private Boolean value;

  public BoolValue(boolean value) {
      this.value = value;
  }

  public boolean getValue() {
    return value;
  }

  @Override
  public String getName() {
    return "BoolValue";
  }
}
