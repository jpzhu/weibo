.class final enum Lcom/sina/weibo/business/ax$a;
.super Ljava/lang/Enum;
.source "ServiceMusicPlayImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/business/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/business/ax$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/business/ax$a;

.field public static final enum b:Lcom/sina/weibo/business/ax$a;

.field private static final synthetic c:[Lcom/sina/weibo/business/ax$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/sina/weibo/business/ax$a;

    const-string v1, "NoFocus"

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/business/ax$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/business/ax$a;->a:Lcom/sina/weibo/business/ax$a;

    new-instance v0, Lcom/sina/weibo/business/ax$a;

    const-string v1, "Focused"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/business/ax$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/business/ax$a;->b:Lcom/sina/weibo/business/ax$a;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sina/weibo/business/ax$a;

    sget-object v1, Lcom/sina/weibo/business/ax$a;->a:Lcom/sina/weibo/business/ax$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/weibo/business/ax$a;->b:Lcom/sina/weibo/business/ax$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sina/weibo/business/ax$a;->c:[Lcom/sina/weibo/business/ax$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/business/ax$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/sina/weibo/business/ax$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/business/ax$a;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/business/ax$a;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/sina/weibo/business/ax$a;->c:[Lcom/sina/weibo/business/ax$a;

    invoke-virtual {v0}, [Lcom/sina/weibo/business/ax$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sina/weibo/business/ax$a;

    return-object v0
.end method
