Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62837606A334
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PRAwZNnm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=JdIh7GI4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vIkxGDfvjZJ/nhvkvTcgJDYbwg/Xsmwcoi4pnpwPHVg=; b=PRAwZNnmNeVYkUKVS5/cCAivd7
	Peo/vPNHUyctq1+PN6emg14hlO92T9WGA+j+QzFnf7W9z5/0wpch/azdjihWB8auH2M1gFbcurd1p
	ldFVhLmA06SfealtYyZc6AfMpWBLtkVntSIxEK3oIR32WaJUAFHtiV/mk0P+2dbrCgKt0QbLAfJqX
	Jat65h56DCGQ6qtZZJf1k5wxbS+1VPqfrtaTOVzMM1APPD3KkWesPI8PHSTha3UqAaNWeKpjr31mP
	+/kYlKD0rbjtuAGRi5XunHr6qdRN3DhbOxshRda/c5czSym8Mf0mN2wQYvHp2eLjAxEB+d45mPCU5
	6R1ACLhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMy-00000007hCn-2N5g;
	Wed, 11 Nov 2026 20:56:36 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMv-00000007hBZ-2k4R
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:34 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-53c156ba662so1834199b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430593; x=1795035393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RWGPS5KCwq3L9cW50zOJQer3a1hvbPza6g0viy0ickQ=;
        b=JdIh7GI4n9LcYJ1igFbej6a3bxXKlGPh+mJamTbWdfQ0p3OPt4rk5sBu8xrOTWJw6W
         gDRbXoh90Z1iHi5xtUan4CDmKANNH+QzikIWAD25tCkski52uTDqnli5vBtJ1mpdnHmn
         8qS5RDM+OOFENsNJjci1BY+KAuF66GHBu8wNfd/pNmrUMfV6xOUln3eKn0szRIblIUWI
         pDEli/+U5jpl6aHy3Ov3anhIHyCQ8akWYIrbwhJKFfFqZZLB/5iktTR9YBbVk4idAnVy
         /RATQ6trGkG6aVg0/UQqy0Qmns2rHwQ3neoTiTmVm+qkv0fqAc5s0e9FIeAbNmG8t5D3
         sq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430593; x=1795035393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RWGPS5KCwq3L9cW50zOJQer3a1hvbPza6g0viy0ickQ=;
        b=bA/dFQyAtQbUAyQe6FzKHoUquIH9FLO04qLpzTqBn4Q5e1iOEy6K5Nxu5w5q76TWS8
         a6HgdmMbp05WQFEFR5YaItJmNXwkxzFTIoetxkHArF9QQUP+n/ImfTt1XS9RNlRvd88H
         IF8Ab8FsD6kkLJ64OSb5TeEfIdrUM4QuEZ5s8kzoLi3x11Z2b5QezIB+I8qvBcx66UoY
         4a5ZdeT9Br6p8hwqv+3vG5vJqs72QtZCyB4fe8QV+80NnmF9/zZ5PyQirClqKRYYHcUR
         ssto2BlYzxnbqEQCMRvlHltOPby8JVCtnt4+2l7c3qOxuicDp2SmEgV7ZSgEzdZm3N9W
         gP/g==
X-Gm-Message-State: APuU4Z9clPQv0YUuY5JbWceMZh0fFKi8JwURvw3BIsIAbAWtylHliqbj
	hTrerdaQuhfC+BPpuYO2i4fbXERB2YPbOkiNcjGTOzw59v0Is8bT0uSAKy14ZfPm
X-Gm-Gg: AYBFou222Wmtk3O021S2DH3Jyux5h3uGQkVzVJD41S8k2VipWq9lJJx2BC4hcDn8y7D
	mLY7rhW/XM7Yz6VQj3qTkx4OaGRzEx8hGofm2syoCApPmwOJgFvFaSLp6ctokF4ZgocGIRNuguL
	pvnYUxJsObES/jOnkXnuDHNLZPtKAJTklEE1mDRkbuGKUGnggW1+Nd6vKzOfbSSCgqWSBlcrppR
	Tb83VQP51ZGaH3k8AXAJM3tjYY86AFcJ1zltqpDauW/+KxTxybe//6D9MIJqzvvqWRXM2qVbZdd
	1lkOgYQmiBQvkb1rIyUG3cUIYpqwwgHciVkfO2HFYLdXVb35TzC9ml93Q7irqypL1OZtdPxkmdV
	8P8iTPj7OzYbRpAeD10u7IWFLkIm2WoutrUfT/OouaijJNqT9RWVZTs8aFxZbQkxhGTpRJI21tg
	CqjUDWA/DVCuSjD/2heAHt8F+AXE9c+TTSjR7PqDSwg+SPIcn+B1FptfAhotQDOGcEJkiKTKKKy
	5EAsGowX1m1IR6leD9BJ5D4i54bO49m5yVMUQg850FitBieb7EOzobrAoQjDIYGhU1FP1VLpcdK
	P0h/wfEUN00ALRy0I1VJLMod7P9rAQ==
