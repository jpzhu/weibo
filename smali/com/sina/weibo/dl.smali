.class Lcom/sina/weibo/dl;
.super Ljava/lang/Object;
.source "DetailWeiboActivity.java"

# interfaces
.implements Lcom/sina/weibo/utils/fd$n;


# instance fields
.field final synthetic a:Lcom/sina/weibo/DetailWeiboActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/DetailWeiboActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2914
    iput-object p1, p0, Lcom/sina/weibo/dl;->a:Lcom/sina/weibo/DetailWeiboActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZ)V
    .locals 4
    .parameter "isLeftClick"
    .parameter "isMidClick"
    .parameter "isRightClick"

    .prologue
    .line 2919
    if-eqz p1, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/sina/weibo/dl;->a:Lcom/sina/weibo/DetailWeiboActivity;

    invoke-static {v0}, Lcom/sina/weibo/DetailWeiboActivity;->A(Lcom/sina/weibo/DetailWeiboActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2922
    :cond_0
    return-void
.end method
