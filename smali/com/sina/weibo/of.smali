.class public Lcom/sina/weibo/of;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sina/weibo/of;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 14
    .local v0, s:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/of;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    .line 16
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 11
    .parameter "bytes"

    .prologue
    .line 22
    const/4 v5, 0x0

    .line 24
    .local v5, s:Ljava/lang/String;
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 25
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 27
    .local v8, tmp:[B
    const/16 v9, 0x20

    new-array v7, v9, [C

    .line 28
    .local v7, str:[C
    const/4 v2, 0x0

    .line 29
    .local v2, k:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_0
    const/16 v9, 0x10

    if-ge v1, v9, :cond_0

    .line 30
    aget-byte v0, v8, v1

    .line 31
    .local v0, byte0:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    sget-object v9, Lcom/sina/weibo/of;->a:[C

    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v7, v3

    .line 32
    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    sget-object v9, Lcom/sina/weibo/of;->a:[C

    and-int/lit8 v10, v0, 0xf

    aget-char v9, v9, v10

    aput-char v9, v7, v2

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0           #byte0:B
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #s:Ljava/lang/String;
    .local v6, s:Ljava/lang/String;
    move-object v5, v6

    .line 38
    .end local v1           #i:I
    .end local v3           #k:I
    .end local v4           #md:Ljava/security/MessageDigest;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #str:[C
    .end local v8           #tmp:[B
    .restart local v5       #s:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 36
    :catch_0
    move-exception v9

    goto :goto_1
.end method
