Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68608606A33D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qg4qypG6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=hiI/uKff
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ovYJpoqg1Fh0W3oR85zy3xPM9jC5LuZAdikJvboww1E=; b=qg4qypG6xYsh3emgaRuAGW9Pdv
	O5lHjlwSlC8rBEHCq17xUhEuygimTofPAV9jeJlPBTfKAnA/kA/M5+dr2RFaNIp+U6VbEDfI2zxhK
	clYFf1uwXsvC22iCnonuqj1nUME+9X1fo4iezFo3GNRBM3syKZhYhe6QnTd2Tj/A3Bp6JPJ2lK0LI
	BXjbjSeyjoXZuELqmHbdGEhtI0vxWJilmctMnw1HqbO2CrxH1jU0WDI4kzPkJtUB+hxzyaTFFoSts
	HgBpK6Ew7KEIDr/jhF/P9C4Cz6wX2kjautYH/oO4kkmA1iR8UUtZ2vpgMd4t0TtWmISYmLyP907La
	kXhGUC3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeY-00000007oA0-2V4X;
	Wed, 18 Nov 2026 05:56:18 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeK-00000007ntg-2xt9
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 05:56:06 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-8b77e464208so54743b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 21:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981364; x=1795586164; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Px927uPzL0G0bD9p/DBHwmNAaSmtnfAuqfR/vrK6L/E=;
        b=hiI/uKffJCAI47DleMI7Q5pQhsqikSeBcKCGiAG9uoFo7y1JKZYkY+TJwE1Q1bOzde
         cHnqvnVK/kEPI07pMBCK3exHJmAC5UCOLufOQuiJOCDDkwUwmIDBYAip04X7NKYf2UHe
         Jhgl3miUK4/GHZ+EWd7zEWmYW3nyg6JSllvGF3u8Mv4cCxNut/c5H3q2HlpbeCbGCVIs
         VUqLarfVabV9XfhS/8okj9z7D/CbWsT7hZqgj2Rzv0DXAN71cbXJnsTzgOWcitizUc03
         eREgK3tb43cje29JkmBNEJTYVP2cCQ9skGzBDEyf1zh8xvpz/ayMKa3VIsbXtMp2P7zU
         egMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981364; x=1795586164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Px927uPzL0G0bD9p/DBHwmNAaSmtnfAuqfR/vrK6L/E=;
        b=IXvXUeH0AdVqWotepZcViQIyt7uKsQvapJjh9pXOLu6ZC9nbTjrtemc647lxJxygPC
         DinCxAFT3RgG1sXD01KhYgQatkN8FGU1xsfWVkFGxSmplmMfbbcFw8LsCLxyN1gB+0a3
         GWqi89fey2dxRrdz/ArSmYd9wNk/sRzcaHwPVb8JwW2gGDh4EEXO6a9MPUsFDB4RNsz3
         UFr+9IC1W8DtDcvxU30vYHQlcvKqXies4NAkjGu2v5KUrXPZ0v6IQZdd0GVVkozJ0amZ
         iBwNUY0gUYB2VWk0QKXPuY7592GyPKKoNN2jMFmjHO56JyNrevg+RUAGx34+jNntYgzn
         fRcw==
X-Forwarded-Encrypted: i=1; AL+hErGCipy8GHpqi7xSRRRn/fmjVAsID035cvpHTeOViy2bb3Y7KOcUrg5uLKORIR75yahOOIot2wZPXs2z7j1JKg==@lists.infradead.org
X-Gm-Message-State: APuU4Z83xbYMEpSWI08Vdgr6MEIVI7JLVqJjVNd38/ZxDnPMCTccz1Od
	Pxas4vAepymRh5u4wmG0J2EulL7mixlhQC3jn+CFj06IfrvdBbkNXqFG
