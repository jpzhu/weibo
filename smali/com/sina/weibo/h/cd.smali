.class public Lcom/sina/weibo/h/cd;
.super Lcom/sina/weibo/h/ej;
.source "GetOrderParam.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/h/ej;-><init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sina/weibo/h/cd;->a:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method protected createGetRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createPostRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sina/weibo/h/cd;->a:Landroid/os/Bundle;

    return-object v0
.end method
