.class public Lcom/sina/weibo/utils/bv;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    .line 86
    const/4 v2, 0x0

    .line 90
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 92
    .local v5, md:Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    const/16 v7, 0x2000

    :try_start_1
    new-array v0, v7, [B

    .line 96
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 98
    .local v4, length:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 99
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 104
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 105
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #md:Ljava/security/MessageDigest;
    .local v1, ex:Ljava/io/IOException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/sina/weibo/utils/s;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v2, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 109
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v6

    .line 102
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #length:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sina/weibo/utils/bv;->b([B)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v6

    .line 112
    if-eqz v3, :cond_2

    .line 113
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_3
    move-object v2, v3

    .line 102
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 107
    .end local v0           #buffer:[B
    .end local v4           #length:I
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 108
    .local v1, ex:Ljava/security/NoSuchAlgorithmException;
    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/sina/weibo/utils/s;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 112
    if-eqz v2, :cond_0

    .line 113
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 115
    :catch_2
    move-exception v1

    .line 116
    .local v1, ex:Ljava/io/IOException;
    :goto_5
    invoke-static {v1}, Lcom/sina/weibo/utils/s;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 111
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 112
    :goto_6
    if-eqz v2, :cond_3

    .line 113
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 111
    :cond_3
    :goto_7
    throw v6

    .line 115
    :catch_3
    move-exception v1

    .line 116
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sina/weibo/utils/s;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 115
    :catch_4
    move-exception v1

    goto :goto_5

    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #length:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    :catch_5
    move-exception v1

    .line 116
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sina/weibo/utils/s;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 111
    .end local v0           #buffer:[B
    .end local v1           #ex:Ljava/io/IOException;
    .end local v4           #length:I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 107
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 104
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "string"

    .prologue
    const/16 v11, 0x10

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 v6, 0x0

    .line 32
    :goto_0
    return-object v6

    .line 14
    :cond_0
    const/4 v6, 0x0

    .line 15
    .local v6, s:Ljava/lang/String;
    new-array v1, v11, [C

    fill-array-data v1, :array_0

    .line 18
    .local v1, hexDigits:[C
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 19
    .local v5, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 21
    .local v9, tmp:[B
    const/16 v10, 0x20

    new-array v8, v10, [C

    .line 22
    .local v8, str:[C
    const/4 v3, 0x0

    .line 23
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 24
    aget-byte v0, v9, v2

    .line 25
    .local v0, byte0:B
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v1, v10

    aput-char v10, v8, v4

    .line 26
    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    and-int/lit8 v10, v0, 0xf

    aget-char v10, v1, v10

    aput-char v10, v8, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    .end local v0           #byte0:B
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #s:Ljava/lang/String;
    .local v7, s:Ljava/lang/String;
    move-object v6, v7

    .line 31
    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v8           #str:[C
    .end local v9           #tmp:[B
    :catch_0
    move-exception v10

    goto :goto_0

    .line 15
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

.method public static a(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 11
    .parameter "md"

    .prologue
    const/16 v10, 0x10

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v5, 0x0

    .line 81
    :goto_0
    return-object v5

    .line 64
    :cond_0
    const/4 v5, 0x0

    .line 65
    .local v5, s:Ljava/lang/String;
    new-array v1, v10, [C

    fill-array-data v1, :array_0

    .line 68
    .local v1, hexDigits:[C
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 69
    .local v8, tmp:[B
    const/16 v9, 0x20

    new-array v7, v9, [C

    .line 70
    .local v7, str:[C
    const/4 v3, 0x0

    .line 71
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 72
    aget-byte v0, v8, v2

    .line 73
    .local v0, byte0:B
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    ushr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    aput-char v9, v7, v4

    .line 74
    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    and-int/lit8 v9, v0, 0xf

    aget-char v9, v1, v9

    aput-char v9, v7, v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v0           #byte0:B
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #s:Ljava/lang/String;
    .local v6, s:Ljava/lang/String;
    move-object v5, v6

    .line 80
    .end local v6           #s:Ljava/lang/String;
    .restart local v5       #s:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v7           #str:[C
    .end local v8           #tmp:[B
    :catch_0
    move-exception v9

    goto :goto_0

    .line 65
    nop

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

.method public static a([B)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const/16 v11, 0x10

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v6, 0x0

    .line 57
    :goto_0
    return-object v6

    .line 39
    :cond_0
    const/4 v6, 0x0

    .line 40
    .local v6, s:Ljava/lang/String;
    new-array v1, v11, [C

    fill-array-data v1, :array_0

    .line 43
    .local v1, hexDigits:[C
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 44
    .local v5, md:Ljava/security/MessageDigest;
    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 46
    .local v9, tmp:[B
    const/16 v10, 0x20

    new-array v8, v10, [C

    .line 47
    .local v8, str:[C
    const/4 v3, 0x0

    .line 48
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 49
    aget-byte v0, v9, v2

    .line 50
    .local v0, byte0:B
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v1, v10

    aput-char v10, v8, v4

    .line 51
    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    and-int/lit8 v10, v0, 0xf

    aget-char v10, v1, v10

    aput-char v10, v8, v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v0           #byte0:B
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #s:Ljava/lang/String;
    .local v7, s:Ljava/lang/String;
    move-object v6, v7

    .line 56
    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v8           #str:[C
    .end local v9           #tmp:[B
    :catch_0
    move-exception v10

    goto :goto_0

    .line 40
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

.method public static b([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 122
    const/16 v4, 0x10

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    .line 124
    .local v1, hexDigits:[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 125
    .local v3, temp:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 126
    aget-byte v0, p0, v2

    .line 127
    .local v0, b:B
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 128
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0           #b:B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 122
    nop

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
