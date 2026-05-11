Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0805BCD37B7
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 03:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AvBCIp1aHvLRQKDkTOPtZhE7USc4gLiUf7yCrEe8X7Q=; b=moTa6aCzEo1gYP
	Be34dwZv/pruQjyAK/E4iyd2scMspFLYrw2u3Oxv2RmVmxBLwvcedvAKpxCDrwbIJZ60PPzRNPpyE
	nh+cDzasg5FPfrSQDbm9l90QJt7QB2cIMdWCUJigpklEn29bG7Khp4T1h3qpODqcQRFsB3mBE68BJ
	g6f9Q4hHh7AsJzoifACyoeiDLy/g/cMLpfx4kl5t7JYxjBb4+DhvvukgA5Orirm99jFDafYtsn897
	TfmssY4OQm0IBXFIp1+PiIPdeTo57hhyVYG46hVP/MrU07mG4H85VpDB6z0Fz6t6kC1hz+wXi+9aP
	iJa2i0pCSFoKu5QMEbDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMHEe-0000000CAGy-3zfG;
	Mon, 11 May 2026 03:23:13 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMHEd-0000000CAG6-0Kz3
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 03:23:12 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2aaed195901so17783565ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 May 2026 20:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778469790; x=1779074590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z+2lgYT5AdwNVejrbpCLq1bID8j6vgX8/sYNGb+SUj8=;
        b=LPFbh+Re4a4QmMPpuZOOsFL+JAUb+GbZqrks8iSck9iRtXN0f76pJw+/NM/ng/HZV2
         qQ15/5cEu6hTN5H6z6XO0vFSXb8xILZPsA4j+H2/LRFPk8wnOB/G/lBCJ5yZdJ0SSb4U
         DovvCqUH+4gHxJYL4YVY/9q7HS2JfZE1UhPa/YqBsD+K4xaxd5IwE9n7JOs0QqhrPJsQ
         ny0T0hqfxBgZb/rRgOsrYxKitU7fIPDiueohmkpHt6mx8CvnoHE/50PhgMmcTTZ0r0Q8
         uXqcySbFRoIB395bMPZGX3jIh92+kxix6Iasr6lwSiFbtjygur2IuYjUj3rQlnUncK00
         FfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778469790; x=1779074590;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z+2lgYT5AdwNVejrbpCLq1bID8j6vgX8/sYNGb+SUj8=;
        b=Gz2erm42zkAXmc/aRm915ljn16Jhe2O9cxz0V7nzBXcc3FjeDddYkurjpqESsPpj9f
         w7bLfp3znQH/T1YPNzjAFcvW51/+VC/CjMByOxq7b/Luu3AJdW60tGvN5uhHQyxTMQaW
         6yjIsCM2G7Yp1dLkOLS3QqHcJzgmDpAEacWbWa/Xpc1VFM4tX30WEzcAMR0aLpG1KLaG
         l0dkflByJGzA3W+S/wPCNokrAUOm9BBkRann/Be9Pc/WdjklqjMF5N92905yZF7S7M5r
         QjEJQYlHuCEE7aQIk8/sy/opuFwyOuFLPRjPFvUgXQapOF1Qs60hzQD8BKZ00qDH6TO+
         IHmg==
X-Forwarded-Encrypted: i=1; AFNElJ/OIi/Pj13uwrKlTgJyVFSaV3K5BpsJ+GugfvPFszCwEgNGbxkl2x/3zXckM1WNd9vTGvcy0W/LhAZwoY+/bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKuMgCpnIF8C3J11JUKT8DjM7oYrADSVTEpHMUCwz8Y1dDekBA
	8BgZPtFS1s8tDpaV7pBX6B7H6npj6M6g7QuHTtzqkk6rdGutk3FouB9e
