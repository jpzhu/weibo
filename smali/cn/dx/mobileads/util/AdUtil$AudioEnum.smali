.class public final enum Lcn/dx/mobileads/util/AdUtil$AudioEnum;
.super Ljava/lang/Enum;
.source "AdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dx/mobileads/util/AdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dx/mobileads/util/AdUtil$AudioEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum EMULATOR:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum HEADPHONES:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum INVALID:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum OTHER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum SPEAKER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

.field public static final enum VIBRATE:Lcn/dx/mobileads/util/AdUtil$AudioEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1589
    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->INVALID:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v4}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->SPEAKER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "HEADPHONES"

    invoke-direct {v0, v1, v5}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->HEADPHONES:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v6}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->VIBRATE:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v7}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->EMULATOR:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    new-instance v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/dx/mobileads/util/AdUtil$AudioEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->OTHER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    .line 1588
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    sget-object v1, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->INVALID:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->SPEAKER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->HEADPHONES:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->VIBRATE:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->EMULATOR:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->OTHER:Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->$VALUES:[Lcn/dx/mobileads/util/AdUtil$AudioEnum;

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
    .line 1588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dx/mobileads/util/AdUtil$AudioEnum;
    .locals 1
    .parameter "name"

    .prologue
    .line 1588
    const-class v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    return-object v0
.end method

.method public static values()[Lcn/dx/mobileads/util/AdUtil$AudioEnum;
    .locals 1

    .prologue
    .line 1588
    sget-object v0, Lcn/dx/mobileads/util/AdUtil$AudioEnum;->$VALUES:[Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    invoke-virtual {v0}, [Lcn/dx/mobileads/util/AdUtil$AudioEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dx/mobileads/util/AdUtil$AudioEnum;

    return-object v0
.end method
