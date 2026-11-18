Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49D5606A325
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U4uiTHf5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ykatxDTp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Q8XYyoXrR+HBhTu/Yv5O3Gixnkn4ZK511APet9Xf/2Y=; b=U4uiTHf5PJes1VmwtyHpalIDqs
	2yyJkJc0O9OfwQi0Jko3IlZ3bzzWOFfNyqbvtpyJy3wIoxF4r0WitkHFTFaQQxP0XO58siF+I1VMo
	mNhz9PgU21I0aiiayowXB51gaMOjNqCM60QcaRm82MxOpl/JXxzXXWxgN1r5MJlf7X9hGnz44/dEC
	MUPlWXOpdwaaKRH8jyUtYNC8g1wmBHsV59CeWLIPSouEbaCRQDgMx+xPk5uYNujZkCmL4gGzNkXXi
	0cQUVRES+NtZozfscUSDZdIOBGG1Fi3I8p04OXPRGQSqjy6t8sJV3tTaXNsmsqLtNIDYqiY21Aart
	VWr7Bw2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeo-00000007oUY-1qfW;
	Wed, 18 Nov 2026 05:56:34 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeT-00000007o3C-0mYR
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 05:56:15 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2edcf6c3a57so820675ad.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 21:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981372; x=1795586172; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=btRAcHUeA6n57bmtR6kPYkSdBmN+obmF05HBvyePiOY=;
        b=ykatxDTp5AkynjUnK8GzFUnwvgXqjA6McaPQZX5f0C7Xlht5YpYVDQmhXqlPwBW6Mt
         xeBB7ztfJs2QSoC/bfOBF6W2YjRx5gt+OpQSBuF0kuCAR5W+Mu60IUc/7PwrGk4NbEzV
         0lsXpABFzWUx8J2IvBLOdrQTeERov9wiSb+wVNPKJh3aqnFI2g9Vc0ytugv5+xi3E+jH
         XFrhBqaGt90AJnQdJ6yOsvJf2uRAujr5IDONYfm1WVCe/9IRjobsnlR4OwHtAYkLV1UJ
         h5NO6Lg8810Gaurz9quOsdRSBfI3CrwhpPYM1LoN/qR348xbD+HmXcJmydjol+g4pYaM
         qMBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981372; x=1795586172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=btRAcHUeA6n57bmtR6kPYkSdBmN+obmF05HBvyePiOY=;
        b=Kf3qYjfVmLPWgmggZC/ITakaNzi1/SSEuAzRwOYszcU11kiaX/gVpz33ptoHmigMYp
         DC9kOsQQ75Jj+pEfkEs6iNq4dxC/sGSwhWi6LO1Eeb1nLfp6+cHethSU1XrjyqyOQhvq
         hxTLOY43iUx/OFYI9nkp6rTcSxBzgLsny6Wi0L+e/jBruBRON51f8loHShGwoUAJgKqU
         kueFCSGpYVtH3vDy7WrYmA46rBlGWlHlZgv/87iIFJMRsn1d1XilOs6OzHYeJ/b6EUra
         plpqSKK2GIlbKDBpnO2useanQlq9avnbhg1d2ilcGSrrkcnCWyuXmhbzp82bjx7q6qJ/
         mAbQ==
X-Forwarded-Encrypted: i=1; AL+hErGesmqtXDudpqFUOvdABpbAQ4fuw2s5+vpR3KGqRDAzgP6t4wvWKE5bEdU7XzbXfoFiYhEJmkwwEDhlLhuJcQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/IyIZCk0IHRLssZoy+GHRIVoQDyFHKSg/OnsU8GrbNlO7qmTjw
	dvcVIuVbse7n0VJnYBFeGA4yzGghe16xP62ew0QURzEJjqLUSD5KcgF7
X-Gm-Gg: AZFdTZc/6xcqnShnO971LAToN69YBa3wgj7vC7SV+XRBdG+Chfd83CNVjpu2kUTCOXW
	tGWUHGhrBuT4tk8OWOnnZBZRaM8ak06nyDOtJr4+on1FThVmMvf1J1yaftJr1p2Qhl1CU8oCN6T
	A1n5yuB+kNo76FYQJKUrd/1AkZJW3lafxnIm2bryalFRinq7zFvWFEO3aQKemYLOxGg7OXEkSts
	kNmMBwuxYRcWw11mNmRd3I2YB9nd9wDb1xfr8qsa1CRivwPUoL0K3hUaTRZbEOfx/eaVe1dqpMa
	EB0Rffpj781nT77m9YtmAyx4DRkc9bjm6cGzvGo6SEYDhn21B7s1BVPWxwYCULgQUgwVbfghNRd
	YYEdSt8Kc50aRKkvtjFGqM4lOi1MiiNO0TUSqA33n8LqqWX5d18ZUYtwuWwnDYdUc1tpcguRN4d
	/oANx3PJSgLeOIviSGF5j76DLwOyLJKOU0HpOH8MBVSJIKrhuJaE4ZhKBLcf53BWFB+bZIPOsMv
	D46YpeIpFG6VbjmPJDMiCLCL5TUXGve3GNvb0NGt7C2rmF8s8Jl6kUAxDH1un4BPpIma91zCEd9
	RBMrI/quWDKCk5JVTsm2CL2apmyZgjCvT41GSie08vC6paIBAWmMT9w8wwrlY0miKGwqvMRNuGK
	tlOwHJePbK/v/QzszI1PB
