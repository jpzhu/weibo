.class Lcom/sina/weibo/adt;
.super Ljava/lang/Object;
.source "UserLoginOverseaActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/sina/weibo/UserLoginOverseaActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/UserLoginOverseaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sina/weibo/adt;->a:Lcom/sina/weibo/UserLoginOverseaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 170
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sina/weibo/adt;->a:Lcom/sina/weibo/UserLoginOverseaActivity;

    invoke-static {v0}, Lcom/sina/weibo/UserLoginOverseaActivity;->a(Lcom/sina/weibo/UserLoginOverseaActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sina/weibo/adt;->a:Lcom/sina/weibo/UserLoginOverseaActivity;

    invoke-static {v0}, Lcom/sina/weibo/UserLoginOverseaActivity;->c(Lcom/sina/weibo/UserLoginOverseaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/adt;->a:Lcom/sina/weibo/UserLoginOverseaActivity;

    invoke-static {v0}, Lcom/sina/weibo/UserLoginOverseaActivity;->c(Lcom/sina/weibo/UserLoginOverseaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
