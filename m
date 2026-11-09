Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B716606A322
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gD5gqWqn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LRTMmeFe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vIkxGDfvjZJ/nhvkvTcgJDYbwg/Xsmwcoi4pnpwPHVg=; b=gD5gqWqnZY/T9sc6JSB2TTkn3X
	uUnONzLJ2z38Tu+EnXNAbrOklBzNzghi1t3RSQysE9V8cETwfcCEMib4S6JET3l4VOguu6Wq0jL1Y
	1Z9P8W5S5/SJMRhAJCPkaKa8zImOi/3acoTLG2Mf09QO3ysDg9kMYSXikAeh5iZ4xWhB8gKs8dCoD
	xPGu/AVZbGuGMDty45YP4wpvxOUINUP8rI9o1UnfY3PWg6i2a3mb1gyIKfmAhqDs4Y0XoydzLfHDh
	Kd5J4mtwj/sUTtuemHV2L5C9T7DOIThJuhpTbSoaD94m1NTdkLFbsxcvbk6hTYOYqC4hGCg3SRmho
	PlsN2GcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpZ-0000000105i-1HXe;
	Mon, 09 Nov 2026 14:58:45 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpU-00000001046-3z3Q
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:42 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-843cf077f10so1250982a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236320; x=1794841120; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RWGPS5KCwq3L9cW50zOJQer3a1hvbPza6g0viy0ickQ=;
        b=LRTMmeFe+yO4Jn6L4iPlbeJCI0F7iEr/164NKfz4xEukGZLdLo3YD23GWju9zmvb9Y
         kPvgAeWazKeNWJwfUZ8I2sBoNeqSHWnimoaXH1yrZLtGmCcR7eJocScq40JMvLnlmpkH
         0SBRZGpdVzB2ttINumTZQTHI+ozPRVGrNfA/Ha8zA/EA4c0V5P5pXuGNIURtxkWp/eCI
         CZm1ET8DYrrAH/8025KQbb6GD8vfvOVrMxlhM9w+Tj3l3iSQxq7IrPxv0ekD4W6CYiQz
         5Do8lQ1joHjGWTHSPg9ALn8SHz731xPwPLpFNgy2hFdTT5CKiNPfkNZB1FCzqu1nBcXg
         L51A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236320; x=1794841120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RWGPS5KCwq3L9cW50zOJQer3a1hvbPza6g0viy0ickQ=;
        b=rwDKWGBLWIqRfDoNu8g1u1e5diQXvipdO/bqCY1a5HRQrZeo+JO7hwhvI5rDJaxAc2
         Wb6kamFdp/G2vSDiIqRQ5DabGD+Q3VfzYJdsVuZQtLMFioRj2i+tVlObSBryrXKlplxB
         RvQo/4BG0tzooXsbV6zdXeSe8XbA0UPDwLqVJ4sKZR1nly8zY6xQlaa34xAQ69imwVjl
         0hKcWSPBuIb1MlUezovDI1qQIA8UcvCrIzrZO+7vsONsKreXtIxh/zcId34JggZ57yzq
         CmYElaO+KXEJa1rLXf4F8D6gTxNyRY6J9V5RXQlEb8a74rIbuEe4uoHoSWAT8I9i7OX9
         ts2Q==
X-Gm-Message-State: APuU4Z9cjH16CvMqB/BwSKXNQ1JRf5rC9I+5EgKQuKvOwznG5WW64KeW
	ezzinPE6j7B2818YAqMOpzEL3GoG/+kXw1AJiH7OWSzWfakQ64ByDnLqpkhVOz+r
X-Gm-Gg: AYBFou3Hbc1dYIZAMyrbt7jhe0ty2wXX4VDSm1gAwVQauIQ84qq1kGnPigcuiKOZhD+
	stT0OwsNJSKtVrrGvwkUin/KDcwfWLEdZzQ4K0vlhVvKIvSfUEYpo62y2UgeP9Kmw9Vih3vCDNQ
	JUwTsAGNuhFYxat6p5q2TFjmHpZZrHH7OoUu1mZ6Ffwv5Ngh0VUeCQMhv/7nNvfOcLL0rxuCbqn
	M6mQC9eYuAksnLYTrqskNVV3vR69PX+MpNGwFWCyFFQLRycnZnvoK9CMlbqaeTeya5ubQMNUuQ9
	Q9Z8GMXiRRaw9m0jpzqXCuY+CaJQarqSdVcd/pdGNIFM/YOoTJRtSGsJzusFTe4qy0R95OFwkYy
	pZwJCNc6cYeab9vVHFBJiusNoTm1nnvaZHRHyuDkO0iPadzeYl/f9Xbh4pR2MtVVfQtS050BeO0
	EUhGdbvBN9vYKTaBhUwmeZN8MPBrp8Kunva0hRVpjsI2/LkYcud6TX23+6CKFB9BXuRB/tU7U+/
	9CFModM+tR+utDUktdumAju/Cb/kl1onkxT6NWfbrcjjzJHs9G9jEhhKvr1SfWkB8Gu2QZpUy+L
	AL65wV9WFcjSeDteRvAB6ZPb/E77BA==
X-Received: by 2002:a05:6808:6605:b0:4bc:fbd4:2a43 with SMTP id 5614622812f47-568147560d4mr2872449b6e.41.1794236319604;
        Mon, 09 Nov 2026 06:58:39 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:39 -0800 (PST)
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
Subject: [PATCH V3 1/7] power: supply: rk817-charger: correct spelling of coulomb
Date: Mon,  9 Nov 2026 08:58:27 -0600
Message-ID: <20261109145833.1363319-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065841_005035_089BC5E7 
X-CRM114-Status: GOOD (  17.31  )
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
