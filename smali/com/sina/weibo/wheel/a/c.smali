.class public Lcom/sina/weibo/wheel/a/c;
.super Lcom/sina/weibo/wheel/a/b;
.source "ArrayWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sina/weibo/wheel/a/b;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/sina/weibo/wheel/a/c;,"Lcom/sina/weibo/wheel/a/c<TT;>;"
    .local p2, items:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0, p1}, Lcom/sina/weibo/wheel/a/b;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/sina/weibo/wheel/a/c;->a:[Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/sina/weibo/wheel/a/c;,"Lcom/sina/weibo/wheel/a/c<TT;>;"
    iget-object v0, p0, Lcom/sina/weibo/wheel/a/c;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "index"

    .prologue
    .line 43
    .local p0, this:Lcom/sina/weibo/wheel/a/c;,"Lcom/sina/weibo/wheel/a/c<TT;>;"
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/wheel/a/c;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/sina/weibo/wheel/a/c;->a:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 45
    .local v0, item:Ljava/lang/Object;,"TT;"
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Ljava/lang/CharSequence;

    .line 50
    .end local v0           #item:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v0

    .line 48
    .restart local v0       #item:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    .end local v0           #item:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
