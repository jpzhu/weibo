.class Lcom/facebook/Request$5;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# instance fields
.field final synthetic this$0:Lcom/facebook/Request;

.field final synthetic val$keysAndValues:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/facebook/Request$5;->this$0:Lcom/facebook/Request;

    iput-object p2, p0, Lcom/facebook/Request$5;->val$keysAndValues:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/facebook/Request$5;->val$keysAndValues:Ljava/util/ArrayList;

    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    return-void
.end method
