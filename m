Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BABD9CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVXv7BSOLhD+nlQLujIrxsJDdcpuVGEsSf8m6+fsVEM=; b=tSDD4xQW1SWbA5
	3oTE8zesEb3rllmVH3p6dqbbWzsQmKkd6SyJEOts2oJcfbwdTFkR6XcB8cgIVWvMrID5lAxorFI9f
	+q9lPO/eH/BKzmDfCYbs9eUgS9Onau6UlcMntPLiSyJ3oAoFyeJ217Fx+Rrj+/UcPKuouLEhRIg3J
	BepuYWpKOLDnjQ8gsKekJh8FOcNp1DWd3teY79FySyAstvyuaGFCbvmofA79Ey0FB691NqNx0M3bD
	r38j5YRiDw6LMy0HGNMjpaF2dY2pg/SS/CiIwAS5G4oAy+y7BuqdF7UiROpI51fw65dK6TdBfQ0Oe
	R6Odlp7aV4xK59qmSRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkc-00000002OY6-1E0v;
	Fri, 16 Oct 2026 08:57:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkX-00000002OQn-3VDB
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=; b=VkOvjFw/y7JABw3GKtrzzmt9/V
	s/z+ahfIrvhh9lCL1vED/OApdaP+6S9yssRjzm9UycPsvyQJxN2bBUMsMsw5/kGCH1juX4KEMBeae
	KJMzJm+1RUXGqbiCHNmC9GmPtNQi+dbp72d673OVISZfwkpVYtYFfBzrZvQGaVLlOBZl+p+snVLYi
	IfMJVpluzwLfns7gw9tjE/l/Hq5nM1yuqBuTf1BsySTuPyw0SW5gE8vXEdsZu1orCGYXmpeTP5Hly
	D859NoLpdsqMFYzr4pDWcuHKuXUnCPRqrtmp79AIFlIo9H3xz7c1R3MJkdxgyClHZPAEdQIurp885
	RjTWoFug==;
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdkU-00000001Hug-2bKr
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:12 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2df9c3719f6so4755225ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 01:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141028; x=1792745828; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=;
        b=nR3BpdEwqMVvOBCHttY+LT0M6zmiNrmPle0AvrVha2L6szM03B9ZUMReNyhUv8FAzA
         di2SeKzwRzXILJQ1Lhe0ppuKtPomHAuUod5QZa0SocshzXOLAofpamgonr3P/ADMgv+/
         yUlYG+sur/PLGNwJCxXfjNuJDY2FYbso2unjgS0HeHM7sKtfHU0pIZ3aCckkFpsL1EPt
         3z0neRUl/+1ssxnH6s4RomsBZSbSCBHcZyP2GezDFpGGP9GeokUruSz3tdaPTEVmfofZ
         idLOZhxYow+S+s3gOFlX0w67HuVEl+sA4ygeioSlUu3ZNIcz9cQu5VpQMaAs7RCdCqU6
         SIEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141028; x=1792745828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xv/fzgEaLHwSOTuuR0+7ucwKNcEXz6nX6gNKEqp1/5w=;
        b=rSlpoWtWuy2j/VD4FIm0kySiaUIlHwX8qhP2mr00S8vdIJ0yhAeqLLJ+aJouvSoUMY
         G8YbXq6aX6T700/6MF4mHTocpuWKmaH9UPe9zuWnNsLls0GG/w6zWcVjFqYqmWN6Nhso
         rHnCraP50IvIh3jFQVQU0iGoGAAXtiNZYa3wD55JJgGIPjBLlt7djsTfnFDPoAl5+Sqb
         XRitJr5+hCglg73rTFdcA5CZTPUM0f7Xa9Dp0AtJ6gHsnT1FhODRSkVu5WBLFUL9FNxO
         sEFbs3sAf8y+ZOasM1I368o/snW42HDruJskAXwUQ8hnOqt8LLejvKcsmm8DcJEdGfXi
         n/lA==
