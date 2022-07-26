.class Lcom/daqomods/floodbeta/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daqomods/floodbeta/MainActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/daqomods/floodbeta/MainActivity;


# direct methods
.method constructor <init>(Lcom/daqomods/floodbeta/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/daqomods/floodbeta/MainActivity$1;->a:Lcom/daqomods/floodbeta/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/daqomods/floodbeta/MainActivity$1;->a:Lcom/daqomods/floodbeta/MainActivity;

    iget-object p1, p1, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "message"

    iget-object v1, p0, Lcom/daqomods/floodbeta/MainActivity$1;->a:Lcom/daqomods/floodbeta/MainActivity;

    iget-object v1, v1, Lcom/daqomods/floodbeta/MainActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
