Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABAC2606A336
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KasP/kcP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KJieGsWy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5emjEWEDy17ZTzPZZnDOU+jYRTy+7X0tJomF84i2hwU=; b=KasP/kcPFk3s0ztJCGjVHuJI+x
	KwMnVhFm1N86GCQrHLHUc45QVzmb9ZBjeafK9mueBAJFkusU+YzMFafcZ42xYYGjXKxiBKmoy+f9K
	6RGfj97IR8c3B9lXOBFWmHcYcEH33T5uHKSMFkDgCNDtTRhU2X0ZbnjAKRljiQAsRNllhSfbIUnZ5
	XG+MAvAvH4nuSfsfUy42QK1ZYYKtHnbqz8RYVIGYcQMHolTvOC5+6881C7pMglLU78UecXd/qeUOt
	3gCPW+/23k081IOQ7uh7nPwhU8c5k8TZiuYRF966fmobShmAkEUPv1r2nrWINeD0DfO0ncduSrEtU
	9z5fKzCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpb-0000000108f-2TxL;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpW-0000000104f-3hgi
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:45 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7f84a55e31aso504206a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236322; x=1794841122; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lvwOfzLc6z0XT7JDSFybwf/dtG+Oy9O6aFTtJV96gfk=;
        b=KJieGsWyd2wo9kGMnnKgqayHytwBf8WpJLDd6nBwoZbCWSYxzECKCpHwgOOeL2LwuO
         HRD+BtyPQn6cvsOTn72cYfiNRi38oCOJ8afu01WccsplLDf/HIy08gmBhg/6EWXW+9+S
         5fGAOezIdDK3lpWukdSdolfgA9Vw9ApxlvOBGyAHidfX/HJY9OY/lCwNnDL2Tgc0I7yt
         y+AnS+oM9pzE85xlstSLL5ZFBFIBSdvsJOdEZILU1KrnDm9/7180g7K4PZtZZiYqKsrp
         Wn53CWZuIrWn4EQQpz+25cLTscKY6Js5m7ysu55aaBj8+iLrfdAqxvCMLgDivRjf5vC0
         OdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236322; x=1794841122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=lvwOfzLc6z0XT7JDSFybwf/dtG+Oy9O6aFTtJV96gfk=;
        b=TPbLMPEyNXIBHrrajDj5zyaNGcbANg01c5wDegreSpkXikqf02h/4gf1fKSwJYK3JI
         7kmDXj/0K0aYvUBUtzeKpNmmR8BzzDfHn2WjCOUmgFmGo8BBUMtwvrs82loJLr3hiVpJ
         ivQOPV3ONNEYu23Yo6xiiIFcestrmVKoRsLD2KGStEiZXLM43ICcgMK1Mpjryxeq14zN
         UJ6xnYbNnPmykp2i4GY0c9J4NlVDCPTxGsUJoFVtWJlf9TZe04a1dbYsEBAfeZsX82qD
         vGhZCJ2Y7VPoQNOUAiLHlNpc1ZoQ5Kl4rK1M9YtszvZY9gkk+iX9RFi58qEBxzQugUtz
         aa9g==
X-Gm-Message-State: APuU4Z/1Gp9nxFrxz0Z3t+9SkSj57PqjG1CXoOhklrdv0VhJni1qk7yh
	UAVhHGG5FyiMb8O63Zh3pHMCgjPdL19BdSpWWMrOVrUDezqjhdaiOQqfIRL4Pv75
X-Gm-Gg: AYBFou2mibL6IKSrr8hRzqzpfmFmsvM1Qk86Ptjfn3la2shY0+JttdPj7nFCw/TMDrb
	wD3m97G/ORwfF/yd6PiTeIvGzMsmoaBglLIQGpse/lvxzJOl3a9vBjN/BKbwDfcXFYtpZrFARPx
	G0LxBsZCGT/P0jqW5EZjtnsQvlPvQHNrbH2DAGkHgQFqp6YytS37zqU2t88H36HwZsIqmhJSYw8
	48tdjMvspIJCZHDhMD5UGREZcQzxPC3XJPZyTNuZMyy0BBATU57/+kEVhRkDnB+wGT1H8fdQNcd
	5SA+8fMgAOB5RRN2kA99U6EFDVJV59qBh21XWXTUZaLZx7hvNXqyPVh6O8qABT8JfGQtiaGqMnh
	7en062M/1wpX3qjE6fb7sXYqzktqvZGsdhP2TMXGGjui0qUsfIMgxS3QqJc0DNRmf4usSV9dtPz
	IuO6KnPY80s1d2Gw2NY5a/FF8kLyNwYOvyiRigXOqkK0u/YWfNgEvDwQm2EQjE97FghDS8wH57o
	la43yYyntIbCqZZaXXIlxl+gsrTrMN8b7DdMKcROpkg/21fCUtvONYXNLE869nY/X2/zJxvRVr9
	Nn9WvQkfS8AQXCdsYscbLCHksjR7KA==