X-Forwarded-Encrypted: i=1; AKwUvBwVNXLH06dXxCC4P5M3iqovVo1TwRNzfL0npUvsJj8zvvzYe0rgCNvox9D6Dec1LfbBCHVn6RRn1XLtOYDx8A==@lists.infradead.org
X-Gm-Message-State: AFq9FYLf7sF1nTfsEPhQCsGkEni/OnmeDJ3u+tEOkCVts15mTTsNAu4T
	6OXusnaNzPhKMO1/psoZ4vS2IyC0yjByOmIO2U36dJwHn5eUg6ecFilB
X-Gm-Gg: AYBFou2K+qagTc6NNFA2OAvcouCUzVHnoAs93GHAgEmtPWYvI8Gi6LN3DFO0ZUiOXi7
	SF4Oan41PEkpfi0d44olWxl1+J5G1YDPSjKIah5zjDtuBh1RncmWotnEkQT8NoFso7CsfW9kJq4
	/Z+/e6otbqisfAD3HqjvBkDw73h+bJVLyeOCd3fb7jnmNVAOpPYFJ0xW0gWg1x0pyaN+3D+x79a
	PEjwj9zUjvOTPHek+N2S9oyelr9f5PhlJmTT8+NcYbYVvrRXhl9c+eu9Nwdk6lsgxls7Lit54/8
	BovtfP62eyjHq8EERP2+9bkpKBAO27X8aARGOcmfW4G74vu6pUjLte3l7ftSSmBvZYyKjamXm6S
	eaikjPtcegnzHh3UnYRsj7UI4Pt77bnA9vuhN4czIIcTVaj7r9f3X+ii2FNfbZrSEs8ZlCEzHg6
	XioVcRQd9P92dJOT7ToMGmGPGwZuxCUSDvBleHlB8lJV2ax7SSId2jaEZm9DmYoeEzD2FzRpx3+
	scM+tYO4EFI2ZBGMSDwRmpBj9wjZg==
X-Received: by 2002:a17:903:1251:b0:2e9:9263:a58 with SMTP id d9443c01a7336-2e992644a1cmr12846855ad.1.1792141027903;
        Fri, 16 Oct 2026 01:57:07 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:57:07 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:39 +0800
Subject: [PATCH v5 5/8] phy: rockchip-samsung-dcphy: Add a second PHY for
 the receiver
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-5-e63b49eabe2d@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=4721;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=lmQQQHnNl4r4tGiXOJbghuVbF8/OCluaIwoRthxoOuk=;
 b=o82DbajtlVgj9pfMdMky1HoLutaNEmktGT4Z3sgMNNpl0U5mLIk7MSo2mxqacAFMg1/7Dl30+
 eBrXn2uM4oFB7ck+YG5jMlU87B42qioRn0lkyuEEZnrShidfaV6uW3A
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095711_009387_E237928F 
X-CRM114-Status: GOOD (  18.08  )
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

Give the receiver a struct phy of its own, with its own phy_ops and its
own samsung_mipi_phy for the state the two do not share.

of_xlate() takes the direction from the second cell and falls back to
the transmitter for a single-cell provider, so existing device trees
keep working. It now rejects an unknown value in either cell, and a mix
of D-PHY and C-PHY consumers, which the TRM does not support [1].

The receiver's callbacks return -EOPNOTSUPP until its bring-up is added
in the next change.

[1] RK3588 TRM: section 22.1 (overview)

Assisted-by: LLM
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 69 +++++++++++++++++++++--
 1 file changed, 63 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index e4293c8d2b29..316d4c4d49c1 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -296,6 +296,8 @@ struct samsung_mipi_dcphy {
 	struct reset_control *apb_rst;
 	struct reset_control *grf_apb_rst;
 	struct samsung_mipi_phy tx;
+	struct samsung_mipi_phy rx;
+	/* PHY mode, PHY_TYPE_DPHY or PHY_TYPE_CPHY. */
 	u8 type;
 
 	const struct samsung_mipi_dcphy_plat_data *pdata;
@@ -1511,6 +1513,22 @@ static int samsung_mipi_dcphy_exit(struct phy *phy)
 	return 0;
 }
 
