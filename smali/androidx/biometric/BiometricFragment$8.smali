.class Landroidx/biometric/BiometricFragment$8;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricFragment;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/BiometricFragment;

.field final synthetic val$errorCode:I

.field final synthetic val$errorString:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    .line 576
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$8;->this$0:Landroidx/biometric/BiometricFragment;

    iput p2, p0, Landroidx/biometric/BiometricFragment$8;->val$errorCode:I

    iput-object p3, p0, Landroidx/biometric/BiometricFragment$8;->val$errorString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 579
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$8;->this$0:Landroidx/biometric/BiometricFragment;

    iget v1, p0, Landroidx/biometric/BiometricFragment$8;->val$errorCode:I

    iget-object v2, p0, Landroidx/biometric/BiometricFragment$8;->val$errorString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void
.end method
