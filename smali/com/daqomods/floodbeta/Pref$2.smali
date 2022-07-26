.class Lcom/daqomods/floodbeta/Pref$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daqomods/floodbeta/Pref;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/daqomods/floodbeta/Pref;


# direct methods
.method constructor <init>(Lcom/daqomods/floodbeta/Pref;)V
    .locals 0

    iput-object p1, p0, Lcom/daqomods/floodbeta/Pref$2;->a:Lcom/daqomods/floodbeta/Pref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/daqomods/floodbeta/Pref$2;->a:Lcom/daqomods/floodbeta/Pref;

    iget-object p1, p1, Lcom/daqomods/floodbeta/Pref;->o:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "last_message"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
