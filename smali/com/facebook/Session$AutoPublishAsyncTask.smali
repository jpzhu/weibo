.class Lcom/facebook/Session$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPublishAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mApplicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "applicationId"
    .parameter "context"

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1515
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    .line 1516
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1509
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "voids"

    .prologue
    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/Settings;->publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Facebook-publish"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1509
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1531
    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    monitor-enter v1

    .line 1532
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
    invoke-static {v0, v2}, Lcom/facebook/Session;->access$902(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;

    .line 1533
    monitor-exit v1

    .line 1534
    return-void

    .line 1533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
