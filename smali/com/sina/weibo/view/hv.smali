.class Lcom/sina/weibo/view/hv;
.super Ljava/lang/Object;
.source "PullDownView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sina/weibo/view/PullDownView2;


# direct methods
.method constructor <init>(Lcom/sina/weibo/view/PullDownView2;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/sina/weibo/view/hv;->a:Lcom/sina/weibo/view/PullDownView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sina/weibo/view/hv;->a:Lcom/sina/weibo/view/PullDownView2;

    iget-object v0, v0, Lcom/sina/weibo/view/PullDownView2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 882
    iget-object v0, p0, Lcom/sina/weibo/view/hv;->a:Lcom/sina/weibo/view/PullDownView2;

    iget-object v1, v0, Lcom/sina/weibo/view/PullDownView2;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sina/weibo/view/hv;->a:Lcom/sina/weibo/view/PullDownView2;

    invoke-static {v0}, Lcom/sina/weibo/view/PullDownView2;->b(Lcom/sina/weibo/view/PullDownView2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/view/hv;->a:Lcom/sina/weibo/view/PullDownView2;

    iget-object v0, v0, Lcom/sina/weibo/view/PullDownView2;->h:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
