.class final Lcom/sina/weibo/sdk/api/d;
.super Ljava/lang/Object;
.source "TextObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sina/weibo/sdk/api/TextObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1
    .parameter "in"

    .prologue
    .line 29
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/sina/weibo/sdk/api/TextObject;
    .locals 1
    .parameter "size"

    .prologue
    .line 34
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/TextObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/d;->a(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/d;->a(I)[Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v0

    return-object v0
.end method
