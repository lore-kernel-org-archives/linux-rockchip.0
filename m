Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3F7CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNR3LQHzwae3jzF3Voxu2xTyAkg5cym8i3BdAzJBZgM=; b=L1Yoh88XVXC9CG
	l88bcVRcyNzyl1fXvX7AieQf1Rr+cUymhNU00tIehRFuUYmQ7kmsPm1RcIDQ3i7ZiWuJXRLH4kk0i
	3RIz4pDZHl+OXYpJdKyQjKKRMlC+3ZfcIRjaKaLlPEtjIOmYvnPJnlJQ9aoXqJkmYiSqCfVVU/icf
	tau9tlAYdUWTo6lqaQhYlzjO/XvjK7lEELQrf4MAqCDPG0rZR1Dcb8gpIlArJia+PDjk5qY1Udi8z
	znwEIilnxsnIvXDv9byvLRF8hCQMfQQP+soPpny3V/lsI+dOicG4SyCBlM527WwjQEU9hs5Ir8B3k
	qwh3YZ5CyWndDFIfOJsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkQ-00000002OIy-1jcp;
	Fri, 16 Oct 2026 08:57:06 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkK-00000002OBC-1zRu
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:02 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2e93e0d86a0so1470225ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 01:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141020; x=1792745820; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tVh2yBZbg04QeorXCBZsTA793N8VgD96vnjMkJMi9Ig=;
        b=f8cqJ66DrG7NoODKdehl8ZJ1HDiEivMvdY2lBlDtjqc+/En6UkQs/XZP+GdUpcfvE4
         Ck/w9BgFMlwpoE2cyZYHeOu0ChcghvtPwJzj/92Mp6z6JYpVvRv+OLaCvGgXS6zmwJil
         BgBNN1q8IhT27GfnA5pN+opO0+8tPfFlO9PVFw1zz/jc/KPU3JnfD0lZsc4Xz8Zef13X
         7gKmFYUt+M0VFXUuCr6FacOWLtn+e/7+8aGl8Wv+D+Fm14UCCz7Su2tTmN/R4NaErlJo
         +953z7VbWE6dCbLGPJshD+/V9DblGx/izE950ixaGRef0VLIkE3xo9kBBE1hYJO5DtFk
         L7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141020; x=1792745820;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tVh2yBZbg04QeorXCBZsTA793N8VgD96vnjMkJMi9Ig=;
        b=MGQRMIH05mXYyL0nfNuqWem35jkleygqdnoq9xhy4vdrGpY/IbYKJN/F9ItMNcgM3G
         iB7ro6CRybHubQag2c1pK45xciOz4EYpy7L6De8JVnppTewmjCkk3Z013BFEN7p7mQCh
         uv+COYEdUN40zA1NBEdkDAhIcnE2DUTWRlmIRnOFWb8zNHZ+inffHjiYsXT+kF1+rAAY
         iSKD2F2+HxeNCHu2Js27uRNl+qayOBgf0bG5Q6RDzVGw8njZuQ/X8ZVBY+z9afsfIU3d
         fUDBZhgtf/8M/gztj0ja3jEjq6mU47ZZevG50CBdAZucbb9DwYv7DT5OhBloU2skt4ZY
         aHYQ==
X-Forwarded-Encrypted: i=1; AKwUvBymhWQpa2RRKsjKkReyUHz904kwTALr925wT7bHn8t0NPeHlyPMnBMohH0KO+37uhfwJqQzLg7wkCtoC7bCfA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKe/feOYXG0kgu8+2EX7H6R4Uf8CSkQixRAwzqNCqApvz/g8DBt
	38G1FYPh7uIgnzka42UMxMDxxwvLzVT49X1ENa6QE/OEBY6Yln/U3Khz
X-Gm-Gg: AYBFou3rHwo/LWHsBKRLinO+WbsasTVfJLxRX92bjJcNQzY/0kqpRTMA9oOlgL/qAdN
	f+yIzFEL1kytUhh1qP5w6NFrpE4O8PKAOSAjDdTqiEP2akja4mKIVUsngCStX2OO2Lq67Q1sCk3
	rJxJYb6j24y7WM59mme5/KXl5/3W9AEL4vl/s7nzMSil/iIF4UBpppJptfQjw95wDb+r3RAYuve
	PovC5pFuqMxQ5ZzqkFCxpJV517+FQCmQkIrqRxdIVuxYQFOc/dioD6lTwZ5C4r0iWcWAMiHhMQn
	s7+hCXQqcs9vtLqFewIqCiOw6re+jm28D/ftc7KrqyK2LUrD/Kr0DjB7LGrbVcjwzVaBw4Rdb5w
	VZOVhIYBeWhhUlMDay+f3S9ALes75iUsR3uqVP08A5SCidLCdgU5w0Xxl4PM0ELosqOyXzdWQv1
	GMuy8jyDyTDhE343q7D4ygVUpIOTgNhycXXdOuABdWv828RYTI8hvk8cHxMV+zOGTy6gI3g33Gl
	J4pgiJy1E6i2XFKnZiPFgT7HXJSa3CfjNuK6JpB
