.class Lcom/sina/weibo/sendqueue/r;
.super Ljava/lang/Object;
.source "SendServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sina/weibo/models/NonOriginalDraft;

.field final synthetic b:Lcom/sina/weibo/models/AccessCode;

.field final synthetic c:Lcom/sina/weibo/sendqueue/n;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sendqueue/n;Lcom/sina/weibo/models/NonOriginalDraft;Lcom/sina/weibo/models/AccessCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sina/weibo/sendqueue/r;->c:Lcom/sina/weibo/sendqueue/n;

    iput-object p2, p0, Lcom/sina/weibo/sendqueue/r;->a:Lcom/sina/weibo/models/NonOriginalDraft;

    iput-object p3, p0, Lcom/sina/weibo/sendqueue/r;->b:Lcom/sina/weibo/models/AccessCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sina/weibo/sendqueue/r;->c:Lcom/sina/weibo/sendqueue/n;

    iget-object v1, p0, Lcom/sina/weibo/sendqueue/r;->a:Lcom/sina/weibo/models/NonOriginalDraft;

    iget-object v2, p0, Lcom/sina/weibo/sendqueue/r;->b:Lcom/sina/weibo/models/AccessCode;

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sendqueue/n;->c(Lcom/sina/weibo/sendqueue/n;Lcom/sina/weibo/models/NonOriginalDraft;Lcom/sina/weibo/models/AccessCode;)V

    .line 325
    return-void
.end method