X-Gm-Gg: AYBFou3zk1moOVjjY2XMsWfaiJ85oMBOg289SOhY83jKKg1AdiJvUGhdp/n2Gn6gOel
	V++1ydp9JqESB5x3Wey0XNZ1LkcO2XwZV+lPhWML6NFD0JQc25gw0HSsynGpt1zx5ngcgAnuCGd
	uox1Kt44YuO9VxW9KHWG92zdLIzA/qwEAyLZ3161tQT2lDRKIPWddTiZlqhm+5o97lbzXwl65co
	0eRurN7S4qAXYNCfB8qeCGLW9txRGtV+u8sBxp+NXdE/O/tFONrHLxq81GWHkEguI8cy5yifKrp
	43HH5Qg7ljteMCzMJcGlR8deWNiARUsNTpprhSwIsXtoF2x1BWuM32LTiEt9fBzDTWD32Je1C3s
	mo41GF3wyjSlPPC1eOhswhJiOrLD9WXD39/pFYo/ASk8jFwS6lW2kfMl5eH+nF1WBvqKNeBWNmf
	lxyeh6WlESMgLGR/KkxaTIKT1OrvmdJczNzHEVZW21xT6tN0YetF+hY/jEC503mkea6mrFgKzPK
	FzppMfIH/Bz+z3l6M/v85sg2NCBQMC9Xxg5Dv4pXZ+fLeGb5stn8ooVxdXJwDDrh7FkxXoWyMVN
	9XeFp/1l9PK0xKgmIxult/rMSmkSuSLo1m9W+nwgz4GzfRyawzfcYd6npyaoeAGq8yk4EdzYbQC
	v7zXRBsftphK/0xYIxA/h
X-Received: by 2002:a05:6300:270d:20b0:3fa:c9d8:658f with SMTP id adf61e73a8af0-3fe893f7618mr1954376637.2.1794981363700;
        Tue, 17 Nov 2026 21:56:03 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:56:03 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:18 +0800
Subject: [PATCH v7 5/9] phy: rockchip-samsung-dcphy: Move block-level setup
 to runtime resume
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-5-8de1adac3a74@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=2576;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=jtUxPRys/dBRdscqaMmdtwL+bhADXEXJWj8FzO882mw=;
 b=UroCCPoJ8igH1/HP9OY6jDPFTILu0l5ZeEUfeBcqKSuK7zWUkiNd/OQKmsAoAfLFt2JaaWlW9
 jPr/Rva0/P3AOOYghEgZn1HzqiVjuMEoRxkhjnAOn+R30JcoqfjixUU
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215604_812797_EA258E3A 
X-CRM114-Status: GOOD (  12.44  )
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

The APB reset and the BIAS references have to be treated as block-level
[1]: both the transmitter and the receiver need them, and they only have
to be programmed once. They are programmed from the transmitter's
power-on path today.

A later change registers one struct phy for each of them, and a second
consumer coming up would then reset the block underneath a PHY that is
already running.

Program them from runtime resume instead, where whichever of the two
comes up first brings the block up and a second one no longer resets it.

This puts the BIAS writes ahead of the per-PHY reset assert, where the
TRM's worked example has them after [1]. That is safe: neither M_RESETN
nor S_RESETN covers the BIAS registers, and the values written are those
registers' reset defaults.

[1] RK3588 TRM: sections 22.4.1 (address map), 22.4.2 (reset values),
    22.6.1.2 (reset) and 22.6.4.1 (D-PHY transmitter start-up)

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7a009d87a665..d6acc3e2d448 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1346,7 +1346,6 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 
 	reset_control_assert(samsung->m_phy_rst);
 
-	samsung_mipi_dcphy_bias_block_enable(samsung);
 	samsung_mipi_dcphy_pll_configure(samsung);
 	samsung_mipi_dphy_clk_lane_timing_init(samsung);
 	samsung_mipi_dphy_data_lane_timing_init(samsung);
@@ -1373,10 +1372,6 @@ static int samsung_mipi_dcphy_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
-	reset_control_assert(samsung->apb_rst);
-	udelay(1);
-	reset_control_deassert(samsung->apb_rst);
-
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
 		return samsung_mipi_dphy_power_on(samsung);
@@ -1667,6 +1662,12 @@ static __maybe_unused int samsung_mipi_dcphy_runtime_resume(struct device *dev)
 		return ret;
 	}
 
+	reset_control_assert(samsung->apb_rst);
+	udelay(1);
+	reset_control_deassert(samsung->apb_rst);
+
+	samsung_mipi_dcphy_bias_block_enable(samsung);
+
 	return 0;
 }
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
