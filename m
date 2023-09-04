Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41262C83F33
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Sep 2023 11:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YK3fyTN+xgggJ+JsIyWkQujFeyzKYVVkDIQYWnkadug=; b=bcSR8xrOPhKcmx
	pPcANo1TkqMXr1n3AjY9Hi6DguDI0P2sbePKq2E28tEI5LkBG0zqsrjpMY3ZXbalTCS5Js/e2RlZO
	qVba1RHFf4BhgdC8l4/Miy+b6GOWI6lU+cpefNVrelIj7RAqKA+T3A4/P8K5asTRHbnFF26aPk+ju
	H6GW2p/yZvF1ZwgGRNTJMfL0Q9dU1AQxgcgivx8bhpx88tvQit8f6Zm7g0W0IGOppKdCsiDbbCGut
	Z/V725zshovq8Wprn2KhfdYHQD/wt9Wg2KIF3dGwqqy5z8vXZNFfy6NGTNekCo7U/LK2gtHui03hY
	9n7jRZaXvckxPJSFUG6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Dz-0041uP-0L;
	Mon, 04 Sep 2023 11:58:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Du-0041rV-0J
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Sep 2023 11:58:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dk-0003r3-RT; Mon, 04 Sep 2023 13:58:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dk-003s46-Ck; Mon, 04 Sep 2023 13:58:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dj-005pP0-IC; Mon, 04 Sep 2023 13:58:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 3/3] arm64: dts: rockchip: rock-3a: add io domain properties
Date: Mon,  4 Sep 2023 13:58:16 +0200
Message-Id: <20230904115816.1237684-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230904115816.1237684-1-s.hauer@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_045830_134798_234F806C 
X-CRM114-Status: GOOD (  11.25  )
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

Tell the pinctrl driver that it shall wait for the io domain driver
before configuring pins. Also add exceptions for the pins needed to
access the PMIC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index e05ab11981f55..9d709afc101af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -300,6 +300,14 @@ &hdmi_sound {
 	status = "okay";
 };
 
+&i2c0_xfer {
+	rockchip,io-domain-boot-on;
+};
+
+&i2s1m0_mclk {
+	rockchip,io-domain-boot-on;
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -615,6 +623,8 @@ &pcie3x2 {
 };
 
 &pinctrl {
+	rockchip,io-domains = <&pmu_io_domains>;
+
 	cam {
 		vcc_cam_en: vcc_cam_en {
 			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -659,6 +669,7 @@ pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
 				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		rockchip,io-domain-boot-on;
 		};
 	};
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
