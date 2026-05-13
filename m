Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1ECDCD4851
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 07:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJsrNnk+ZxqGl/eK8piYL2ONlgwtEPU5NzN3FCc/DMg=; b=gu+3Lktf0XDTLq
	YV2N4HemFtbC+JzZnPl7MBTqIVV9OhVzPphi9IaEz51bvH+ednitcEeE8eFfJwhPUTGUtiKIUgN+A
	7mAlVCUdljRHozvs+t0UZdbyJ4MtIWF71Z/fnwZgEzTQk1aiP/+f/G1EfcnwaAoQNEqfvDgbKlAGR
	c6yPjFwXXrYTFglg2arn4Ll6U0H/qn4sWmbn5lK9QhH3h1HAajnD70YOAA4xs1xuANpCXThGxcZY1
	a64fDPNWzfj1R0uOekZ+E7JJiaqi+TjX373mV2lycAuRz3n8tDYciaIU6aPoGixPIs9cWjCXPefYp
	Z4x0ExlS4mEWJt0HvwEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Gn-00000001cBp-42bL;
	Wed, 13 May 2026 07:44:41 +0000
Received: from mail-m81174.xmail.ntesmail.com ([156.224.81.174])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN4Gk-00000001c6O-24v7;
	Wed, 13 May 2026 07:44:40 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e3a94cf9;
	Wed, 13 May 2026 15:44:33 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v5 07/10] arm64: dts: rockchip: Add eDP node for RK3576
Date: Wed, 13 May 2026 15:44:11 +0800
Message-Id: <20260513074414.2053435-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260513074414.2053435-1-damon.ding@rock-chips.com>
References: <20260513074414.2053435-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e204b69b103a3kunm7763bb9856114
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHU9NVkNDTUMYT01LTk5LT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Dl/zY1aKppMiLwMd2qDYD2qMJCvfDlfsTtf+rs1+ux2EP7hX0o8ZoyckU5xBlAK/B/1F1zEbYdeBxkqSfM1oOAztPSsNHDtZ0r8TJwz+r2iRH+rjA0PB57KNbXaOME+WV9yYM6RL1PM401pMMnwNGTSUXYF/6CUt9KNLkE6Blso=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=K1DLY9Im8emQ1pvFmDCS9X34Zpvqnm1ezAB2dEZJU7I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_004439_646340_007ECD39 
X-CRM114-Status: UNSURE (   8.07  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add full device tree definition for the integrated eDP controller
on RK3576, following the existing RK3588 hardware layout.

Configure required register range, clocks, interrupt, phy, power
domain, reset and grf properties to fully describe the controller.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

---

Changes in v2:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 28175d8200d5..733449cb88b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1496,6 +1496,34 @@ hdmi_out: port@1 {
 			};
 		};
 
+		edp: edp@27dc0000 {
+			compatible = "rockchip,rk3576-edp";
+			reg = <0x0 0x27dc0000 0x0 0x1000>;
+			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
+			clock-names = "dp", "pclk", "hclk";
+			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&hdptxphy>;
+			phy-names = "dp";
+			power-domains = <&power RK3576_PD_VO0>;
+			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
+			reset-names = "dp", "apb";
+			rockchip,grf = <&vo0_grf>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				edp_in: port@0 {
+					reg = <0>;
+				};
+
+				edp_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		dp: dp@27e40000 {
 			compatible = "rockchip,rk3576-dp";
 			reg = <0x0 0x27e40000 0x0 0x30000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