X-Received: by 2002:a05:6808:4f49:b0:4e8:f740:f03a with SMTP id 5614622812f47-56814379845mr3502958b6e.27.1794236321610;
        Mon, 09 Nov 2026 06:58:41 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:41 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/7] power: supply: rk817-charger: simplify re-initializing coulomb counter
Date: Mon,  9 Nov 2026 08:58:29 -0600
Message-ID: <20261109145833.1363319-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065842_946677_A52D69C9 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

There are multiple places we re-initialize the coulomb counter. Create
a function to do this to make the code easier to read.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 44 +++++++++++++++-------------
 1 file changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 39c945622c4d..8843871948b9 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -167,6 +167,20 @@ static int rk817_chg_cur_from_reg(u8 reg)
 	}
 }
 
+static int rk817_initialize_coulumb_counter(struct rk817_charger *charger,
+					    u32 charge_ua)
+{
+	int tmp = CHARGE_TO_ADC(charge_ua, charger->res_div);
+	u8 bulk_reg[4];
+	int ret;
+
+	put_unaligned_be32(tmp, bulk_reg);
+	ret = regmap_bulk_write(charger->rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
+				bulk_reg, 4);
+
+	return ret;
+}
+
 static void rk817_bat_calib_vol(struct rk817_charger *charger)
 {
 	uint32_t vcalib0 = 0;
@@ -242,6 +256,7 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 	struct rk808 *rk808 = charger->rk808;
 	int charge_now, charge_now_adc;
 	u8 bulk_reg[4];
+	int ret;
 
 	/* Don't do anything if there's no battery. */
 	if (!charger->battery_present)
@@ -281,11 +296,9 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 		 */
 
 		charger->soc = 100000;
-		charge_now_adc = CHARGE_TO_ADC(charger->fcc_mah,
-					       charger->res_div);
-		put_unaligned_be32(charge_now_adc, bulk_reg);
-		regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
-				  bulk_reg, 4);
+		ret = rk817_initialize_coulumb_counter(charger, charger->fcc_mah);
+		if (ret)
+			return ret;
 
 		charger->soc_cal = 1;
 		dev_dbg(charger->dev,
@@ -313,17 +326,9 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 			dev_dbg(charger->dev,
 				"Recalibrating coulomb counter to %d uah\n",
 				charge_now);
-			/*
-			 * Order of operations matters here to ensure we keep
-			 * enough precision until the last step to keep from
-			 * making needless updates to coulomb counter.
-			 */
-			charge_now_adc = CHARGE_TO_ADC(charger->fcc_mah,
-					 charger->res_div);
-			put_unaligned_be32(charge_now_adc, bulk_reg);
-			regmap_bulk_write(rk808->regmap,
-					  RK817_GAS_GAUGE_Q_INIT_H3,
-					  bulk_reg, 4);
+			ret = rk817_initialize_coulumb_counter(charger, charger->fcc_mah);
+			if (ret)
+				return ret;
 		}
 	}
 
@@ -846,11 +851,8 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 	boot_charge_mah = charger->soc * charger->fcc_mah / 100 / 1000;
 	if (boot_charge_mah > charger->fcc_mah)
 		boot_charge_mah = charger->fcc_mah;
-	tmp = CHARGE_TO_ADC(boot_charge_mah, charger->res_div);
-	put_unaligned_be32(tmp, bulk_reg);
-	ret = regmap_bulk_write(rk808->regmap, RK817_GAS_GAUGE_Q_INIT_H3,
-			  bulk_reg, 4);
-	if (ret < 0)
+	ret = rk817_initialize_coulumb_counter(charger, boot_charge_mah);
+	if (ret)
 		return ret;
 
 	/* Set QMAX value to max design capacity. */
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
