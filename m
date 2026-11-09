Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958B7606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yxdYQuLD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=c4Nv3zFa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LorKqVQFgmNK9SpsGopCTlXl02D0ZaoOgMCyLVXAUAI=; b=yxdYQuLDfYqG0S26wwSxFXCsoz
	WFEBJsqMjea4ddYgQqYxXP/FyXyRM0Iu+FQMmX6ilizbvWWzAoE+ALtVCjABzZQ3qIefgI3SzEyAs
	L36zYQURimk0A0H3Q3l7c0sA5sJbI1ehhd7ex5twjCVtrCirs5tAB5mnEbgFUoqJ9/yrASuNGSgeO
	iSkg+BSTUQZKMT5KZ8EtfOEBv0kwMH8Ia5LK78k3XGjgZrEPFBvM/Bg9j8opZ38e6QcPKbEoYE5vj
	jquFKyrPGqku8TDfdvMheOV8DTq6TkmZ6Nn5hdHiOpX/whxoM+zMcvPDsC/kli4sgmfW5xIAhQKGJ
	B2JDgypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpe-000000010Cj-0MbB;
	Mon, 09 Nov 2026 14:58:50 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpZ-0000000105I-1Ykb
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-5641f26ce05so344631b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236324; x=1794841124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6y/oCXeZA/xU4FFB9st6cAy7P1KGmFoThXo49p+Yf0I=;
        b=c4Nv3zFaEwuoU4RlsGqB7Ym+IMIm518eGn+aBkHrqTRM1opXgL3Sd2DFEEMol1GoOM
         B0Axw/0faqAvf2bwceSBX82SS+r6YqAEHfQpN+oW2yoRs4mb+KLy3iYKTWuZ3+PPErMj
         ka7+/LY41OsQ5OUUuq+21FRCiLhaWUTtcLKMEiThIj1I29B3la/fCeCTsnrHR1QkU7aG
         Si8++bXQ8Gmlg/Pl0i1mKQuvNTCg0bywZf5mXZAIQvBXnFLmzoKjDryyR9Hu18rJ8fYN
         gSot769dKTiyAn/qyPsBos6nYTNIocfbbHRUxEjGOxkP2/Gx1lJ5EOY/ybrkZ84iaH3b
         18IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236324; x=1794841124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6y/oCXeZA/xU4FFB9st6cAy7P1KGmFoThXo49p+Yf0I=;
        b=A7E7Baw5Dr+VhVVUBhBBBrv8W5wJ1eXw7FVSUeSr/o6e2/YLOW2crMbhGA9Y6BSSyz
         sUMs6V0hQPjH84o7YcAAUEG0B9mPPI4mN+eoihxH4m36MH2In2kT8GKkbeM94KvscwwA
         w+nMMJIHaIn44/CPFauFv+G2C3DyQq/c9bS835yq7uwobEAyKUZPgrwuJ/qtQXSaRU9p
         WpecIYfzdx1hH+jspLIhYrb3ZVatk5tfV+MkXw4VKGJenlm9bdXnmtv/B77CinbgSXsB
         9BjBYt3mZRFRE/SnFTksClVTpGhAcx7OJ5p1uzspvTS9ClNnE75YIZT9LazIgE+Vzojp
         dPIQ==
X-Gm-Message-State: APuU4Z84NCtnsSas31mWmnjqeOr38ldE7HbgD24MQaKCbPQ2lS/7O38p
	D+wabe2pXbkOtnSZZtokjKDqe74V7uNltyb6Tepm//HaBLqXsd6Du/VbvsaXAROd
X-Gm-Gg: AYBFou1n+Gk9GeNcjFhTJaUIwumZnm2xVLEEQDqYh8u2R2MNIeiEC3PbjPOF9/Wip9r
	nHIBHt5x1KuYn3AJd7gh4xxMSyPF1ftWTxQpzaAMWaR7mtaG4jPs3kvynQ089duqsp4C4fJoheN
	GVDShDR4mOKsC7XPeUOomti//oWSwkFvt8VECxI3d3IsH1sQOa9HoXCzZH34q2GPDfMcZcMFRoB
	CdTitte+Fz9V80vbbiTINjwJxFpm4uW7uAtWWXIwmJPNtbxrSbVwochhyfiBAVFMJrkkJ37BYGj
	b6BysheiTkygoMSmGuZNvs0AW6CQbu7qjdR6RPe1jqBa6R3opF5QuXGY1Kv40pu9Ud1Oa1LN+5Q
	xkpWFxXNJusI17GDqse7jo40PLEgnbzXiy91YZ2QFu6q3wBcQ3TKwphpL//PuAoMO5FDLPeybYL
	QpqOksraeH2eEWNSkB/PlE7ljr50pwK0mcHWpck7/9tItlaF6UvHk9hdiE+gIauARBRUCD7plHF
	xqkGl75P/6p5lMfp5NK0yrjtavmITpb1YBrzzezHTe/HEGtY7cHLgm0iCyaP4O0pUvv4mo3LyVu
	w6mhdzieK906wVwF4qbVSCMNFZE3FQ==
X-Received: by 2002:a05:6808:bc5:b0:4c1:e6f4:f2c5 with SMTP id 5614622812f47-56814022c7cmr2987656b6e.2.1794236324258;
        Mon, 09 Nov 2026 06:58:44 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:43 -0800 (PST)
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
Subject: [PATCH V3 6/7] power: supply: rk817-charger: Clear SYS_CAN_SD reg by default
Date: Mon,  9 Nov 2026 08:58:32 -0600
Message-ID: <20261109145833.1363319-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065845_469350_D02A9FF9 
X-CRM114-Status: GOOD (  14.05  )
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
index ede89d84ab0e..0d1ec775304c 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1166,6 +1166,15 @@ static int rk817_battery_init(struct rk817_charger *charger,
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
