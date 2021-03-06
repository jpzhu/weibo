.class public final Lcom/sina/push/utils/RecordHelper;
.super Ljava/lang/Object;
.source "RecordHelper.java"


# static fields
.field public static appId:Ljava/lang/String;

.field private static instance:Lcom/sina/push/utils/RecordHelper;


# instance fields
.field private filename:Ljava/lang/String;

.field private logFile:Ljava/io/File;

.field private output:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/sina/push/utils/RecordHelper;->appId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/sina/push/utils/RecordHelper;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/push/utils/RecordHelper;->open(Ljava/lang/String;)Z

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/sina/push/utils/RecordHelper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sina/push/utils/RecordHelper;->instance:Lcom/sina/push/utils/RecordHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sina/push/utils/RecordHelper;

    invoke-direct {v0}, Lcom/sina/push/utils/RecordHelper;-><init>()V

    sput-object v0, Lcom/sina/push/utils/RecordHelper;->instance:Lcom/sina/push/utils/RecordHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/sina/push/utils/RecordHelper;->instance:Lcom/sina/push/utils/RecordHelper;

    return-object v0
.end method

.method private getTimeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "datetype"

    .prologue
    .line 114
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, calendarLocal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private open(Ljava/lang/String;)Z
    .locals 9
    .parameter "sFileName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, path:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v4

    .line 46
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/ASinaPush/log/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, logPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 54
    :cond_3
    const-string v6, "yyyy-MM-dd"

    invoke-direct {p0, v6}, Lcom/sina/push/utils/RecordHelper;->getTimeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, sDateStr:Ljava/lang/String;
    sget-object v6, Lcom/sina/push/utils/RecordHelper;->appId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-app-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sina/push/utils/RecordHelper;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    .end local v3           #sDateStr:Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sina/push/utils/RecordHelper;->logFile:Ljava/io/File;

    .line 66
    iget-object v6, p0, Lcom/sina/push/utils/RecordHelper;->logFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 67
    iget-object v6, p0, Lcom/sina/push/utils/RecordHelper;->logFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 69
    :cond_4
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/sina/push/utils/RecordHelper;->logFile:Ljava/io/File;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v6, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    iget-object v6, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    if-eqz v6, :cond_0

    move v4, v5

    .line 78
    goto/16 :goto_0

    .line 62
    :cond_5
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_1

    .line 71
    .end local v1           #logPath:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 73
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized writeLog(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sina/push/utils/RecordHelper;->filename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sina/push/utils/RecordHelper;->open(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    if-eqz v3, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v4}, Lcom/sina/push/utils/RecordHelper;->getTimeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, content:Ljava/lang/String;
    iget-object v3, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 102
    iget-object v3, p0, Lcom/sina/push/utils/RecordHelper;->output:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 104
    .end local v0           #content:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sina/push/utils/RecordHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, ee:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UnsupportedEncodingException:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    .end local v1           #ee:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    :catch_1
    move-exception v2

    .line 108
    .local v2, ioe:Ljava/io/IOException;
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOerror:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