+static int samsung_mipi_dcphy_rx_configure(struct phy *phy,
+					   union phy_configure_opts *opts)
+{
+	return -EOPNOTSUPP;
+}
+
+static int samsung_mipi_dcphy_rx_power_on(struct phy *phy)
+{
+	return -EOPNOTSUPP;
+}
+
+static int samsung_mipi_dcphy_rx_power_off(struct phy *phy)
+{
+	return -EOPNOTSUPP;
+}
+
 static const struct phy_ops samsung_mipi_dcphy_tx_ops = {
 	.configure = samsung_mipi_dcphy_tx_configure,
 	.power_on  = samsung_mipi_dcphy_tx_power_on,
@@ -1520,6 +1538,15 @@ static const struct phy_ops samsung_mipi_dcphy_tx_ops = {
 	.owner	   = THIS_MODULE,
 };
 
+static const struct phy_ops samsung_mipi_dcphy_rx_ops = {
+	.configure = samsung_mipi_dcphy_rx_configure,
+	.power_on  = samsung_mipi_dcphy_rx_power_on,
+	.power_off = samsung_mipi_dcphy_rx_power_off,
+	.init = samsung_mipi_dcphy_init,
+	.exit = samsung_mipi_dcphy_exit,
+	.owner	   = THIS_MODULE,
+};
+
 static const struct regmap_config samsung_mipi_dcphy_regmap_config = {
 	.name = "dcphy",
 	.reg_bits = 32,
@@ -1532,19 +1559,42 @@ static struct phy *samsung_mipi_dcphy_xlate(struct device *dev,
 					    const struct of_phandle_args *args)
 {
 	struct samsung_mipi_dcphy *samsung = dev_get_drvdata(dev);
+	/* Device trees without the second cell describe the transmitter. */
+	u32 direction = PHY_DIRECTION_TX;
+	u32 type;
 
-	if (args->args_count != 1) {
+	if (args->args_count < 1 || args->args_count > 2) {
 		dev_err(dev, "invalid number of arguments\n");
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (samsung->type != PHY_NONE && samsung->type != args->args[0])
-		dev_warn(dev, "phy type select %d overwriting type %d\n",
-			 args->args[0], samsung->type);
+	type = args->args[0];
+	if (type != PHY_TYPE_DPHY && type != PHY_TYPE_CPHY) {
+		dev_err(dev, "invalid phy type %u\n", type);
+		return ERR_PTR(-EINVAL);
+	}
 
-	samsung->type = args->args[0];
+	if (args->args_count == 2)
+		direction = args->args[1];
 
-	return samsung->tx.phy;
+	if (direction != PHY_DIRECTION_TX && direction != PHY_DIRECTION_RX) {
+		dev_err(dev, "invalid direction %u\n", direction);
+		return ERR_PTR(-EINVAL);
+	}
+
+	/*
+	 * The TRM (section 22.1) does not support the transmitter and the
+	 * receiver running in different modes, so the mode belongs to the
+	 * block.
+	 */
+	if (samsung->type != PHY_NONE && samsung->type != type) {
+		dev_err(dev, "phy type %u conflicts with type %u already selected\n",
+			type, samsung->type);
+		return ERR_PTR(-EINVAL);
+	}
+	samsung->type = type;
+
+	return direction == PHY_DIRECTION_RX ? samsung->rx.phy : samsung->tx.phy;
 }
 
 static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
@@ -1620,6 +1670,13 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(samsung->tx.phy, samsung);
 
+	samsung->rx.phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_rx_ops);
+	if (IS_ERR(samsung->rx.phy))
+		return dev_err_probe(dev, PTR_ERR(samsung->rx.phy),
+				     "Failed to create MIPI DC-PHY receiver\n");
+
+	phy_set_drvdata(samsung->rx.phy, samsung);
+
 	phy_provider = devm_of_phy_provider_register(dev, samsung_mipi_dcphy_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
