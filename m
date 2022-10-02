Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B79D8C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyZHQgb/YfJED9vznbtHrz1dOVxnusYf+xZgNK67tV4=; b=Wf44kAUnxwCAz5
	TNZEcFT4klmOhfuIdt1IV8FTTM+qPEEYL5MpvKg4QSWnbxG1TTLu3arHxhAY+PGprh8FhfnB0LCj7
	w9hCz5RQL98+bz0N5XKxdob7Wwpmb3bTARxLF2h7Mf9B0l93LlIret8uyI/tSPagusUewf3DPAjUT
	9Evmp66yovkDMSZXPIO/kXe+YT41FibVYtnpJOtPHQKMXIOQOReWlzhfC47eIqfzMbIb3SWcJQuPf
	tun/aB5xyil02YNUmxE46IMf+Fd/6SxUd7JniUPzH7A6f/mHQy8qL8il3n75SmCuekC9MMXHiBsQw
	NjP/dsAlmvKoDwwlsV5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesk7-0004Cy-GY; Sun, 02 Oct 2022 06:46:27 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjX-0003rg-6x
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 06:45:53 +0000
Received: by mail-ed1-x529.google.com with SMTP id a13so10832616edj.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Oct 2022 23:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=riE4lHaMXHSULeXJrv4hqGT03pNNa5PlNR8v7ryuD60=;
        b=rsLBLijZiEznSvV9r7o+s1+gbRqyxGcXwwvhnVSRKOyAThP1CQ4D8FRgo4h14v4OuB
         N4/KPuwLrtJJi5use8++OnPnxML8KbamdgvX+5FsTzDlbW51iEHl5Y3aAYzPpvNV595b
         ClEQiXJ0dzWPUKO1e6FchUS4Cn6jE7iHF9xGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=riE4lHaMXHSULeXJrv4hqGT03pNNa5PlNR8v7ryuD60=;
        b=2Ecqm6mLM6A6+WV1Of7OFo/coJrOgF7FacPFeUzNsU/glxAhqwXDZThcsHwfNQHh4+
         IBg+feVCYKcwPvKJoTtT5RJtrjlXQrBZ+ON6dYgfh5sGmAvqUdXG2Q/TTXWVyWIYpTf+
         H2CYnh8w/s45BjOklw00ibJOR80KlsIem88szi9gGo40H+TM89L5U0qWSZpcFM+MwYlj
         yCvOQkk8HXwFHTOPMS1BgiXy7z8rhTvw79qQPqQyaJ1d8VI3rV0QAWkL8AH28KfANwBQ
         bULLfMCNRW1gvFOTAy+prEx3X7ptLCkPleb6uqL+0pRm8sAUDneDGVr5yYbKGvXIB2AG
         juaw==
X-Gm-Message-State: ACrzQf2AB4I6o7JT3F/yjQ+RaJxq2dmMLncOfLwmgH6Sng5BvifGOW+9
	+oU9DjNQLczYxoMjExCKgHPl5Pf/nTzl4g==
X-Google-Smtp-Source: AMsMyM5CVyyAdanMhvOm71Pk3KKLbggnhE3t2Sd+hxkylpEi/NEYUXHm12kfOKY78cBjLZ9qp3zzKg==
X-Received: by 2002:a05:6402:448c:b0:457:52eb:b57e with SMTP id er12-20020a056402448c00b0045752ebb57emr14243393edb.178.1664693148777;
        Sat, 01 Oct 2022 23:45:48 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:48 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 3/4] phy: rockchip: Implement TTY phy mode
Date: Sun,  2 Oct 2022 08:45:39 +0200
Message-Id: <20221002064540.2500257-4-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234551_308216_2E5368BD 
X-CRM114-Status: GOOD (  15.25  )
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

The rockchip phy can be programmed in 3 modes:
- dsi
- lvds
- ttl

For instance in px30 there are two sets of rgb interface pins m0 and m1.
The logic can go outside from the VOP using m0 set or go outside using
the m1 set and the ttl logic enable. There are combination where a set
of pin can be taken from m1 and m0 where all the two path are enabled.

dsi and ttl enable share one register in their register area. Simple
implementation is overlap the area where we want access the register

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 644cf73cfd53..0af50d2e0402 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -217,6 +217,17 @@ static void phy_update_bits(struct inno_dsidphy *inno,
 	writel(tmp, inno->phy_base + reg);
 }
 
