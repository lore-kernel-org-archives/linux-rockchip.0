Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB51660A383B
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 08:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0mR5HaJP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uoLzfvkO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o3s9Bn5mVgmlvQX3nPOP1W1HaywP3gj7THPo9sC19Tk=; b=0mR5HaJPGmH90O+rlWzQtQ4sOf
	VGuNWleN5FiQGFcW0BlCT5tbwbayoSyrf6wziAzLoWtdqSxim0fLIFq64S8H5ME9q9dYCE8vSAp7J
	EEjTEO+Ho4s+5OFMm5i4KtO60K8jzSIpv1lxgz2DsdU09fBuW7EP3SBQzTL4bYwTHhdvz3Q1Qo89x
	XwCt6ctf70gAmoEuUyOfLFIdO2n3BKFXB6lEbeXnGImxyyFRPrj6fxzIAvaFKAP0+AxIQM3ZJ3B5o
	Izwy/u1Rh2MmxA2hzDOcv0NCLQsqd2HCNgEvFt4YwlIgDlH/W6VK6DwT0e+hLUTqIYUzxD3wRAYYZ
	3SsJDIJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh44-000000034wo-2fVc;
	Tue, 10 Nov 2026 08:18:48 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3z-000000034oU-4ALb
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 08:18:47 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-36dc4797082so245384eec.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 00:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298723; x=1794903523; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FXZxIYgjzzKBuaCqOKBWOfJFlYD92yilrBTGqn7KzOc=;
        b=uoLzfvkOHxdLdDsAgixkZmGIQPkCUVBeS6YZobM8AtMBulgM6VXwn2ofsYVXfPQiel
         MMu6n27ALxUlB9s1D7orJOIaIezPekn5psbUpHNqys/Tx6Gq3H2JoNL6BbN5QoRmVWmg
         F1yA4dlpzsAylQVV8mB05aqUe4vntQTKYXhEWEMtNywEgmN+KcIaBj61E2uXAidpeMj3
         FFp/PsodTxYioWKcHzGpI2WdX9DyUQHyTNYA6w7BDntb0XcD7PtX0W2JJYvnobXMsOpI
         Kiv6fdrdHBn1gev+M4D3eqhq2BefQclTjUm8wneMklo/5yY6J+olAKXpq1X/lwzWKx0b
         9EPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298723; x=1794903523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FXZxIYgjzzKBuaCqOKBWOfJFlYD92yilrBTGqn7KzOc=;
        b=DGnPb+tY9DcySJVC79iTwOvOYGJMzdJ0HpM8QsaCmm9fHik59ZJ4PU/Ah8JxXXPYjW
         QLZiKsXKHn5UG7OcBhuj9IEyoxG92LrB4YFp4irAIRzjbBaRZuke+MUaiB+SpzLIcmn/
         nXoxtQMwmmdFhj1QTw+huoZbaCMNqZXaoHbGtb6WqG6ZZUx3SMe9BZvaL12kd1OHxEZO
         tNnbHGemmI8GeYjuL9pIC9+wYZK5r2snxZWY7q8Lua2Bzh3eju44pshYdEbPA8ZWjaQL
         BSqFa15sUZRkMCFxI+zX4yU3B6YeC1jPQw9QL0Wzsapn3FUOfAbWZkJOMem1PuH3PjwY
         iQIg==
X-Forwarded-Encrypted: i=1; AL+hErFJCI4rv35hNvA01+2aUkf55lmuSGkZ0Q+Z2Q6o0yvGn1grGPKZNhI2ZXpuH5TaekKLQVMb47cpIi9TBrcuRg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+Sl4Kh+LIAYNwN5RDG1ytBveAPyXuRQNT6FmaRa6ZbQYQPiWMG
	UVcxk9eCE1JVWfCKzGnDaFORatXa2gS3i89oMvayr3JzPXcDzDtsy4vz
