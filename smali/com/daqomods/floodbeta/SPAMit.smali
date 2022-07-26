.class public Lcom/daqomods/floodbeta/SPAMit;
.super Landroid/inputmethodservice/InputMethodService;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:Landroid/view/inputmethod/InputConnection;

.field g:Z

.field private h:Landroid/inputmethodservice/KeyboardView;

.field private i:Landroid/inputmethodservice/Keyboard;

.field private j:Landroid/inputmethodservice/Keyboard;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/daqomods/floodbeta/SPAMit;->g:Z

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/daqomods/floodbeta/SPAMit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/daqomods/floodbeta/SPAMit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 6

    const-string v0, "com.daqomods.floodbeta"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/daqomods/floodbeta/SPAMit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v2, "message"

    const-string v3, "D\'Board otomatik klavye!"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v2, "count"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/daqomods/floodbeta/SPAMit;->c:I

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v2, "toSend"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/daqomods/floodbeta/SPAMit;->d:I

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v2, "counter"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/SPAMit;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/SPAMit;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f09001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v2, 0x7f0e0002

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->i:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const/high16 v2, 0x7f0e0000

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->j:Landroid/inputmethodservice/Keyboard;

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/daqomods/floodbeta/SPAMit;->i:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->d:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "counter"

    iget v5, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    iget-object v4, p0, Lcom/daqomods/floodbeta/SPAMit;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->d:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v4, "last_message"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    const-string v4, "D\'Board otomatik klavye indirme linki: t.me/daqomods"

    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->f:Landroid/view/inputmethod/InputConnection;

    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    iget v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "counter"

    iget v2, p0, Lcom/daqomods/floodbeta/SPAMit;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "toSend"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public onKey(I[I)V
    .locals 5

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/SPAMit;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    iget-object v0, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/daqomods/floodbeta/SPAMit;->a()V

    :cond_0
    const/16 v0, 0x42

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_3

    :pswitch_0
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v3, "message"

    const-string v4, "D\'Board otomatik klavye!"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    const-string v3, "count"

    const/16 v4, 0x1e

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/daqomods/floodbeta/SPAMit;->c:I

    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "toSend"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "counter"

    iget v4, p0, Lcom/daqomods/floodbeta/SPAMit;->c:I

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->b:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {p2, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    :goto_0
    invoke-interface {p2, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_3

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/SPAMit;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/daqomods/floodbeta/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/SPAMit;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_4
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/SPAMit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_3

    :pswitch_5
    iget-boolean p1, p0, Lcom/daqomods/floodbeta/SPAMit;->g:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object p2, p0, Lcom/daqomods/floodbeta/SPAMit;->j:Landroid/inputmethodservice/Keyboard;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/daqomods/floodbeta/SPAMit;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object p2, p0, Lcom/daqomods/floodbeta/SPAMit;->i:Landroid/inputmethodservice/Keyboard;

    goto :goto_1

    :goto_2
    iget-boolean p1, p0, Lcom/daqomods/floodbeta/SPAMit;->g:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/daqomods/floodbeta/SPAMit;->g:Z

    :goto_3
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3ec
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPress(I)V
    .locals 0

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/SPAMit;->onCreateInputView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/SPAMit;->setInputView(Landroid/view/View;)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
