.class Lcom/sina/weibo/ImagePreviewActivity$b;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/ImagePreviewActivity;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/ImagePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/ImagePreviewActivity;Lcom/sina/weibo/lv;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/sina/weibo/ImagePreviewActivity$b;-><init>(Lcom/sina/weibo/ImagePreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 362
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget-object v4, v4, Lcom/sina/weibo/ImagePreviewActivity;->z:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    invoke-virtual {v4}, Lcom/sina/weibo/ImagePreviewActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    invoke-virtual {v4}, Lcom/sina/weibo/ImagePreviewActivity;->o()F

    move-result v0

    .line 367
    .local v0, currentScale:F
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget-object v4, v4, Lcom/sina/weibo/ImagePreviewActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v2, v4

    .line 368
    .local v2, srcWidth:I
    add-int/lit8 v4, v2, 0x0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v3, v4, v5

    .line 369
    .local v3, targetScale:F
    mul-float v4, v0, v3

    float-to-double v5, v4

    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget-object v7, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget v7, v7, Lcom/sina/weibo/ImagePreviewActivity;->b:I

    invoke-virtual {v4, v7}, Lcom/sina/weibo/ImagePreviewActivity;->e(I)Landroid/widget/ImageView;

    move-result-object v4

    check-cast v4, Lcom/sina/weibo/view/SplitTouchImageView;

    invoke-virtual {v4}, Lcom/sina/weibo/view/SplitTouchImageView;->i()F

    move-result v4

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-lez v4, :cond_2

    .line 370
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 371
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget-object v5, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget v5, v5, Lcom/sina/weibo/ImagePreviewActivity;->b:I

    invoke-virtual {v4, v5}, Lcom/sina/weibo/ImagePreviewActivity;->e(I)Landroid/widget/ImageView;

    move-result-object v4

    check-cast v4, Lcom/sina/weibo/view/SplitTouchImageView;

    invoke-virtual {v4}, Lcom/sina/weibo/view/SplitTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 372
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 373
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget-object v5, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    iget v5, v5, Lcom/sina/weibo/ImagePreviewActivity;->b:I

    invoke-virtual {v4, v5}, Lcom/sina/weibo/ImagePreviewActivity;->e(I)Landroid/widget/ImageView;

    move-result-object v4

    check-cast v4, Lcom/sina/weibo/view/SplitTouchImageView;

    invoke-virtual {v4, v1}, Lcom/sina/weibo/view/SplitTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 375
    .end local v1           #matrix:Landroid/graphics/Matrix;
    :cond_2
    iget-object v4, p0, Lcom/sina/weibo/ImagePreviewActivity$b;->a:Lcom/sina/weibo/ImagePreviewActivity;

    invoke-static {v4}, Lcom/sina/weibo/ImagePreviewActivity;->a(Lcom/sina/weibo/ImagePreviewActivity;)V

    goto :goto_0
.end method
