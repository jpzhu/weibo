.class public final Lcom/sina/weibo/sdk/internal/o$a;
.super Ljava/lang/Object;
.source "SsoRegisterController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uid"
    .parameter "gsid"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sina/weibo/sdk/internal/o$a;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/sina/weibo/sdk/internal/o$a;->b:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sina/weibo/sdk/internal/o$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sina/weibo/sdk/internal/o$a;->b:Ljava/lang/String;

    return-object v0
.end method
