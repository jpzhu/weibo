.class Lcom/facebook/model/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/model/JsonUtil$JSONObjectEntry;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static jsonObjectClear(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method static jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z
    .locals 3
    .parameter "jsonObject"
    .parameter "value"

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, thisValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 48
    .end local v1           #thisValue:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 5
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v2, result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, value:Ljava/lang/Object;
    new-instance v4, Lcom/facebook/model/JsonUtil$JSONObjectEntry;

    invoke-direct {v4, v0, v3}, Lcom/facebook/model/JsonUtil$JSONObjectEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method static jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 3
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v1, result:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    return-object v1
.end method

.method static jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 6
    .parameter "jsonObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 105
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 112
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method static jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;
    .locals 3
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    return-object v1
.end method