X-Gm-Gg: AYBFou0buE0ebrRWAi7S7gOfspy8fF1KVgxVGO2Dbwg5JixrMkxFBCLzVPF05r5lZiP
	741IHWViww/dIjky/H5EIP5LJmwLHb117C9bQvtPz69+05GyDtJU7V8flxLMyiwbi980vAi1mBx
	6ILHmpzOpzrzVDZ3MiB047YOHuNz5tW9p6oBHJ6/yXwz80/BTpV9sJs37fkSrtTWrw0oTqCPyPQ
	x8WUwEQHuKczkVn7C8CHPZyIiwG44v65DZ9gI23c+xyUYmdcWDYxksCoUWHQ/upphGMzMj/7kjE
	4CRrkEBMYAFG527YnYKsYLvyFQ/l8MYKsux0T1fO+TewkziI8UthVspLKkvrRpTP/QRdtzIO0Lq
	ZUXYNF4ZHY1S7o8DoNaXyRUGSCeOOjaKPS+vQttdlYcL9MqfiA3MoyL56PWCAfroz4paOhpZoap
	RmtBwLqPHyBFzPlqR+FLQ/3NzMDxRdA7ZJYBI1fiXyL/7EejCHc2Rccq83K42D02m4VajGs0yOw
	TWrELM1Z0xmwwxqA640zM2VAPJuHn/fah5zchLdVu3PMvO9XzIIU3vvtjhnKrNtY+HI7YjotA56
	d5jcsa8ZDK1maIURfCxYxG+oWbNmf+ppQ78/CmeQGonFwGJtDRI85HmT+g7u
X-Received: by 2002:a05:701b:451c:20b0:1b2:5884:a039 with SMTP id a92af1059eb24-1b3b5e0f414mr4047319c88.0.1794298722660;
        Tue, 10 Nov 2026 00:18:42 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:41 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:09 +0800
Subject: [PATCH v6 6/9] phy: rockchip-samsung-dcphy: Name the transmitter
 helpers and ops
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-6-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298692; l=9009;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=/a13r8uSs6LEfL9vbTFaB55dpyKEbhdnf/mU3FYmZFQ=;
 b=b2zgm9Kj4Fr7H2StjoxXa1PdDsGlw8WyWimdFlb86ZfZfolTtkXFdwaYStfq/eL1+nH/r+nLq
 B25L8+ulrBbDP2qn2bSmObXR6cOcwceQ2yTuJCfmpYV6YkQADPkQrvq
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001844_074980_0E9B62AA 
X-CRM114-Status: GOOD (  18.15  )
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

The block is a combo PHY: it exposes a transmitter and a receiver, and a
later change registers one struct phy for each. Prepare for that. Give
every helper that programs the master lanes a tx_ prefix, and move the
phy pointer and the lane count, which only the transmitter uses, into a
struct samsung_mipi_phy that the receiver can have one of too.

Name the phy_ops and its callbacks after the transmitter as well, so
that the receiver can bring its own rather than share these.

The BIAS block and the PLL keep their names: the TRM puts both in the
part common to the whole block [1], so neither belongs to one PHY even
though only the transmitter drives the PLL.

No functional change intended.

[1] RK3588 TRM: sections 22.3.1 (bias generator), 22.3.2 (PLL) and
    22.4.1 (address map)

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 67 ++++++++++++-----------
 1 file changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index d6acc3e2d448..c40c84791eca 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -280,6 +280,11 @@ struct samsung_mipi_dcphy_plat_data {
 	u32 dphy_tx_max_lane_kbps;
 };
 
