.class Lcom/sina/weibo/pr;
.super Ljava/lang/Object;
.source "MessageBoxSettingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/sina/weibo/MessageBoxSettingActivity$b;


# direct methods
.method constructor <init>(Lcom/sina/weibo/MessageBoxSettingActivity$b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sina/weibo/pr;->c:Lcom/sina/weibo/MessageBoxSettingActivity$b;

    iput p2, p0, Lcom/sina/weibo/pr;->a:I

    iput p3, p0, Lcom/sina/weibo/pr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/sina/weibo/pr;->c:Lcom/sina/weibo/MessageBoxSettingActivity$b;

    invoke-static {v0}, Lcom/sina/weibo/MessageBoxSettingActivity$b;->b(Lcom/sina/weibo/MessageBoxSettingActivity$b;)Landroid/widget/RadioButton;

    move-result-object v0

    iget v1, p0, Lcom/sina/weibo/pr;->a:I

    iget v2, p0, Lcom/sina/weibo/pr;->b:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 339
    return-void
.end method
