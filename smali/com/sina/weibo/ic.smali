.class Lcom/sina/weibo/ic;
.super Ljava/lang/Object;
.source "GetAccessTokenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sina/weibo/GetAccessTokenActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/GetAccessTokenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sina/weibo/ic;->a:Lcom/sina/weibo/GetAccessTokenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sina/weibo/ic;->a:Lcom/sina/weibo/GetAccessTokenActivity;

    invoke-static {v0}, Lcom/sina/weibo/GetAccessTokenActivity;->b(Lcom/sina/weibo/GetAccessTokenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/ic;->a:Lcom/sina/weibo/GetAccessTokenActivity;

    invoke-static {v1}, Lcom/sina/weibo/GetAccessTokenActivity;->a(Lcom/sina/weibo/GetAccessTokenActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    return-void
.end method
