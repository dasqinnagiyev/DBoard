.class public Lcom/daqomods/floodbeta/Pref;
.super Landroid/support/v7/app/c;


# instance fields
.field m:Landroid/widget/Switch;

.field n:Landroid/widget/Switch;

.field o:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->o:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->m:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->m:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->o:Landroid/content/SharedPreferences;

    const-string v3, "last_message"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->n:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->n:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->m:Landroid/widget/Switch;

    new-instance v1, Lcom/daqomods/floodbeta/Pref$1;

    invoke-direct {v1, p0}, Lcom/daqomods/floodbeta/Pref$1;-><init>(Lcom/daqomods/floodbeta/Pref;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/daqomods/floodbeta/Pref;->n:Landroid/widget/Switch;

    new-instance v1, Lcom/daqomods/floodbeta/Pref$2;

    invoke-direct {v1, p0}, Lcom/daqomods/floodbeta/Pref$2;-><init>(Lcom/daqomods/floodbeta/Pref;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Pref;->setContentView(I)V

    const p1, 0x7f07008c

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Pref;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/daqomods/floodbeta/Pref;->m:Landroid/widget/Switch;

    const p1, 0x7f07008b

    invoke-virtual {p0, p1}, Lcom/daqomods/floodbeta/Pref;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/daqomods/floodbeta/Pref;->n:Landroid/widget/Switch;

    const-string p1, "com.daqomods.floodbeta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/daqomods/floodbeta/Pref;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/daqomods/floodbeta/Pref;->o:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/Pref;->k()V

    invoke-virtual {p0}, Lcom/daqomods/floodbeta/Pref;->l()V

    return-void
.end method
