.class Lcom/sina/weibo/view/LocationItemView$a;
.super Landroid/os/AsyncTask;
.source "LocationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/view/LocationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/view/LocationItemView;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/view/LocationItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/view/LocationItemView;Lcom/sina/weibo/view/LocationItemView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/sina/weibo/view/LocationItemView$a;-><init>(Lcom/sina/weibo/view/LocationItemView;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)V
    .locals 0
    .parameter "unused"

    .prologue
    .line 169
    return-void
.end method

.method protected varargs a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 150
    aget-object v7, p1, v1

    check-cast v7, Lcom/sina/weibo/models/POILocation;

    .line 151
    .local v7, location:Lcom/sina/weibo/models/POILocation;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    .line 152
    .local v8, objs:[Ljava/lang/Object;
    iget-object v0, v7, Lcom/sina/weibo/models/POILocation;->icon:Ljava/lang/String;

    aput-object v0, v8, v1

    .line 154
    const/4 v9, 0x1

    :try_start_0
    iget-object v0, v7, Lcom/sina/weibo/models/POILocation;->icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v1}, Lcom/sina/weibo/view/LocationItemView;->a(Lcom/sina/weibo/view/LocationItemView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->b(Lcom/sina/weibo/view/LocationItemView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/sina/weibo/utils/p;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/utils/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v8, v9

    .line 156
    const/4 v0, 0x1

    aget-object v0, v8, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, v8, v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/sina/weibo/utils/m;->a()Lcom/sina/weibo/utils/m;

    move-result-object v1

    iget-object v2, v7, Lcom/sina/weibo/models/POILocation;->icon:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v8, v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/utils/m;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-object v8

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, err:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    aput-object v0, v8, v10

    .line 162
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected b([Ljava/lang/Object;)V
    .locals 7
    .parameter "ret"

    .prologue
    const/4 v6, 0x0

    .line 173
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v0, p1, v2

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->c(Lcom/sina/weibo/view/LocationItemView;)Lcom/sina/weibo/models/POILocation;

    move-result-object v2

    iget-object v2, v2, Lcom/sina/weibo/models/POILocation;->icon:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->c(Lcom/sina/weibo/view/LocationItemView;)Lcom/sina/weibo/models/POILocation;

    move-result-object v2

    iget-object v2, v2, Lcom/sina/weibo/models/POILocation;->icon:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->d(Lcom/sina/weibo/view/LocationItemView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->d(Lcom/sina/weibo/view/LocationItemView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->d(Lcom/sina/weibo/view/LocationItemView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    iget-object v4, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v4}, Lcom/sina/weibo/view/LocationItemView;->e(Lcom/sina/weibo/view/LocationItemView;)Lcom/sina/weibo/k/a;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v5}, Lcom/sina/weibo/view/LocationItemView;->c(Lcom/sina/weibo/view/LocationItemView;)Lcom/sina/weibo/models/POILocation;

    move-result-object v5

    iget-object v5, v5, Lcom/sina/weibo/models/POILocation;->category:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sina/weibo/view/LocationItemView;->a(Lcom/sina/weibo/view/LocationItemView;Lcom/sina/weibo/k/a;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v2, p0, Lcom/sina/weibo/view/LocationItemView$a;->a:Lcom/sina/weibo/view/LocationItemView;

    invoke-static {v2}, Lcom/sina/weibo/view/LocationItemView;->d(Lcom/sina/weibo/view/LocationItemView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/sina/weibo/view/LocationItemView$a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/view/LocationItemView$a;->b([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/view/LocationItemView$a;->a([Ljava/lang/Void;)V

    return-void
.end method
