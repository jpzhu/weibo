.class Lcom/sina/weibo/kw;
.super Ljava/lang/Object;
.source "HomeListActivity.java"

# interfaces
.implements Lcom/sina/weibo/view/ie$a;


# instance fields
.field final synthetic a:Lcom/sina/weibo/kv;


# direct methods
.method constructor <init>(Lcom/sina/weibo/kv;)V
    .locals 0
    .parameter

    .prologue
    .line 3483
    iput-object p1, p0, Lcom/sina/weibo/kw;->a:Lcom/sina/weibo/kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sina/weibo/models/Trend;)V
    .locals 1
    .parameter "buttonType"
    .parameter "trend"

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/sina/weibo/kw;->a:Lcom/sina/weibo/kv;

    iget-object v0, v0, Lcom/sina/weibo/kv;->a:Lcom/sina/weibo/HomeListActivity$p;

    invoke-static {v0}, Lcom/sina/weibo/HomeListActivity$p;->d(Lcom/sina/weibo/HomeListActivity$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3488
    iget-object v0, p0, Lcom/sina/weibo/kw;->a:Lcom/sina/weibo/kv;

    iget-object v0, v0, Lcom/sina/weibo/kv;->a:Lcom/sina/weibo/HomeListActivity$p;

    iget-object v0, v0, Lcom/sina/weibo/HomeListActivity$p;->a:Lcom/sina/weibo/HomeListActivity;

    invoke-static {v0}, Lcom/sina/weibo/HomeListActivity;->i(Lcom/sina/weibo/HomeListActivity;)Lcom/sina/weibo/HomeListActivity$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/HomeListActivity$p;->g()V

    .line 3489
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sina/weibo/models/Trend;)V
    .locals 0
    .parameter "buttonType"
    .parameter "trend"

    .prologue
    .line 3495
    return-void
.end method