X-Received: by 2002:a05:6808:2507:b0:4f6:6041:f0a2 with SMTP id 5614622812f47-56b96def35emr3452223b6e.27.1794430592642;
        Wed, 11 Nov 2026 12:56:32 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:32 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH V4 1/7] power: supply: rk817-charger: correct spelling of coulomb
Date: Wed, 11 Nov 2026 14:56:21 -0600
Message-ID: <20261111205627.56652-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125633_701752_FFD3F156 
X-CRM114-Status: GOOD (  17.07  )
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

Correct the spelling of the word "coulomb" throughout the driver.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Suggested-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/power/supply/rk817_charger.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 5558b182a1a6..674622398efa 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -83,7 +83,7 @@ struct rk817_charger {
 
 	/*
 	 * Calibrate the SOC on a fully charged battery, this way we can use
-	 * the calibrated SOC value to correct for columb counter drift.
+	 * the calibrated SOC value to correct for coulomb counter drift.
 	 */
 	bool soc_cal;
 
@@ -270,9 +270,9 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 
 	if (charger->charge_status == CHARGE_FINISH && (!charger->soc_cal)) {
 		/*
-		 * soc should be 100000 and columb counter should show the full
+		 * soc should be 100000 and coulomb counter should show the full
 		 * charge capacity. Note that if the device is unplugged for a
-		 * period of several days the columb counter will have a large
+		 * period of several days the coulomb counter will have a large
 		 * margin of error, so setting it back to the full charge on
 		 * a completed charge cycle should correct this (my device was
 		 * showing 33% battery after 3 days unplugged when it should
@@ -294,7 +294,7 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 	}
 
 	/*
-	 * The columb counter can drift up slightly, so we should correct for
+	 * The coulomb counter can drift up slightly, so we should correct for
 	 * it. But don't correct it until we're at 100% soc.
 	 */
 	if (charger->charge_status == CHARGE_FINISH && charger->soc_cal) {
@@ -307,16 +307,16 @@ static int rk817_bat_calib_cap(struct rk817_charger *charger)
 					       charger->res_div);
 
 		/*
-		 * Re-init columb counter with updated values to correct drift.
+		 * Re-init coulomb counter with updated values to correct drift.
 		 */
 		if (charge_now / 1000 > charger->fcc_mah) {
 			dev_dbg(charger->dev,
-				"Recalibrating columb counter to %d uah\n",
+				"Recalibrating coulomb counter to %d uah\n",
 				charge_now);
 			/*
 			 * Order of operations matters here to ensure we keep
 			 * enough precision until the last step to keep from
-			 * making needless updates to columb counter.
+			 * making needless updates to coulomb counter.
 			 */
 			charge_now_adc = CHARGE_TO_ADC(charger->fcc_mah,
 					 charger->res_div);
@@ -757,7 +757,7 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 	bool first_boot;
 
 	/*
-	 * Check if the battery is uninitalized. If it is, the columb counter
+	 * Check if the battery is uninitalized. If it is, the coulomb counter
 	 * needs to be set up.
 	 */
 	ret = regmap_read(rk808->regmap, RK817_GAS_GAUGE_GG_STS, &reg);
@@ -811,7 +811,7 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 		boot_charge_mah = ADC_TO_CHARGE_UAH(tmp,
 						    charger->res_div) / 1000;
 		/*
-		 * Check if the columb counter has been off for more than 30
+		 * Check if the coulomb counter has been off for more than 30
 		 * minutes as it tends to drift downward. If so, re-init soc
 		 * with the boot voltage instead. Note the unit values for the
 		 * OFF_CNT register appear to be in decaminutes and stops
@@ -840,7 +840,7 @@ rk817_read_or_set_full_charge_on_boot(struct rk817_charger *charger,
 	}
 
 	/*
-	 * Now we have our full charge capacity and soc, init the columb
+	 * Now we have our full charge capacity and soc, init the coulomb
 	 * counter.
 	 */
 	boot_charge_mah = charger->soc * charger->fcc_mah / 100 / 1000;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
