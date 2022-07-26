.class public Lcom/daqomods/floodbeta/MainActivity;
.super Landroid/support/v7/app/c;


# instance fields
.field m:Landroid/widget/EditText;

.field n:Landroid/widget/EditText;

.field o:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public htu(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/daqomods/floodbeta/Tutorial;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/MainActivity;->finish()V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/daqomods/floodbeta/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/daqomods/floodbeta/MainActivity$1;-><init>(Lcom/daqomods/floodbeta/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/daqomods/floodbeta/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/daqomods/floodbeta/MainActivity$2;-><init>(Lcom/daqomods/floodbeta/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/dasqinnot;->init(Landroid/app/Activity;)V

    const v0, 0x7f06006c

    const-string v1, "Kanala git"

    const-string v2, "https://t.me/daqomods"

    invoke-static {v0, v1, v2}, Lcom/dasqinnot;->sendHello(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/MainActivity;->setContentView(I)V

    const-string p1, "com.daqomods.floodbeta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/daqomods/floodbeta/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    const p1, 0x7f07003e

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/daqomods/floodbeta/MainActivity;->m:Landroid/widget/EditText;

    const p1, 0x7f07003d

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/daqomods/floodbeta/MainActivity;->n:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/daqomods/floodbeta/MainActivity;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "message"

    const-string v2, "D\'Board otomatik klavye!"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/daqomods/floodbeta/MainActivity;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "count"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/MainActivity;->k()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f070058

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/daqomods/floodbeta/Pref;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/c;->onResume()V

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "firstrun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/daqomods/floodbeta/Tutorial;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/daqomods/floodbeta/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/daqomods/floodbeta/MainActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstrun"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/MainActivity;->finish()V

    :cond_0
    return-void
.end method
