package com.fsck.k9.lib;

import java.math.BigInteger;

public class KeyPair {

    private final BigInteger x;
    private final BigInteger y;
    private final BigInteger d;

    public KeyPair(BigInteger x, BigInteger y, BigInteger d) {
        this.x = x;
        this.y = y;
        this.d = d;
    }

    public BigInteger getX() {
        return x;
    }

    public BigInteger getY() {
        return y;
    }

    public BigInteger getD() {
        return d;
    }

    @Override
    public String toString() {
        return "KeyPair{" +
                "Qx=" + x +
                ", Qy=" + y +
                ", d=" + d +
                '}';
    }
}
