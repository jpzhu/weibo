.class Lcom/sina/weibo/abr;
.super Ljava/lang/Object;
.source "SquareActivity.java"

# interfaces
.implements Lcom/sina/weibo/utils/fd$n;


# instance fields
.field final synthetic a:Lcom/sina/weibo/SquareActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/SquareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/sina/weibo/abr;->a:Lcom/sina/weibo/SquareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZ)V
    .locals 3
    .parameter "isLeftClick"
    .parameter "isMidClick"
    .parameter "isRightClick"

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sina/weibo/abr;->a:Lcom/sina/weibo/SquareActivity;

    iget-object v1, p0, Lcom/sina/weibo/abr;->a:Lcom/sina/weibo/SquareActivity;

    iget-boolean v1, v1, Lcom/sina/weibo/SquareActivity;->Q:Z

    sget-object v2, Lcom/sina/weibo/abu;->b:Lcom/sina/weibo/models/User;

    iget-object v2, v2, Lcom/sina/weibo/models/User;->uid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/utils/s;->a(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 655
    :cond_0
    return-void
.end method
