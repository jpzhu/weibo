.class Lcom/sina/push/packetprocess/ImageDialogBuilder$1;
.super Ljava/lang/Object;
.source "ImageDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/push/packetprocess/ImageDialogBuilder;->onBuildDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/push/packetprocess/ImageDialogBuilder;


# direct methods
.method constructor <init>(Lcom/sina/push/packetprocess/ImageDialogBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/push/packetprocess/ImageDialogBuilder$1;->this$0:Lcom/sina/push/packetprocess/ImageDialogBuilder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sina/push/packetprocess/ImageDialogBuilder$1;->this$0:Lcom/sina/push/packetprocess/ImageDialogBuilder;

    #calls: Lcom/sina/push/packetprocess/ImageDialogBuilder;->excuteAct()V
    invoke-static {v0}, Lcom/sina/push/packetprocess/ImageDialogBuilder;->access$0(Lcom/sina/push/packetprocess/ImageDialogBuilder;)V

    .line 79
    return-void
.end method
