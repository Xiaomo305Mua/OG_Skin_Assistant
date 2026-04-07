.class public Lcom/coloros/gamespaceui/helper/c;
.super Ljava/lang/Object;

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static g()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "/data/og_skin_assistant/ogsa_skin.txt"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "naruto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v1, "genshin-xiangling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v1, "genshin-keqing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v1, "genshin-shenlilinghua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v1, "genshin-hutao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    :cond_4c
    const-string v0, ""

    return-object v0

    :cond_4f
    const-string v0, "naruto"

    return-object v0

    :cond_52
    const-string v0, "genshin-xiangling"

    return-object v0

    :cond_55
    const-string v0, "genshin-keqing"

    return-object v0

    :cond_58
    const-string v0, "genshin-shenlilinghua"

    return-object v0

    :cond_5b
    const-string v0, "genshin-hutao"

    return-object v0
.end method