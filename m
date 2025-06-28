Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E768CC83026
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Jun 2025 15:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5IzG+NIgyHHLpZqHCHw8Ra/57AeGC5EFMLg3l8X8GA=; b=jhT3q6XNsdAnzT
	4aFObTBet7oBtQnx8PqQjLQX5Hrs+Gy8+IsPMSc5bFNyq1cdHQCAlQy5keuqtIBQwib5oohSTaF4z
	NBIT2BlQQVwdF/k4gxunQlmQWUk/ythy5rzWwA0XXLqPlFxJG4dfmcjWyRAGl2Sc3MAnoWYQ3WLrB
	aj80Pq5/LZYgRA3QXateoUsBW1M46NbmB3D7Amhd5J/QDmnc6K6Piol0EvKE3M2VXr+Ye8iT7HcwZ
	4zP1F93hLdtjwWxdgjGRu2M4LDV5AJFp0Sn3qWqTXq8j1HkHZElzwGjp/mVJq99HPRkbwatEMcgVh
	XkT7uWvc/k2PgvkQ2eGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVXEv-0000000GwVy-25Io;
	Sat, 28 Jun 2025 15:13:13 +0000
Received: from out-183.mta0.migadu.com ([2001:41d0:1004:224b::b7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVWs5-0000000Gu5W-2E06
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Jun 2025 14:49:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nOCOpdzyJGYo0WmyPHPzo5U4cOQf2vkC3N8qsd5gyAo=;
	b=daIS9324QttA57y7l+xdjF7zturzgBK5nNg+qp3Hk7JGrM5dsSwOhhvgWyEOv2FaWA6MgQ
	wNZDOMw83JkimbY/BaGuief0BcMrDrw7TLOAMfIfpSnu05VHGMBji2Q3nMAkNM99walqix
	nkxax+IBVUL8jS5pnk+2DI7eutzBBjrcMK5X2worrx6c8OFrDQI2iuR/5SzLoZmuby5/R7
	9OfOAu+w60u3SyjLzP5l4ipwonv5LF0ia+6l7DiGoSQzE2g1BgUyJB897dmulltNf2vUoB
	Rrawoo02XSQFcRVttstA+PpPp0evYF5WTfjTXy6NERsMmDJFjB+6Ha/+k7Vg+g==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 10/10] arm64: dts: rockchip: Drop regulator-compatible property on rk3399
Date: Sat, 28 Jun 2025 16:32:44 +0200
Message-ID: <20250628144915.839338-11-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250628_074937_709110_5940A1B6 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
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

The regulator-compatible property has never existed in the
regulator/fcs,fan53555.yaml binding, so drop it.

This fixes the following DTB validation warnings:

  Unevaluated properties are not allowed
  ('regulator-compatible' was unexpected)

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 81c4fcb30f39..352c8efb37e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -211,7 +211,6 @@ &i2c0 {
 	vdd_cpu_b: syr827@40 {
 		compatible = "silergy,syr827";
 		reg = <0x40>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
@@ -229,7 +228,6 @@ regulator-state-mem {
 	vdd_gpu: syr828@41 {
 		compatible = "silergy,syr828";
 		reg = <0x41>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 15da5c80d25d..962b8b231c96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -421,7 +421,6 @@ vdd_cpu_b: regulator@40 {
 		compatible = "silergy,syr827";
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel1_gpio>;
 		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vdd_cpu_b";
@@ -440,7 +439,6 @@ vdd_gpu: regulator@41 {
 		compatible = "silergy,syr828";
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel2_gpio>;
 		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vdd_gpu";
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
