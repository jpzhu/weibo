.class public Lcom/sina/weibo/j/e;
.super Lcom/sina/weibo/j/h;
.source "TitleClickableSpan.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/sina/weibo/models/Status;

.field private e:Lcom/sina/weibo/models/StatisticInfo4Serv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/models/Status;)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "mBlog"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sina/weibo/j/h;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sina/weibo/j/e;->b:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sina/weibo/j/e;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/sina/weibo/j/e;->d:Lcom/sina/weibo/models/Status;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/sina/weibo/models/StatisticInfo4Serv;)V
    .locals 0
    .parameter "statisticInfo"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sina/weibo/j/e;->e:Lcom/sina/weibo/models/StatisticInfo4Serv;

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter "schema"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sina/weibo/j/e;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "widget"

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/sina/weibo/j/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v2, b:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sina/weibo/j/e;->e:Lcom/sina/weibo/models/StatisticInfo4Serv;

    invoke-static {v0, v2}, Lcom/sina/weibo/utils/eb;->a(Lcom/sina/weibo/models/StatisticInfo4Serv;Landroid/os/Bundle;)V

    .line 45
    const/4 v6, 0x0

    .line 46
    .local v6, mark:Ljava/lang/String;
    iget-object v0, p0, Lcom/sina/weibo/j/e;->d:Lcom/sina/weibo/models/Status;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/j/e;->d:Lcom/sina/weibo/models/Status;

    invoke-virtual {v0}, Lcom/sina/weibo/models/Status;->getMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sina/weibo/j/e;->d:Lcom/sina/weibo/models/Status;

    invoke-virtual {v1}, Lcom/sina/weibo/models/Status;->getMblogType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/j/e;->d:Lcom/sina/weibo/models/Status;

    invoke-virtual {v1}, Lcom/sina/weibo/models/Status;->getMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    const-string v0, "mark"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    const-string v0, "506"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sina/weibo/log/x;

    iget-object v4, p0, Lcom/sina/weibo/j/e;->e:Lcom/sina/weibo/models/StatisticInfo4Serv;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/sina/weibo/log/u;->a(Ljava/lang/String;[Lcom/sina/weibo/log/x;)V

    .line 54
    iget-object v0, p0, Lcom/sina/weibo/j/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/j/e;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/utils/dl;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_0
.end method