+static void host_update_bits(struct inno_dsidphy *inno,
+			     u32 reg, u32 mask, u32 val)
+{
+	unsigned int tmp, orig;
+
+	orig = readl(inno->host_base + reg);
+	tmp = orig & ~mask;
+	tmp |= val & mask;
+	writel(tmp, inno->host_base + reg);
+}
+
 static int inno_is_valid_phy_mode(struct inno_dsidphy *inno)
 {
 	switch (inno->mode) {
@@ -224,6 +235,10 @@ static int inno_is_valid_phy_mode(struct inno_dsidphy *inno)
 		break;
 	case PHY_MODE_LVDS:
 		break;
+	case PHY_MODE_TTL:
+		if (IS_ERR(inno->host_base))
+			return -EINVAL;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -506,6 +521,32 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
 			LVDS_DATA_LANE2_EN | LVDS_DATA_LANE3_EN);
 }
 
+static void inno_dsidphy_ttl_mode_enable(struct inno_dsidphy *inno)
+{
+	/* Select TTL mode */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x03,
+			MODE_ENABLE_MASK, TTL_MODE_ENABLE);
+	/* Reset digital logic */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x00,
+			LVDS_DIGITAL_INTERNAL_RESET_MASK,
+			LVDS_DIGITAL_INTERNAL_RESET_ENABLE);
+	udelay(1);
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x00,
+			LVDS_DIGITAL_INTERNAL_RESET_MASK,
+			LVDS_DIGITAL_INTERNAL_RESET_DISABLE);
+	/* Enable digital logic */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x01,
+			LVDS_DIGITAL_INTERNAL_ENABLE_MASK,
+			LVDS_DIGITAL_INTERNAL_ENABLE);
+	/* Enable analog driver */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x0b,
+			LVDS_LANE_EN_MASK, LVDS_CLK_LANE_EN |
+			LVDS_DATA_LANE0_EN | LVDS_DATA_LANE1_EN |
+			LVDS_DATA_LANE2_EN | LVDS_DATA_LANE3_EN);
+	/* Enable for clk lane in TTL mode */
+	host_update_bits(inno, DSI_PHY_RSTZ, PHY_ENABLECLK, PHY_ENABLECLK);
+}
+
 static int inno_dsidphy_power_on(struct phy *phy)
 {
 	struct inno_dsidphy *inno = phy_get_drvdata(phy);
@@ -533,6 +574,9 @@ static int inno_dsidphy_power_on(struct phy *phy)
 	case PHY_MODE_LVDS:
 		inno_dsidphy_lvds_mode_enable(inno);
 		break;
+	case PHY_MODE_TTL:
+		inno_dsidphy_ttl_mode_enable(inno);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -561,6 +605,10 @@ static int inno_dsidphy_power_off(struct phy *phy)
 			LVDS_PLL_POWER_MASK | LVDS_BANDGAP_POWER_MASK,
 			LVDS_PLL_POWER_OFF | LVDS_BANDGAP_POWER_DOWN);
 
+	/* Disable for clk lane in TTL mode */
+	if (!IS_ERR(inno->host_base))
+		host_update_bits(inno, DSI_PHY_RSTZ, PHY_ENABLECLK, 0);
+
 	pm_runtime_put(inno->dev);
 	clk_disable_unprepare(inno->ref_clk);
 	clk_disable_unprepare(inno->pclk_phy);
@@ -576,6 +624,7 @@ static int inno_dsidphy_set_mode(struct phy *phy, enum phy_mode mode,
 	switch (mode) {
 	case PHY_MODE_MIPI_DPHY:
 	case PHY_MODE_LVDS:
+	case PHY_MODE_TTL:
 		inno->mode = mode;
 		break;
 	default:
@@ -630,6 +679,10 @@ static int inno_dsidphy_probe(struct platform_device *pdev)
 	if (IS_ERR(inno->phy_base))
 		return PTR_ERR(inno->phy_base);
 
+	inno->host_base = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(inno->host_base))
+		dev_warn(dev, "TTL mode is not supported\n");
+
 	inno->ref_clk = devm_clk_get(dev, "ref");
 	if (IS_ERR(inno->ref_clk)) {
 		ret = PTR_ERR(inno->ref_clk);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
