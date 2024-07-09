Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E10DC3DA41
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 12:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEQOIEdtuwkHkybLBFlI7kFBtQWGfQaMGmPwqeG6T54=; b=5D0CHvje3Yh0M2
	EYjctMzFURC0mdWuEzkK2AO3wwH//EJbPEllJm8rZUGo0UeEh9rseu2UPiXDrVMhNcfd90HC5IwC0
	O9lj8/qCXduWEIvoMM/8NbN08uofneBO9X1eceuCnz35661hEtSoneuGti8a9fMSuaMGKOzmAW+rB
	VpT3nWNP0K1noOegdy0IWo4jqQt4RzOrKHNWS0fW5f/1gUCb0TmZsq99yZmPDRlnNCy8A+9zfFaQ9
	WvUZ+rJ4zVRpfNK0RmTdjuWV1axHvAXtfIg/SxMOHlTlNpaSnrms1i0FF4C8js9k8mGX01PoG2u2s
	lA8nHhN04eZkEeMItfWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA2W-000000079Hd-40bf;
	Tue, 09 Jul 2024 12:33:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA0h-000000078OD-3ous;
	Tue, 09 Jul 2024 12:31:57 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRA0U-00074P-Or; Tue, 09 Jul 2024 14:31:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 4/6] arm64: dts: rockchip: use clock-generator for pcie-refclk on rk3588-jaguar
Date: Tue,  9 Jul 2024 14:31:19 +0200
Message-Id: <20240709123121.1452394-5-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240709123121.1452394-1-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_053155_965713_27D1F9AF 
X-CRM114-Status: GOOD (  13.89  )
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

Using a combination of fixed clock and gpio-gate clock works but does
not describe the actual hardware. Use the new clock-generator binding
to describe this in a nicer way.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 71999f4f170af..b3c2aaedacf57 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -88,21 +88,16 @@ led-1 {
 	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
 	 * clock generator.
 	 * The clock output is gated via the OE pin on the clock generator.
-	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
 	 */
-	pcie_refclk_gen: pcie-refclk-gen-clock {
-		compatible = "fixed-clock";
+	pcie_refclk: pcie-clock-generator {
+		compatible = "diodes,pi6c557-05b", "clock-generator";
 		#clock-cells = <0>;
 		clock-frequency = <100000000>;
-	};
-
-	pcie_refclk: pcie-refclk-clock {
-		compatible = "gpio-gate-clock";
-		clocks = <&pcie_refclk_gen>;
-		#clock-cells = <0>;
+		clock-output-names = "pcie3_refclk";
 		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie30x4_clkreqn_m0>;
+		vdd-supply = <&vcca_3v3_s0>;
 	};
 
 	pps {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
