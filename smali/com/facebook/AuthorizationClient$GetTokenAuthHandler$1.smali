.class Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/GetTokenClient$CompletedListener;


# instance fields
.field final synthetic this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

.field final synthetic val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V

    .line 546
    return-void
.end method
