package com.eunmin;

public class Util {
  public static void printNames(ExpValue[] exps) {
    for (int i = 0; i < exps.length; i++) {
      System.out.println("name[" + i + "]: " + exps[i].getName());
    }
  }
}
