.class public Lcom/sina/weibo/h/d;
.super Lcom/sina/weibo/h/ej;
.source "AddBlacklistParamV4.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/h/ej;-><init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sina/weibo/h/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sina/weibo/h/d;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method protected createGetRequestBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "uid"

    iget-object v2, p0, Lcom/sina/weibo/h/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method

.method protected createPostRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
