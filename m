Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B39B606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 05:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I6qtBvkn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vduwhfPF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wohvduYMx7afZq3dnkgbOfOxxYxXt7stJz354p7oQZI=; b=I6qtBvknIu24cm0mkoYYMMJfiH
	5RLRRK3Ufhctzx0xio7Im4NoHXThebLMOCEGDGpQDUmQvQsJe/V2uNw6qKF/Yyfhr5ss/g3cp4N2D
	muHOGSSMuaVg/wdxI05jUXMIHZoctkxf06Vnn6v2BXaOlxGHn8hZJBJKmzFkkITDKJCtiVPeeKSro
	kQ2x1xP+adXOOf7tVT3yF6GeL0Q/sMgCPlMkeyush6nfju2YDvkuSOrVT2nwFVSv5m7UbkhLOBZUF
	QrCs/LLZSUP4Pyd+GxBa+ICgXZZqpR6CZcN/BvZyXLuFf1TbrlnLxiZswVKiPJYqk7sb627fPtGep
	X57ieT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeX-00000007o8N-3ZiM;
	Wed, 18 Nov 2026 05:56:17 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeG-00000007npZ-488V
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 05:56:03 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cdb8c4233b8so34099a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 21:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981360; x=1795586160; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=vduwhfPFQhauriY8fidDKqD5nU2KbQthVocO/XafqQKzyzazrSXi6Jy7qTRm1whn3r
         nTXj3Kd8h7nPlqPiOSi7/vfu41mDmMYl8MSnUnx/f1FR3ESr9xMgKbr9FTgh+R4lEHx1
         9D5Mbb7ZBHc330jNZH6Ykcw4HdiujJKhrbFn9XgdOFnJb/BpXxMnHfPsPS18ncsQlwVw
         jYDyAiLh/6jogoIuDQ7XNjoU67OX95sEZpKyYEbjS7RnEs7JJW7h4RMBHSx7MWoNCLL9
         tSWYWvbLuYgn5KhQ4/D67FvT77ra/Wti6HnLyIwTXzG+gfkuwTQFOrgzFZCtIKD7KaTF
         WCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981360; x=1795586160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=nHCAMmkkvx1IodqUtA+OskpWTDzQC6X6y1GzIg2aYVlyc4eYEFPuJyaRnzwjgSXmuD
         317UH0CVfjRmFY0BnbzUHHtHIma6fkBSX73eZ1b3fOdKqXY5L1zt7Pp9uPgip+zfmHe+
         rbMFOH0JUuhKee+1Dhv1owL7eBRltiGEhenhi3H8ke/8FKlG5YKI5b/WZA/544FLkCNA
         5SdEYVNODvx2FLb4goqJpo+RVs50dZYiJLluRXkqbRZVEfFsOrw5mORpuuU/lkLBS7OG
         RekBg3KGl9l05JzlUyGFJlsFK102JUT0OogoAyGjqIk95VwvxATVcfifEx/znUP+DOQW
         bydQ==
X-Forwarded-Encrypted: i=1; AL+hErHEZFEsrdLIMifKKc6Od0Pkr1TYZVvKZhzpN1vCDfjqnJ1Sk7vfz6OaE39bSra35TJ2aB7Xr+VkR+WNfT1vOg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8jx3k6ljJYOgg90bYbASMSefEVyY+Eg20mUN0EVLx0KVv73icQ
	Da6peybRGr/mNrHUYCvbI4udeo5L4+AKRMI3liru0TMRJU+ntyfgPv58
X-Gm-Gg: AYBFou2kgiBUMD7D0SNIF7fTGNBr9BFnZT+QmH37kAaHIYRgwu70Kfc2oMYyUU+tOPl
	m9LhBQgdrmTzpDTX6NWUH6ImgmSsJXQw7AO+LRh0CR9Ua38Ej1sxDxfdSVwR0lHM9NvfFr6JQbh
	GA9bwNIamktYI23lI9d/ff1CcblludsgqYj+y60eIGzRd7X1C0bXJhK+9xBP89MzE8xVyxRPtO6
	JQWv77iqfwkJMsp3+Ts17q8CCkSb4OX4K5oiU7D0/LtyHIK2vf6H6LNUqVx53xLNJu/+vflEQE2
	i4VMv8oCeKKJ7e+PC8E4OUsueVrZbCTBe9jc1tV7cCDZyH1GQeKp0egJbW7p4pko84zJSDVHnNX
	npawss8lHsh/Tl2+iuwK0fwjE1ssO2rbqB9r5cLh3fUkK+J2MH6gdvBIb6RbId6U7htxr8blSpF
	8aiKQTfjRYh2Zr5A75L3FrKcYoaT+vm1UdigFMyuPLoIfCzVcJl1TD0Eb9hRyepX7Q03zCimrXe
	gfPgk04KXl59aSIraZMP0chT0rGKkvbL6zr03LYUXg+WB9AbCpzC707OltlSdaoMCskgrCpYt1m
	Nd6rjo4EGtxV4o1TvPW5ymvG2y/33vX3k5JZpKi7UnhFjCKsLg1pvK1JeL/GF9P0i1RanbqsFuG
	VXusKAa2y2M3pQm4d2nw3
X-Received: by 2002:a05:6300:6bc1:20b0:3ef:2f72:c7e5 with SMTP id adf61e73a8af0-3fe89100d9fmr1650543637.2.1794981359689;
        Tue, 17 Nov 2026 21:55:59 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:55:59 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:17 +0800
Subject: [PATCH v7 4/9] phy: rockchip-samsung-dcphy: Always write the
 rate-dependent registers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-4-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=2791;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=jOoW884/QWxzl0iQgg361AUaX2tfS/RGrsDEUvgeOSs=;
 b=VkOIadDSCSCWfnuqRaor/8P7xZ2XT4u0wDDTi479M168RRkokCGNAss3oSGd4blzKFbElD6Bu
 whowWKt+GmhDXy0qQNwzix6IZpQLJ7M65vCrX2H2rmVHBAv8R8sC34y
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215601_084305_8767B55E 
X-CRM114-Status: GOOD (  11.55  )
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

The lane timing init functions write DPHY_MC_ANA_CON1, the four data
lane ANA_CON1 registers and DPHY_MC_DESKEW_CON0 only above a data
rate threshold, and the registers have to be zero below it [1].

Today the APB reset at the start of every power_on provides the zero.

A later change moves that reset to runtime resume, so a power_on at a
lower rate after a higher one would keep the old values.

Write the registers on every power_on, with zero below the threshold.

[1] RK3588 TRM: sections 22.4.2 (reset values) and 22.4.3
    (DPHY_MC_ANA_CON1, DPHY_MC_DESKEW_CON0)

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 24 +++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index ce1bc62497c5..7a009d87a665 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1228,7 +1228,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, DPHY_MC_ANA_CON0, val);
 
 	if (lane_hs_rate >= 4500)
-		regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, 0x0001);
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, val);
 
 	val = 0;
 	/*
@@ -1259,7 +1262,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	 * under 1.5Gbps or equal to 1.5Gbps.
 	 */
 	if (lane_hs_rate > 1500)
-		regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, 0x9cb1);
+		val = 0x9cb1;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, val);
 }
 
 static void
@@ -1284,12 +1290,14 @@ samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON0, val);
 	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON0, val);
 
-	if (lane_hs_rate >= 4500) {
-		regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, 0x0001);
-	}
+	if (lane_hs_rate >= 4500)
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, val);
+	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, val);
 
 	val = 0;
 	/*

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
