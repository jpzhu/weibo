.class Lcom/sina/weibo/push/q$b;
.super Lcom/sina/weibo/push/b$a;
.source "PushStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/push/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/sina/weibo/push/q;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/push/q;I)V
    .locals 0
    .parameter
    .parameter "state"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sina/weibo/push/q$b;->c:Lcom/sina/weibo/push/q;

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/push/b$a;-><init>(Lcom/sina/weibo/push/b;I)V

    .line 249
    return-void
.end method


# virtual methods
.method b(Lcom/sina/weibo/push/a$a;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 253
    invoke-static {}, Lcom/sina/weibo/push/q;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushStateManager StateClosed handle"

    invoke-static {v0, v1}, Lcom/sina/weibo/push/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/push/q$b;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_1
    invoke-virtual {p0}, Lcom/sina/weibo/push/q$b;->c()V

    goto :goto_0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/sina/weibo/push/q$b;->c:Lcom/sina/weibo/push/q;

    invoke-static {v0, p1}, Lcom/sina/weibo/push/q;->a(Lcom/sina/weibo/push/q;Lcom/sina/weibo/push/a$a;)V

    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sina/weibo/push/q$b;->c:Lcom/sina/weibo/push/q;

    invoke-virtual {v0}, Lcom/sina/weibo/push/q;->a()Lcom/sina/weibo/push/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/push/b$a;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sina/weibo/push/q$b;->a()Lcom/sina/weibo/push/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sina/weibo/push/q$b;->a()Lcom/sina/weibo/push/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/push/a$a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sina/weibo/push/q$b;->c:Lcom/sina/weibo/push/q;

    iget-object v1, p0, Lcom/sina/weibo/push/q$b;->c:Lcom/sina/weibo/push/q;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sina/weibo/push/q;->a(I)Lcom/sina/weibo/push/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/push/q;->a(Lcom/sina/weibo/push/b$a;)V

    .line 279
    :cond_0
    return-void
.end method
