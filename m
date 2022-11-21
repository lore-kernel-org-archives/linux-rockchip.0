Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C79C0C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 15:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmR7Zkk5OZMpospCnszg25tMpUguUMXmw/P6qGSahaM=; b=CqLC1qaFZBhGTJ
	NeIBTrT6hnjmvbeGO6VOGqmVTDpngeiaY+X26B+TQOCbdXUY/w3CDYKf2x1J30Lkk5QZawNeAnWVo
	e8hiR0tthD1Zl4qiBXmvyPUEevdf8P35iVt2cKw6QufvRUTGBBoqEdZkyCnT7uW9u3FHO9ocsdl5j
	QnGWu6f+JCYtz3m5ESSHQDnn/HWaApmg+HvnBPf1seO9ST7QjUxCnH3YAPmiX1KB5fHfYPJG+hPLK
	YxCO4/M2E3xEqgG1U+09sBFjsqjYnOrJWhTw34Sr1+wEOVluOI3mgihEHuu1YnJxUN7VvR3FbIQ60
	l/zKi7We3PyU6bSZMdtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8jH-00FBvM-Ff; Mon, 21 Nov 2022 15:29:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8Yk-00F5CN-Aw
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 15:18:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8Yb-0004BP-LZ; Mon, 21 Nov 2022 16:18:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-005gHE-LR; Mon, 21 Nov 2022 16:17:56 +0100
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-008hFM-Kk; Mon, 21 Nov 2022 16:17:55 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	linux-arm-kernel@lists.infradead.org,
	m.tretter@pengutronix.de,
	kernel@pengutronix.de
Subject: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date: Mon, 21 Nov 2022 16:17:55 +0100
Message-Id: <20221121151755.2072816-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221121151755.2072816-1-m.tretter@pengutronix.de>
References: <20221121151755.2072816-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_071810_416627_21C831BD 
X-CRM114-Status: UNSURE (   9.28  )
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

The rk3568 also features a RGA2 block. Add the necessary device tree
node.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..0b281e2260d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -612,6 +612,17 @@ vdpu_mmu: iommu@fdea0800 {
 		#iommu-cells = <0>;
 	};
 
+	rga: rga@fdeb0000 {
+		compatible = "rockchip,rk3568-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xfdeb0000 0x0 0x180>;
+		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru CLK_RGA_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA_CORE>, <&cru SRST_A_RGA>, <&cru SRST_H_RGA>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
 	vepu: video-codec@fdee0000 {
 		compatible = "rockchip,rk3568-vepu";
 		reg = <0x0 0xfdee0000 0x0 0x800>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
