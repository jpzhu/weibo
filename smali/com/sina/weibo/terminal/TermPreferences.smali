.class public Lcom/sina/weibo/terminal/TermPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TermPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/sina/weibo/terminal/TermPreferences;->addPreferencesFromResource(I)V

    .line 32
    return-void
.end method
