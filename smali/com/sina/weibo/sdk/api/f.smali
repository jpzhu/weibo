.class final Lcom/sina/weibo/sdk/api/f;
.super Ljava/lang/Object;
.source "VoiceObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sina/weibo/sdk/api/VoiceObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/VoiceObject;
    .locals 1
    .parameter "in"

    .prologue
    .line 49
    new-instance v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/VoiceObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/sina/weibo/sdk/api/VoiceObject;
    .locals 1
    .parameter "size"

    .prologue
    .line 54
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/VoiceObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/f;->a(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/VoiceObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/f;->a(I)[Lcom/sina/weibo/sdk/api/VoiceObject;

    move-result-object v0

    return-object v0
.end method
