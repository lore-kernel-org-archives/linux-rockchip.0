Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15EF606A32E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IDVKsTyX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RA8Okf2m
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=os3k/J1/K2ZVN1rHnoB/FfqmHrne3jAv9lNZVEXkx6g=; b=IDVKsTyXXn+sgDoMC+QcX6Vns2
	0ltqC2YwEi5d0YJoDQrGnyUbJ+oXv14snUmbRFfplmPGLeNxXwgvMcvfABix1BaLUpFyME2eBQCoo
	cblx/bUl06Gsx/Sc9a9BAOQwZPA6gNo1I2zwi+gCq4ZZ/YMUU8bQ1rIVnSf568CZgcVHY0Hff6lwF
	aZvdX7Z4jhonjDaYloIISUlWCGkSqPmowfgw6dDdGRgaJ2vgxaYAteYb8dmuJxC0cOM6EPTUlrv6m
	FhadLCwyQa8m8IKB9KP8IPrSZz1alF1lrIhfq+AqDe/7rOnIUuBf5yUlADpFE5mRNStjJ5HHT+oY/
	ppBL1/PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN2-00000007hGu-41vx;
	Wed, 11 Nov 2026 20:56:40 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN0-00000007hDD-0k8P
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:39 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-85d363fb73cso1950487a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430597; x=1795035397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kZH7ulLlOmLBHaQyYUqZ+qwps27nudFGjZP/GZkheHs=;
        b=RA8Okf2mNBCoDbGUPZaSGvZLnK56+CGhrVcF5cV83JvoyMN5tmxu+XWaQE0h5P7ADD
         h8/a4r+vDRHjb9InqGgd+lUs+grOt3vGxihoRn3E4pTTGUarO3x6Gn9mt056IN4Wbzk0
         QwixpX60ICmocsdOvacHxkO8rTfF2djs8GHGt3xcAGFyKGbZBu4VZzRM7thwi5xzh5O9
         dHal+boTK/jQ5RnKF8UPXZdd5OQw5LFMTqxeut+5O0GmVbc7EWnczVXMfWCXYpuwQem5
         qM5j4ztvOE4MWpTmaxhZ3bOCmYTPv8y3sqLgYGCBlpoqm7XtMCmGTfcG53IVTV3MhAXZ
         yDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430597; x=1795035397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kZH7ulLlOmLBHaQyYUqZ+qwps27nudFGjZP/GZkheHs=;
        b=N+K6l6eN+QD3HUZVw0tGXMWVOfdVc9oO19tOkX7jRgfBctE4qDczx5psZpNWjNhP9V
         HyyYK2bmtZDPWn40Lcpe9R5ng2aazd9Vod8pTzUBWQv5c7XMBuSiWri58wDtdccybHZ1
         neb8bnNnYBDVht65x/GcyBN92e0ihLAaLMZr2qETu1/OovKxja9gXNRTDKNsJuQmxyH0
         aDfK1esiAhIwop1Fu1r/ui4Bp2U9E/am2cGlby45OiQ8k7JaFgfltR2AxoEb0+x1vmTG
         JaXfaTufiqpv9EKDEYWENegVkZ87YT9p8LKL3nGIHfRsWWlREL2kydxAnEL835P4Lad8
         1b4w==
X-Gm-Message-State: APuU4Z/Ukd9RdzE5RClg0Na4P4AXZYUyPA7OZFODBCoNYQSkrKzvnT/i
	akLd6/SpJaT4/dkk7OLw+m9tfv4kOPtITWH6iSdl20A6bMTnNo+JRPy/3RUXvdsz
X-Gm-Gg: AYBFou3PlG7zMvxE11M4cujtId1i9ASE1r2/q37kF3X7XSz5Cv0goNPGy+ac9fVcl8l
	4GHLRVjfncBmvK/ql93ur38uvAqyNs8g93Fdx0muJ9M9uuBqfTSWduutq1nnW538ouvL3FOJA2F
	OkgdTQhxasFj9CJYKXEa9pwCuoI6Y/Lj1X1orpYD117S/GBkrDOEYzKqbBNcXcMYdHChrMctxoa
	Ie5Lp2C5ZmlmeGispym6KW1TbGbYDAuCLUKmlIrNmR5vWocdyN9zKpJpavdwbQp+w8bYCXfaq9L
	yeA6VowX0J/x+PgL2Y8LKwuwUrDfwV195ktvxIvtsVHuWSPiwWCpAUkGhaVkdzsxXeZNhy7wcKC
	sxPBLbgyedQNcOK5kwL6MImC87cpMrbZG+furiiuur8Qpx494bI5g/sI5HvLh4b6ff/AaOIHc+M
	gU8ux6TuhKOmstBZCgJj/oIkBvZ7W0QrcAhKnOE1OGuRobWnWBEZcg4F6q6XjpsZqe/R86P1Y/q
	WRn5bYQhIOOzXnlq9Kft8fbg7KP0jAmKsQLY/ZNPmmwguAdKWQEi7aeUHgpp6oT0Jjwo12W/M/5
	98E0f9+n2tFQJB7ETkoGpQ03pyTxhg==
X-Received: by 2002:a05:6808:5198:b0:4f4:9314:af39 with SMTP id 5614622812f47-56b96bd3b81mr2711691b6e.28.1794430596927;
        Wed, 11 Nov 2026 12:56:36 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:36 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: [PATCH V4 6/7] power: supply: rk817-charger: Clear SYS_CAN_SD reg by default
Date: Wed, 11 Nov 2026 14:56:26 -0600
Message-ID: <20261111205627.56652-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125638_240726_768F51A7 
X-CRM114-Status: GOOD (  13.65  )
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
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

The BSP driver for the rk817 charger by default clears the SYS_CAN_SD.
This register tells the PMIC that the system voltage can be shut down in
battery off mode. Though the BSP driver also included a way to bypass
this behavior, no boards have been observed using the override.

When this register is not cleared, it can result in a persistent power
drain on certain devices while the device is off, as observed by users.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Suggested-by: Zetarancio <zetarancio@users.noreply.github.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 9 +++++++++
 include/linux/mfd/rk808.h            | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index d334941ade5c..9a8d14691f9a 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1187,6 +1187,15 @@ static int rk817_battery_init(struct rk817_charger *charger,
 	regmap_write_bits(rk808->regmap, RK817_PMIC_CHRG_IN, RK817_USB_ILIM_EN,
 			  (0x01 << 3));
 
+	/*
+	 * Do not shut down the system voltage in bat_off mode. The BSP driver
+	 * cleared this bit for all devices unless a specific device tree
+	 * parameter was used, however I have yet to see such parameter on any
+	 * device.
+	 */
+	regmap_clear_bits(rk808->regmap,
+			  RK817_PMIC_CHRG_TERM, RK817_SYS_CAN_SD);
+
 	return 0;
 }
 
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 72419d311626..2bc58de53d82 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -1297,6 +1297,7 @@ enum rk809_reg_id {
 #define RK817_USB_ILIM_EN		(0x01 << 3)
 #define RK817_USB_ILIM_SEL		(0x07 << 0)
 #define RK817_PMIC_CHRG_TERM		0xe6
+#define RK817_SYS_CAN_SD		(0x01 << 7)
 #define RK817_CHRG_TERM_ANA_DIG		(0x01 << 2)
 #define RK817_CHRG_TERM_ANA_SEL		(0x03 << 0)
 #define RK817_CHRG_EN			(0x01 << 6)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
