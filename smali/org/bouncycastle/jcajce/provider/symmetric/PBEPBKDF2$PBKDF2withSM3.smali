.class public Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2withSM3;
.super Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2withSM3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "PBKDF2"

    const/4 v1, 0x5

    const/16 v2, 0xe

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method