X-Received: by 2002:a17:902:ecc8:b0:2ef:de59:1af9 with SMTP id d9443c01a7336-2eff72e8f80mr25437235ad.2.1794981371982;
        Tue, 17 Nov 2026 21:56:11 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:56:11 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:20 +0800
Subject: [PATCH v7 7/9] phy: rockchip-samsung-dcphy: Support the new
 phy-type and direction binding
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-7-8de1adac3a74@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=3409;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=v0EnQCVIVEgPp9E4a7EtrkAw5gnRZVFlWGkYOQI4nos=;
 b=Hu6MAklGjeVCpir6ktn95rYPoDSD1n1uj5jiv/hOFAyu+4U60TwODMSVcfBTNTIl9RYzawGr+
 Dz0nfb1zvl2Agytv2YXgVFyTVXlYD4YF+cGciXq0lX0Bim1XPxIKk8h
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215613_291879_46DC3254 
X-CRM114-Status: GOOD (  13.88  )
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

The binding now selects the PHY with the cell and the mode of the block
with the phy-type property of the provider. Read phy-type in probe,
D-PHY by default.

of_xlate() returns the transmitter for PHY_DIRECTION_TX. The deprecated
PHY_TYPE_DPHY and PHY_TYPE_CPHY select the transmitter as today, so
existing DTs are unaffected.

A phy-type other than D-PHY or C-PHY fails probe. A deprecated cell
value that does not match phy-type gets a warning, and the transmitter
then refuses to power on, as in C-PHY mode today.

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 32 ++++++++++++++++++-----
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 7a62db810d4b..1228bd794759 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -309,6 +309,7 @@ struct samsung_mipi_dcphy {
 	struct reset_control *grf_apb_rst;
 	struct samsung_mipi_phy tx;
 	u8 type;
+	bool legacy_mismatch;
 
 	const struct samsung_mipi_dcphy_plat_data *pdata;
 };
@@ -1384,6 +1385,9 @@ static int samsung_mipi_dcphy_tx_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
+	if (samsung->legacy_mismatch)
+		return -EOPNOTSUPP;
+
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
 		return samsung_mipi_dphy_tx_power_on(samsung);
@@ -1557,13 +1561,21 @@ static struct phy *samsung_mipi_dcphy_xlate(struct device *dev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (samsung->type != PHY_NONE && samsung->type != args->args[0])
-		dev_warn(dev, "phy type select %d overwriting type %d\n",
-			 args->args[0], samsung->type);
-
-	samsung->type = args->args[0];
-
-	return samsung->tx.phy;
+	switch (args->args[0]) {
+	case PHY_DIRECTION_TX:
+		return samsung->tx.phy;
+	case PHY_TYPE_DPHY:
+	case PHY_TYPE_CPHY:
+		if (args->args[0] != samsung->type) {
+			dev_warn(dev, "unsupported phy cell %u with phy-type %u\n",
+				 args->args[0], samsung->type);
+			samsung->legacy_mismatch = true;
+		}
+		return samsung->tx.phy;
+	default:
+		dev_err(dev, "invalid phy cell %u\n", args->args[0]);
+		return ERR_PTR(-EINVAL);
+	}
 }
 
 static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
@@ -1574,6 +1586,7 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct resource *res;
 	void __iomem *regs;
+	u32 type = PHY_TYPE_DPHY;
 	int ret;
 
 	samsung = devm_kzalloc(dev, sizeof(*samsung), GFP_KERNEL);
@@ -1628,6 +1641,11 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(samsung->grf_apb_rst),
 				     "Failed to get system grf_apb_rst control\n");
 
+	of_property_read_u32(np, "phy-type", &type);
+	if (type != PHY_TYPE_DPHY && type != PHY_TYPE_CPHY)
+		return dev_err_probe(dev, -EINVAL, "unsupported phy-type %u\n", type);
+	samsung->type = type;
+
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
