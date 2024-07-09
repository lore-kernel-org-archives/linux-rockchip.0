Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28CD0C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 12:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIL2u5LMd/CcwxaOf68DamUCEEwtGMnzc+sSuXy5gCo=; b=aXZSUd1PRrLAeu
	NLGaBonlvWFJkVpy0uVFGJoXmXdn/qir4cRh1rrJRg1bBzR+1QIhOdU6qWY0+YQaAbEMRftEgVquk
	PpKVQkrqpEcZB1fUcAdG8SwNKhdP4HK9fJvWbIc6RlvbJmARBN3K473rUc5MG6mPXCoYYtcHqeXHs
	67UQJpIC4RfAFgdMDiNDWCHTSIeIfyaJ/75MwIjT7B9RODyx2TpRP3RHiU5MJpNKNQeYQ5z2NWA8P
	viePX0PyW/nBXyIkDKO2ruEiq3vUvxA9j94L8ldOZzOEuQzCxrwQF4OZrFgAGXrJlbWuj9ZPZsQgg
	QdRaW5Y5flh4IofVhWZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA1a-000000078qO-2QHB;
	Tue, 09 Jul 2024 12:32:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA0b-000000078LW-0uPA;
	Tue, 09 Jul 2024 12:31:51 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRA0V-00074P-Sp; Tue, 09 Jul 2024 14:31:43 +0200
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
Subject: [PATCH 6/6] arm64: dts: rockchip: add pinctrl for clk-generator gpio on rk3588-tiger
Date: Tue,  9 Jul 2024 14:31:21 +0200
Message-Id: <20240709123121.1452394-7-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240709123121.1452394-1-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_053149_271962_7BDBED2A 
X-CRM114-Status: GOOD (  12.62  )
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

Having pinctrl entries defined for used gpios is helpful as it makes
sure the pin isn't used anywhere else.

The somewhat similar rk3588-jaguar board has a pinctrl entry already,
so add the same for rk3588-tiger.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 4c5be356fa7fe..fb5f1fa25fb9e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -56,6 +56,8 @@ pcie_refclk: pcie-clock-generator {
 		clock-frequency = <100000000>;
 		clock-output-names = "pcie3_refclk";
 		enable-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>; /* PCIE30X4_CLKREQN_M1_L */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie30x4_clkreqn_m1_l>;
 		vdd-supply = <&vcca_3v3_s0>;
 	};
 
@@ -339,6 +341,12 @@ module_led_pin: module-led-pin {
 		};
 	};
 
+	pcie30x4 {
+		pcie30x4_clkreqn_m1_l: pcie30x4-clkreqn-m1-l {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb3 {
 		usb3_id: usb3-id {
 			rockchip,pins =
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
