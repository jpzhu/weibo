.class public final enum Lcom/sina/weibo/net/o$c;
.super Ljava/lang/Enum;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/net/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/net/o$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/net/o$c;

.field public static final enum b:Lcom/sina/weibo/net/o$c;

.field public static final enum c:Lcom/sina/weibo/net/o$c;

.field private static final synthetic d:[Lcom/sina/weibo/net/o$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/sina/weibo/net/o$c;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/net/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/net/o$c;->a:Lcom/sina/weibo/net/o$c;

    new-instance v0, Lcom/sina/weibo/net/o$c;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/net/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/net/o$c;->b:Lcom/sina/weibo/net/o$c;

    new-instance v0, Lcom/sina/weibo/net/o$c;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/net/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/net/o$c;->c:Lcom/sina/weibo/net/o$c;

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sina/weibo/net/o$c;

    sget-object v1, Lcom/sina/weibo/net/o$c;->a:Lcom/sina/weibo/net/o$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/weibo/net/o$c;->b:Lcom/sina/weibo/net/o$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/net/o$c;->c:Lcom/sina/weibo/net/o$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sina/weibo/net/o$c;->d:[Lcom/sina/weibo/net/o$c;

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
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/net/o$c;
    .locals 1
    .parameter "name"

    .prologue
    .line 164
    const-class v0, Lcom/sina/weibo/net/o$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/net/o$c;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/net/o$c;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/sina/weibo/net/o$c;->d:[Lcom/sina/weibo/net/o$c;

    invoke-virtual {v0}, [Lcom/sina/weibo/net/o$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sina/weibo/net/o$c;

    return-object v0
.end method
