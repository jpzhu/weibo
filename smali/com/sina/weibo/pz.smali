.class Lcom/sina/weibo/pz;
.super Ljava/lang/Object;
.source "MessageCommentActivity.java"

# interfaces
.implements Lcom/sina/weibo/view/aj$b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/sina/weibo/MessageCommentActivity;


# virtual methods
.method public a(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sina/weibo/pz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a0191

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sina/weibo/pz;->b:Lcom/sina/weibo/MessageCommentActivity;

    invoke-static {v0}, Lcom/sina/weibo/MessageCommentActivity;->a(Lcom/sina/weibo/MessageCommentActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    iget-object v0, p0, Lcom/sina/weibo/pz;->b:Lcom/sina/weibo/MessageCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/MessageCommentActivity;->a(Lcom/sina/weibo/MessageCommentActivity;Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/pz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a01d8

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sina/weibo/pz;->b:Lcom/sina/weibo/MessageCommentActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/utils/s;->a(Landroid/content/Context;I)V

    .line 174
    iget-object v0, p0, Lcom/sina/weibo/pz;->b:Lcom/sina/weibo/MessageCommentActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/MessageCommentActivity;->finish()V

    goto :goto_0
.end method
