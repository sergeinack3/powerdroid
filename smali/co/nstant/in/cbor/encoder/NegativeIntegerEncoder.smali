.class public Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "NegativeIntegerEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/NegativeInteger;",
        ">;"
    }
.end annotation


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 13
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/NegativeInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 21
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    sget-object v1, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/NegativeInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 11
    check-cast p1, Lco/nstant/in/cbor/model/NegativeInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->encode(Lco/nstant/in/cbor/model/NegativeInteger;)V

    return-void
.end method
