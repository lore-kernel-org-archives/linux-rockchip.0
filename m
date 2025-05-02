Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 676BEC3ABAC
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 15:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DwYaUfaS1txMmReWOahz0tFwknLbWJd5i9klgo0UA8=; b=BBI+64Cns+XNvN
	OPpQ5JYMgfHUUOfVt/k5zr5cJ+l0+3DUtrjOOItjl8gQ3uRFZePwjtXalXrgMKttogA8q7SGpDR6m
	/ATDYmb45B6Y8pmEU6w+9q5o/OZj3eZ8ZVe6yqC63p46oU1YxnhVfTtin/ctlpwDk0uw5SH/FW3kl
	ujJ46w1NvZ8SpBOJE4CBQDN0Xt3jhYPHZQnm0RDsO77sU8iPeXamHsz34fDu9yxNNfaGqb/cn0w3/
	ll45lGHa3v/iRKTfQ4zLZu9oFzAW68EQqwBi36veu9T3VwkRKoHvAq4aCJ5V8a86ja5Sc0mYamiL1
	a3EvjMpr+YkxCuqn6MzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAs97-00000002JIi-0vUT;
	Fri, 02 May 2025 15:17:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAryk-00000002Ho3-1KkF
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 15:07:07 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uAryV-0004HG-Ix; Fri, 02 May 2025 17:06:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paulk@sys-base.io,
	hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com,
	sebastian.fricke@collabora.com,
	ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 05/11] arm64: dts: imx8mp: drop gpcv2 vpu power-domains and clocks
Date: Fri,  2 May 2025 17:05:08 +0200
Message-Id: <20250502150513.4169098-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250502150513.4169098-1-m.felsch@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_080706_358388_E0203D66 
X-CRM114-Status: UNSURE (   7.52  )
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

The GPCv2 G1, G2 and VC8000E power-domain don't need to reference the
VPUMIX power-domain nor their module clocks since the power and reset
handling is done by the VPUMIX blkctrl driver.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..cf9b6c487bd5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -879,24 +879,17 @@ pgc_mediamix: power-domain@10 {
 
 					pgc_vpu_g1: power-domain@11 {
 						#power-domain-cells = <0>;
-						power-domains = <&pgc_vpumix>;
 						reg = <IMX8MP_POWER_DOMAIN_VPU_G1>;
-						clocks = <&clk IMX8MP_CLK_VPU_G1_ROOT>;
 					};
 
 					pgc_vpu_g2: power-domain@12 {
 						#power-domain-cells = <0>;
-						power-domains = <&pgc_vpumix>;
 						reg = <IMX8MP_POWER_DOMAIN_VPU_G2>;
-						clocks = <&clk IMX8MP_CLK_VPU_G2_ROOT>;
-
 					};
 
 					pgc_vpu_vc8000e: power-domain@13 {
 						#power-domain-cells = <0>;
-						power-domains = <&pgc_vpumix>;
 						reg = <IMX8MP_POWER_DOMAIN_VPU_VC8000E>;
-						clocks = <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
 					};
 
 					pgc_hdmimix: power-domain@14 {
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
