.class Lcom/sina/weibo/weiyou/j;
.super Ljava/lang/Object;
.source "DMChatMessageBar.java"

# interfaces
.implements Lcom/sina/weibo/models/AddAppItem$AppClickAction;


# instance fields
.field final synthetic a:Lcom/sina/weibo/weiyou/DMChatMessageBar;


# direct methods
.method constructor <init>(Lcom/sina/weibo/weiyou/DMChatMessageBar;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sina/weibo/weiyou/j;->a:Lcom/sina/weibo/weiyou/DMChatMessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sina/weibo/weiyou/j;->a:Lcom/sina/weibo/weiyou/DMChatMessageBar;

    invoke-static {v0}, Lcom/sina/weibo/weiyou/DMChatMessageBar;->e(Lcom/sina/weibo/weiyou/DMChatMessageBar;)Lcom/sina/weibo/weiyou/DMChatMessageBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sina/weibo/weiyou/j;->a:Lcom/sina/weibo/weiyou/DMChatMessageBar;

    invoke-static {v0}, Lcom/sina/weibo/weiyou/DMChatMessageBar;->e(Lcom/sina/weibo/weiyou/DMChatMessageBar;)Lcom/sina/weibo/weiyou/DMChatMessageBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/weiyou/DMChatMessageBar$a;->b()V

    .line 476
    iget-object v0, p0, Lcom/sina/weibo/weiyou/j;->a:Lcom/sina/weibo/weiyou/DMChatMessageBar;

    invoke-static {v0}, Lcom/sina/weibo/weiyou/DMChatMessageBar;->e(Lcom/sina/weibo/weiyou/DMChatMessageBar;)Lcom/sina/weibo/weiyou/DMChatMessageBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/weiyou/DMChatMessageBar$a;->g()V

    .line 478
    :cond_0
    return-void
.end method