X-Received: by 2002:a17:903:2a8d:b0:2e9:6468:1ff1 with SMTP id d9443c01a7336-2e9646824d2mr63085325ad.2.1792141019112;
        Fri, 16 Oct 2026 01:56:59 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:58 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:37 +0800
Subject: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level setup
 to runtime resume
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
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
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=3359;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=PaA+7EhfjjyXSykHdMCAcs/0kj/172DSX40sjJai2Vs=;
 b=hOMpC3DGfbUpIpLLafpPHjqPnGV4sluEAXnjKxw4tpYX/teHfoW6y5UED13eX1vDR6A9Q7kpt
 me89SI01UkhASRauzk+6cNOCWTsoXBiWJaGuu5kjAWRlBRFI731Q3dH
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_015700_558521_C08B3CC9 
X-CRM114-Status: GOOD (  13.94  )
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

The APB reset and the BIAS references have to be treated as block-level
[1]: both the transmitter and the receiver need them, and they only have
to be programmed once. They are programmed from the transmitter's
power-on path today. A later change registers one struct phy for each of
them, and a second consumer coming up would then reset the block
underneath a PHY that is already running.

Program them from runtime resume instead, where whichever of the two
comes up first brings the block up and a second one no longer resets it.
This puts the BIAS writes ahead of the per-PHY reset assert, where the
TRM's worked example has them after [1]. That is safe: neither M_RESETN
nor S_RESETN covers the BIAS registers, and the values written are those
registers' reset defaults.

The output level select in BIAS_CON4 stays on the power-on path: it
selects 400mV for D-PHY and 530mV for C-PHY, and the driver core resumes
a runtime-PM supplier before the consumer's probe runs, so runtime resume
cannot yet know which of the two applies.

[1] RK3588 TRM: sections 22.4.1 (address map), 22.4.2 (reset values),
    22.6.1.2 (reset) and 22.6.4.1 (D-PHY transmitter start-up)

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 25 ++++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7382043e1f31..1471a1563d2a 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -980,13 +980,6 @@ static void samsung_mipi_dcphy_bias_block_enable(struct samsung_mipi_dcphy *sams
 						 I_LADDER_1_00V);
 	regmap_write(samsung->regmap, BIAS_CON2, REG_325M_325MV | REG_LP_400M_400MV |
 						 REG_400M_400MV | REG_645M_645MV);
-
-	/* default output voltage select:
-	 * dphy: 400mv
-	 * cphy: 530mv
-	 */
-	regmap_update_bits(samsung->regmap, BIAS_CON4,
-			   I_MUX_SEL_MASK, I_MUX_400MV);
 }
 
 static void samsung_mipi_dphy_lane_enable(struct samsung_mipi_dcphy *samsung)
@@ -1338,7 +1331,13 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 
 	reset_control_assert(samsung->m_phy_rst);
 
-	samsung_mipi_dcphy_bias_block_enable(samsung);
+	/* default output voltage select:
+	 * dphy: 400mv
+	 * cphy: 530mv
+	 */
+	regmap_update_bits(samsung->regmap, BIAS_CON4,
+			   I_MUX_SEL_MASK, I_MUX_400MV);
+
 	samsung_mipi_dcphy_pll_configure(samsung);
 	samsung_mipi_dphy_clk_lane_timing_init(samsung);
 	samsung_mipi_dphy_data_lane_timing_init(samsung);
@@ -1362,10 +1361,6 @@ static int samsung_mipi_dcphy_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
-	reset_control_assert(samsung->apb_rst);
-	udelay(1);
-	reset_control_deassert(samsung->apb_rst);
-
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
 		return samsung_mipi_dphy_power_on(samsung);
@@ -1656,6 +1651,12 @@ static __maybe_unused int samsung_mipi_dcphy_runtime_resume(struct device *dev)
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
