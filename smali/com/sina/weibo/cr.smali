.class Lcom/sina/weibo/cr;
.super Ljava/lang/Object;
.source "ContactsSynActivity.java"

# interfaces
.implements Lcom/sina/weibo/view/aj$b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/sina/weibo/ContactsSynActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/ContactsSynActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sina/weibo/cr;->b:Lcom/sina/weibo/ContactsSynActivity;

    iput-object p2, p0, Lcom/sina/weibo/cr;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sina/weibo/cr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a05bf

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sina/weibo/cr;->b:Lcom/sina/weibo/ContactsSynActivity;

    invoke-static {v0}, Lcom/sina/weibo/ContactsSynActivity;->e(Lcom/sina/weibo/ContactsSynActivity;)V

    .line 218
    :cond_0
    return-void
.end method