X-Gm-Gg: Acq92OH0suEcPT0IBPV8oS1DEDEiaaxEQYKrbK6+DskAv8rTnzR7o+3XIYPZdV+nNe/
	kqu2kMsZzALOfvHKLKbiUVlvwHJdkK7py3wap8W5b9SUbLrrCOcW1rq05O6NQCMHGdLKrJCCNrP
	GPa1gtiy3k2xoStKAyOfz3lHJF6iTAf4thw9LjA8LVb6WxSYjEOc4Td++q0rkKtJmXzkdUR6AMw
	mdRwqwbO+ba8NypybjjaI8vt9liYqBKBgz0YuOsAWF/wnUT8vRCNsVEZLbGbz5tae8pEDG3eXGc
	iK7mezAkzn51XC7NelvIMSLXk5q6DE4jmu/dHIgsn51uzUKWn5rerlht+LBLYsMamtsa2z/bPNk
	vSkXQUdkJKPAKcZeHQuxKtB4ebSd4Y/VMHoddJ/IF1HoUfQg5deeYmX978MTphe3hqAR/OF4Sou
	JSZ4pckoj1/XJdGNyOVdWAyowNy0z7SSbL5QLydLncbcLnhdSXkhJHbRCIk3X9fxIZEaCbtEY2A
	/oM9BOPqIsyVY46RqmGkEihw+R3Egay5lg=
X-Received: by 2002:a17:903:3c68:b0:2bc:8f9a:3642 with SMTP id d9443c01a7336-2bc8f9a370emr72908175ad.16.1778469790096;
        Sun, 10 May 2026 20:23:10 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d:7285:c2ff:fe45:8a32])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e35bcfsm83911855ad.38.2026.05.10.20.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2026 20:23:09 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] clk: rockchip: Use flexible array for clock table
Date: Sun, 10 May 2026 20:22:52 -0700
Message-ID: <20260511032252.361906-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_202311_117177_A39FB672 
X-CRM114-Status: GOOD (  12.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Store the clock lookup table in the Rockchip clock provider
allocation instead of allocating it separately.

This ties the table lifetime directly to the provider and removes a
separate allocation failure path while preserving the clk_onecell_data
lookup interface.

Assisted-by: Codex:GPT-5.5
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/clk/rockchip/clk.c | 17 ++++-------------
 drivers/clk/rockchip/clk.h |  2 ++
 2 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index ee8c79b938d3..dbb4b6f33abb 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -359,26 +359,21 @@ static struct rockchip_clk_provider *rockchip_clk_init_base(
 		unsigned long nr_clks, bool has_late_clocks)
 {
 	struct rockchip_clk_provider *ctx;
-	struct clk **clk_table;
 	struct clk *default_clk_val;
 	int i;
 
 	default_clk_val = ERR_PTR(has_late_clocks ? -EPROBE_DEFER : -ENOENT);
 
-	ctx = kzalloc_obj(struct rockchip_clk_provider);
+	ctx = kzalloc_flex(*ctx, clk_table, nr_clks);
 	if (!ctx)
 		return ERR_PTR(-ENOMEM);
 
-	clk_table = kzalloc_objs(struct clk *, nr_clks);
-	if (!clk_table)
-		goto err_free;
-
 	for (i = 0; i < nr_clks; ++i)
-		clk_table[i] = default_clk_val;
+		ctx->clk_table[i] = default_clk_val;
 
-	ctx->reg_base = base;
-	ctx->clk_data.clks = clk_table;
 	ctx->clk_data.clk_num = nr_clks;
+	ctx->clk_data.clks = ctx->clk_table;
+	ctx->reg_base = base;
 	ctx->cru_node = np;
 	spin_lock_init(&ctx->lock);
 
@@ -388,10 +383,6 @@ static struct rockchip_clk_provider *rockchip_clk_init_base(
 						   "rockchip,grf");
 
 	return ctx;
-
-err_free:
-	kfree(ctx);
-	return ERR_PTR(-ENOMEM);
 }
 
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 9e3503e2ffc2..d4033bf750f5 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -604,6 +604,7 @@ struct rockchip_aux_grf {
  * @grf: regmap of the general-register-files syscon
  * @aux_grf_table: hashtable of auxiliary GRF regmaps, indexed by grf_type
  * @lock: maintains exclusion between callbacks for a given clock-provider.
+ * @clk_table: clock lookup table.
  */
 struct rockchip_clk_provider {
 	void __iomem *reg_base;
@@ -612,6 +613,7 @@ struct rockchip_clk_provider {
 	struct regmap *grf;
 	DECLARE_HASHTABLE(aux_grf_table, GRF_HASH_ORDER);
 	spinlock_t lock;
+	struct clk *clk_table[];
 };
 
 struct rockchip_pll_rate_table {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
