.class public Lcom/sina/weibo/h/ch;
.super Lcom/sina/weibo/h/ej;
.source "GetPageMembersParam.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/h/ej;-><init>(Landroid/content/Context;Lcom/sina/weibo/models/User;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 36
    iput p1, p0, Lcom/sina/weibo/h/ch;->b:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sina/weibo/h/ch;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 44
    iput p1, p0, Lcom/sina/weibo/h/ch;->c:I

    .line 45
    return-void
.end method

.method protected createGetRequestBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "uid"

    iget-object v2, p0, Lcom/sina/weibo/h/ch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "page"

    iget v2, p0, Lcom/sina/weibo/h/ch;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "count"

    iget v2, p0, Lcom/sina/weibo/h/ch;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method protected createPostRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
