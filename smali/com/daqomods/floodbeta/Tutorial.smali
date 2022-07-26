.class public Lcom/daqomods/floodbeta/Tutorial;
.super Landroid/support/v7/app/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public con_app(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/daqomods/floodbeta/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Tutorial;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/Tutorial;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Ldasqin/boss/bossdasqin;->release(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Tutorial;->setContentView(I)V

    return-void
.end method

.method public openSt(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Tutorial;->startActivity(Landroid/content/Intent;)V

    const-string p1, "D\'Board\u0131 ektinle\u015ftir ve geri d\u00f6n"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public selectKeyboard(Landroid/view/View;)V
    .locals 1

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Tutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    const-string p1, "D\'Board\u0131 se\u00e7"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
