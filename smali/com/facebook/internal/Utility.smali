.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final LOCK:Ljava/lang/Object; = null

.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static volatile attributionAllowedForLastAppChecked:Z

.field private static volatile lastAppCheckedForAttributionStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/Utility;->LOCK:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, ts:[Ljava/lang/Object;,"[TT;"
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 108
    .local v4, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v1
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .parameter "authority"
    .parameter "path"
    .parameter "parameters"

    .prologue
    .line 132
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 133
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "https"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, parameter:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 139
    check-cast v3, Ljava/lang/String;

    .end local v3           #parameter:Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 142
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "domain"

    .prologue
    .line 274
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v9

    .line 275
    .local v9, syncManager:Landroid/webkit/CookieSyncManager;
    invoke-virtual {v9}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 277
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 279
    .local v2, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, cookies:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 293
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v10, ";"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, splitCookies:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 286
    .local v1, cookie:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, cookieParts:[Ljava/lang/String;
    array-length v10, v3

    if-lez v10, :cond_1

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, newCookie:Ljava/lang/String;
    invoke-virtual {v2, p1, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v7           #newCookie:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    .end local v1           #cookie:Ljava/lang/String;
    .end local v3           #cookieParts:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0
.end method

.method public static clearFacebookCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 298
    const-string v0, "facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    const-string v0, ".facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    const-string v0, "https://facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    const-string v0, "https://.facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 190
    .local v2, keys:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 193
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 196
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 198
    :cond_0
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #key:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-object v3

    .line 199
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static disconnectQuietly(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 168
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    :cond_0
    return-void
.end method

.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 177
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v1

    .line 184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "jsonObject"
    .parameter "key"
    .parameter "nonJSONPropertyKey"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 210
    new-instance v0, Lorg/json/JSONTokener;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, tokener:Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .end local v0           #tokener:Lorg/json/JSONTokener;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    .line 215
    if-eqz p2, :cond_1

    .line 221
    new-instance p0, Lorg/json/JSONObject;

    .end local p0
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .restart local p0
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .end local p0
    :goto_0
    return-object p0

    .line 225
    .restart local p0
    :cond_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Got an unexpected non-JSON object."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object p0, v1

    .line 229
    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, subset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, superset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 81
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v3, v4

    .line 90
    :cond_2
    :goto_0
    return v3

    .line 84
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v0, hash:Ljava/util/HashSet;,"Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .end local v2           #t:Ljava/lang/Object;,"TT;"
    :cond_5
    move v3, v4

    .line 90
    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 308
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 314
    return-void
.end method

.method static md5hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 116
    .local v5, hash:Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 123
    .local v3, digest:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v1, v0, v6

    .line 125
    .local v1, b:I
    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    shr-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    .end local v0           #arr$:[B
    .end local v1           #b:I
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #digest:[B
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .line 118
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    .line 128
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v8

    .restart local v0       #arr$:[B
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #digest:[B
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "bundle"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 146
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 148
    .restart local p2
    :cond_0
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 149
    check-cast p2, Landroid/os/Parcelable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 150
    .restart local p2
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 151
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 153
    .restart local p2
    :cond_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "attempted to add unsupported type to Bundle"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static queryAppAttributionSupportAndWait(Ljava/lang/String;)Z
    .locals 9
    .parameter "applicationId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 318
    sget-object v7, Lcom/facebook/internal/Utility;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 321
    :try_start_0
    sget-object v4, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    sget-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z

    monitor-exit v7

    .line 344
    :goto_0
    return v4

    .line 325
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v3, supportsAttributionParams:Landroid/os/Bundle;
    const-string v4, "fields"

    const-string v8, "supports_attribution"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v4, p0, v8}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v1

    .line 328
    .local v1, pingRequest:Lcom/facebook/Request;
    invoke-virtual {v1, v3}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 332
    .local v2, supportResponse:Lcom/facebook/model/GraphObject;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 333
    .local v0, doesSupportAttribution:Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 334
    const-string v4, "supports_attribution"

    invoke-interface {v2, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .end local v0           #doesSupportAttribution:Ljava/lang/Boolean;
    :cond_1
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_3

    .line 339
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0       #doesSupportAttribution:Ljava/lang/Boolean;
    move-object v4, v0

    .line 342
    .end local v0           #doesSupportAttribution:Ljava/lang/Boolean;
    :goto_1
    sput-object p0, Lcom/facebook/internal/Utility;->lastAppCheckedForAttributionStatus:Ljava/lang/String;

    .line 343
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z

    .line 344
    sget-boolean v4, Lcom/facebook/internal/Utility;->attributionAllowedForLastAppChecked:Z

    monitor-exit v7

    goto :goto_0

    .line 345
    .end local v1           #pingRequest:Lcom/facebook/Request;
    .end local v2           #supportResponse:Lcom/facebook/model/GraphObject;
    .end local v3           #supportsAttributionParams:Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #pingRequest:Lcom/facebook/Request;
    .restart local v2       #supportResponse:Lcom/facebook/model/GraphObject;
    .restart local v3       #supportsAttributionParams:Landroid/os/Bundle;
    :cond_2
    move v4, v6

    .line 343
    goto :goto_2

    :cond_3
    move-object v4, v0

    goto :goto_1
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .parameter "inputStream"

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, bufferedInputStream:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 237
    .local v5, reader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    .end local v2           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .local v3, bufferedInputStream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 239
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .local v6, reader:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v7, stringBuilder:Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    .line 242
    .local v1, bufferSize:I
    const/16 v8, 0x800

    new-array v0, v8, [C

    .line 243
    .local v0, buffer:[C
    const/4 v4, 0x0

    .line 244
    .local v4, n:I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 245
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 250
    .end local v0           #buffer:[C
    .end local v1           #bufferSize:I
    .end local v4           #n:I
    .end local v7           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/InputStreamReader;
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInputStream:Ljava/io/BufferedInputStream;
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 248
    .end local v2           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #buffer:[C
    .restart local v1       #bufferSize:I
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v4       #n:I
    .restart local v6       #reader:Ljava/io/InputStreamReader;
    .restart local v7       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 250
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    .line 250
    .end local v0           #buffer:[C
    .end local v1           #bufferSize:I
    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v4           #n:I
    .end local v6           #reader:Ljava/io/InputStreamReader;
    .end local v7           #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v2       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    goto :goto_1

    .end local v2           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInputStream:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 257
    .local v0, aEmpty:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 259
    .local v1, bEmpty:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 261
    const/4 v2, 0x1

    .line 268
    :goto_0
    return v2

    .line 263
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 268
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, ts:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