+struct samsung_mipi_phy {
+	struct phy *phy;
+	unsigned int lanes;
+};
+
 struct samsung_mipi_dcphy {
 	struct device *dev;
 	struct clk *ref_clk;
@@ -290,8 +295,7 @@ struct samsung_mipi_dcphy {
 	struct reset_control *s_phy_rst;
 	struct reset_control *apb_rst;
 	struct reset_control *grf_apb_rst;
-	unsigned int lanes;
-	struct phy *phy;
+	struct samsung_mipi_phy tx;
 	u8 type;
 
 	const struct samsung_mipi_dcphy_plat_data *pdata;
@@ -989,13 +993,13 @@ static void samsung_mipi_dcphy_bias_block_enable(struct samsung_mipi_dcphy *sams
 			   I_MUX_SEL_MASK, I_MUX_400MV);
 }
 
-static void samsung_mipi_dphy_lane_enable(struct samsung_mipi_dcphy *samsung)
+static void samsung_mipi_dphy_tx_lane_enable(struct samsung_mipi_dcphy *samsung)
 {
 	regmap_write(samsung->regmap, DPHY_MC_GNR_CON1, T_PHY_READY(0x2000));
 	regmap_update_bits(samsung->regmap, DPHY_MC_GNR_CON0,
 			   PHY_ENABLE, PHY_ENABLE);
 
-	switch (samsung->lanes) {
+	switch (samsung->tx.lanes) {
 	case 4:
 		regmap_write(samsung->regmap, DPHY_MD3_GNR_CON1,
 			     T_PHY_READY(0x2000));
@@ -1024,9 +1028,9 @@ static void samsung_mipi_dphy_lane_enable(struct samsung_mipi_dcphy *samsung)
 	}
 }
 
-static void samsung_mipi_dphy_lane_disable(struct samsung_mipi_dcphy *samsung)
+static void samsung_mipi_dphy_tx_lane_disable(struct samsung_mipi_dcphy *samsung)
 {
-	switch (samsung->lanes) {
+	switch (samsung->tx.lanes) {
 	case 4:
 		regmap_update_bits(samsung->regmap, DPHY_MD3_GNR_CON0,
 				   PHY_ENABLE, 0);
@@ -1101,7 +1105,7 @@ static void samsung_mipi_dcphy_pll_disable(struct samsung_mipi_dcphy *samsung)
 }
 
 static const struct samsung_mipi_dphy_timing *
-samsung_mipi_dphy_get_timing(struct samsung_mipi_dcphy *samsung)
+samsung_mipi_dphy_tx_get_timing(struct samsung_mipi_dcphy *samsung)
 {
 	const struct samsung_mipi_dphy_timing *timings;
 	unsigned int num_timings;
@@ -1208,13 +1212,13 @@ samsung_mipi_dcphy_pll_round_rate(struct samsung_mipi_dcphy *samsung,
 }
 
 static void
-samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
+samsung_mipi_dphy_tx_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 {
 	const struct samsung_mipi_dphy_timing *timing;
 	unsigned int lane_hs_rate = div64_ul(samsung->pll.rate, USEC_PER_SEC);
 	u32 val, res_up, res_down;
 
-	timing = samsung_mipi_dphy_get_timing(samsung);
+	timing = samsung_mipi_dphy_tx_get_timing(samsung);
 	regmap_write(samsung->regmap, DPHY_MC_GNR_CON0, 0xf000);
 
 	/*
@@ -1269,13 +1273,13 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 }
 
 static void
-samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
+samsung_mipi_dphy_tx_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 {
 	const struct samsung_mipi_dphy_timing *timing;
 	unsigned int lane_hs_rate = div64_ul(samsung->pll.rate, USEC_PER_SEC);
 	u32 val, res_up, res_down;
 
-	timing = samsung_mipi_dphy_get_timing(samsung);
+	timing = samsung_mipi_dphy_tx_get_timing(samsung);
 
 	/*
 	 * The Drive-Strength / Voltage-Amplitude is adjusted by adjusting the
@@ -1340,15 +1344,15 @@ samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON4, 0x1f4);
 }
 
-static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
+static int samsung_mipi_dphy_tx_power_on(struct samsung_mipi_dcphy *samsung)
 {
 	int ret;
 
 	reset_control_assert(samsung->m_phy_rst);
 
 	samsung_mipi_dcphy_pll_configure(samsung);
-	samsung_mipi_dphy_clk_lane_timing_init(samsung);
-	samsung_mipi_dphy_data_lane_timing_init(samsung);
+	samsung_mipi_dphy_tx_clk_lane_timing_init(samsung);
+	samsung_mipi_dphy_tx_data_lane_timing_init(samsung);
 	ret = samsung_mipi_dcphy_pll_enable(samsung);
 	if (ret < 0) {
 		samsung_mipi_dcphy_pll_disable(samsung);
@@ -1356,7 +1360,7 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 		return ret;
 	}
 
-	samsung_mipi_dphy_lane_enable(samsung);
+	samsung_mipi_dphy_tx_lane_enable(samsung);
 
 	reset_control_deassert(samsung->m_phy_rst);
 
@@ -1368,13 +1372,13 @@ static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
 	return 0;
 }
 
-static int samsung_mipi_dcphy_power_on(struct phy *phy)
+static int samsung_mipi_dcphy_tx_power_on(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
-		return samsung_mipi_dphy_power_on(samsung);
+		return samsung_mipi_dphy_tx_power_on(samsung);
 	default:
 		/* CPHY part to be implemented later */
 		return -EOPNOTSUPP;
@@ -1383,13 +1387,13 @@ static int samsung_mipi_dcphy_power_on(struct phy *phy)
 	return 0;
 }
 
-static int samsung_mipi_dcphy_power_off(struct phy *phy)
+static int samsung_mipi_dcphy_tx_power_off(struct phy *phy)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 
 	switch (samsung->type) {
 	case PHY_TYPE_DPHY:
-		samsung_mipi_dphy_lane_disable(samsung);
+		samsung_mipi_dphy_tx_lane_disable(samsung);
 		break;
 	default:
 		/* CPHY part to be implemented later */
@@ -1488,13 +1492,13 @@ samsung_mipi_dcphy_pll_calc_rate(struct samsung_mipi_dcphy *samsung,
 	}
 }
 
-static int samsung_mipi_dcphy_configure(struct phy *phy,
-					union phy_configure_opts *opts)
+static int samsung_mipi_dcphy_tx_configure(struct phy *phy,
+					   union phy_configure_opts *opts)
 {
 	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
 	unsigned long long target_rate = opts->mipi_dphy.hs_clk_rate;
 
-	samsung->lanes = opts->mipi_dphy.lanes > 4 ? 4 : opts->mipi_dphy.lanes;
+	samsung->tx.lanes = opts->mipi_dphy.lanes > 4 ? 4 : opts->mipi_dphy.lanes;
 
 	samsung_mipi_dcphy_pll_calc_rate(samsung, target_rate);
 	opts->mipi_dphy.hs_clk_rate = samsung->pll.rate;
@@ -1518,10 +1522,10 @@ static int samsung_mipi_dcphy_exit(struct phy *phy)
 	return 0;
 }
 
-static const struct phy_ops samsung_mipi_dcphy_ops = {
-	.configure = samsung_mipi_dcphy_configure,
-	.power_on  = samsung_mipi_dcphy_power_on,
-	.power_off = samsung_mipi_dcphy_power_off,
+static const struct phy_ops samsung_mipi_dcphy_tx_ops = {
+	.configure = samsung_mipi_dcphy_tx_configure,
+	.power_on  = samsung_mipi_dcphy_tx_power_on,
+	.power_off = samsung_mipi_dcphy_tx_power_off,
 	.init = samsung_mipi_dcphy_init,
 	.exit = samsung_mipi_dcphy_exit,
 	.owner	   = THIS_MODULE,
@@ -1551,7 +1555,7 @@ static struct phy *samsung_mipi_dcphy_xlate(struct device *dev,
 
 	samsung->type = args->args[0];
 
-	return samsung->phy;
+	return samsung->tx.phy;
 }
 
 static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
@@ -1620,11 +1624,12 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
 
-	samsung->phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_ops);
-	if (IS_ERR(samsung->phy))
-		return dev_err_probe(dev, PTR_ERR(samsung->phy), "Failed to create MIPI DC-PHY\n");
+	samsung->tx.phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_tx_ops);
+	if (IS_ERR(samsung->tx.phy))
+		return dev_err_probe(dev, PTR_ERR(samsung->tx.phy),
+				     "Failed to create MIPI DC-PHY transmitter\n");
 
-	phy_set_drvdata(samsung->phy, samsung);
+	phy_set_drvdata(samsung->tx.phy, samsung);
 
 	phy_provider = devm_of_phy_provider_register(dev, samsung_mipi_dcphy_xlate);
 	if (IS_ERR(phy_provider))

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
