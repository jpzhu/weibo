.class abstract Lcom/sina/weibo/l/d$d;
.super Ljava/lang/Object;
.source "ExtendedAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/l/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 348
    .local p0, this:Lcom/sina/weibo/l/d$d;,"Lcom/sina/weibo/l/d$d<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/16 v0, 0xa

    iput v0, p0, Lcom/sina/weibo/l/d$d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/l/e;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    .local p0, this:Lcom/sina/weibo/l/d$d;,"Lcom/sina/weibo/l/d$d<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/sina/weibo/l/d$d;-><init>()V

    return-void
.end method
