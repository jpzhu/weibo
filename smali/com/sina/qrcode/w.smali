.class final Lcom/sina/qrcode/w;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/qrcode/w$1;,
        Lcom/sina/qrcode/w$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/sina/qrcode/w$a;

    invoke-direct {v0, v1}, Lcom/sina/qrcode/w$a;-><init>(Lcom/sina/qrcode/w$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/qrcode/w;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    iput-object v1, p0, Lcom/sina/qrcode/w;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    iput-object p1, p0, Lcom/sina/qrcode/w;->b:Landroid/app/Activity;

    .line 41
    invoke-virtual {p0}, Lcom/sina/qrcode/w;->a()V

    .line 42
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sina/qrcode/w;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sina/qrcode/w;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/qrcode/w;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sina/qrcode/w;->c()V

    .line 46
    iget-object v0, p0, Lcom/sina/qrcode/w;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sina/qrcode/v;

    iget-object v2, p0, Lcom/sina/qrcode/w;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sina/qrcode/v;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/qrcode/w;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sina/qrcode/w;->c()V

    .line 60
    iget-object v0, p0, Lcom/sina/qrcode/w;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 61
    return-void
.end method
