.class public final enum Lcom/iflytek/msc/c/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/msc/c/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/msc/c/b$a;

.field public static final enum b:Lcom/iflytek/msc/c/b$a;

.field public static final enum c:Lcom/iflytek/msc/c/b$a;

.field private static final synthetic d:[Lcom/iflytek/msc/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/msc/c/b$a;

    const-string v1, "noResult"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/c/b$a;->a:Lcom/iflytek/msc/c/b$a;

    new-instance v0, Lcom/iflytek/msc/c/b$a;

    const-string v1, "hasResult"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/msc/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/c/b$a;->b:Lcom/iflytek/msc/c/b$a;

    new-instance v0, Lcom/iflytek/msc/c/b$a;

    const-string v1, "resultOver"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/msc/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/c/b$a;->c:Lcom/iflytek/msc/c/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/msc/c/b$a;

    sget-object v1, Lcom/iflytek/msc/c/b$a;->a:Lcom/iflytek/msc/c/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/msc/c/b$a;->b:Lcom/iflytek/msc/c/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/msc/c/b$a;->c:Lcom/iflytek/msc/c/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/msc/c/b$a;->d:[Lcom/iflytek/msc/c/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/msc/c/b$a;
    .locals 1

    const-class v0, Lcom/iflytek/msc/c/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/msc/c/b$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/msc/c/b$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/iflytek/msc/c/b$a;->d:[Lcom/iflytek/msc/c/b$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/iflytek/msc/c/b$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
