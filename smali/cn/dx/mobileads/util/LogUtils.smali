.class public final Lcn/dx/mobileads/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static enableDebug:Z

.field private static isCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcn/dx/mobileads/util/LogUtils;->enableDebug:Z

    .line 10
    sput-boolean v0, Lcn/dx/mobileads/util/LogUtils;->isCheck:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 13
    const-string v0, "DxAds"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "DxAds"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 19
    const-string v0, "DxAds"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "DxAds"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "s"
    .parameter "t"

    .prologue
    .line 25
    const-string v0, "DxAds"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "DxAds"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 31
    const-string v0, "DxAds"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "DxAds"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "s"
    .parameter "t"

    .prologue
    .line 37
    const-string v0, "DxAds"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "DxAds"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static isEnableDebug()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 75
    sget-boolean v2, Lcn/dx/mobileads/util/LogUtils;->isCheck:Z

    if-nez v2, :cond_0

    .line 76
    sput-boolean v3, Lcn/dx/mobileads/util/LogUtils;->isCheck:Z

    .line 78
    :try_start_0
    invoke-static {}, Lcn/dx/mobileads/util/AdUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, adCache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v2, ".debug"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v1, debugFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x1

    sput-boolean v2, Lcn/dx/mobileads/util/LogUtils;->enableDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #debugFile:Ljava/io/File;
    :cond_0
    :goto_0
    sget-boolean v2, Lcn/dx/mobileads/util/LogUtils;->enableDebug:Z

    return v2

    .line 85
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .parameter "s"
    .parameter "level"

    .prologue
    .line 62
    sget-boolean v0, Lcn/dx/mobileads/util/LogUtils;->enableDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 71
    sput-boolean p0, Lcn/dx/mobileads/util/LogUtils;->enableDebug:Z

    .line 72
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 43
    const-string v0, "DxAds"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "DxAds"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 49
    const-string v0, "DxAds"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "DxAds"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "s"
    .parameter "t"

    .prologue
    .line 55
    const-string v0, "DxAds"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcn/dx/mobileads/util/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "DxAds"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method
