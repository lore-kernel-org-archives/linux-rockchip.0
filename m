Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69959C282D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 20:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUAnD13PFzJg4yP+AA+9cAbbBKqCmuvni3ge6mzvpe8=; b=qfjS4Qz4tTtOHw
	muKsnEN5F5HVEZf1y4o3WWw80ZNgTJ631t95cJygYdkZKQn51tLZo0Txd/K/qzFerRR3yPBaUwtov
	Yx2beEGIE78s97hoM2d524trIq3UxMVx/p8j3J4teoQJJG63MQBQ4kvgdNJ/VXmPFF7eDSgO+837b
	ChaoZrCZNSmqzujCHjNmlfJC2VMWsDEjJYGl2KUkRYvFYONGpzFwoVltlrhM87rYreLXGdXw8u8Df
	RN+uJCZsdYsK457YfF/kd+FL2hSFc3tvok6ENjVuAoX4Tsg5f6F7v/Xg6BOvg02ErWjDoHUugd1cN
	0dUkdmY+dKojyZEEXrsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpZCa-00000006EEj-0ahq;
	Tue, 04 Mar 2025 20:49:20 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpZCW-00000006ECR-26hU
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 20:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741121355; bh=Pb/14G8hWF+Bg+hQs4Omwq4AhAkSVh6sga6MjuQPdDo=;
 b=IRPrlBAqWUH66F5yLff8i7EkTLbM2m7cttWsgcxaea9sAGlsjwn5vaL6JTJs+JjyWJO+wx4lr
 amdKf5JZQ32e+g7J0+3+Ez1FHbUpGISx4kp7KK42Zc/POxsdsFtgF0WnJIhNlTMvYXgBFdi6iS1
 QDJJMBjbG84ftK8tIbl/vaHBh99LOID0cvpoL0NENYLmmzrbrW4Bph71XvqKHT9iCkAbPF4Kdts
 MxPwRutl8p4hLFYBZhm6L+RMF7Em8JEXO7FaqRLUpZnmWNzmXWJ1FWXRD9RXcC3wXAJQVARQ/m9
 IKqTC9bVDgMi5L2I1khcTdn1jQkto/yraZYDTnlN5uGw==
X-Forward-Email-ID: 67c75fba66a4509299dbdf95
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add SARADC node for RK3528
Date: Tue,  4 Mar 2025 20:16:36 +0000
Message-ID: <20250304201642.831218-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250304201642.831218-1-jonas@kwiboo.se>
References: <20250304201642.831218-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_124916_930350_808F707F 
X-CRM114-Status: GOOD (  10.39  )
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

Add a device tree node for the SARADC controller used by RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index b1713ed4d7e2..d3e2a64ff2d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rockchip,rk3528-cru.h>
+#include <dt-bindings/reset/rockchip,rk3528-cru.h>
 
 / {
 	compatible = "rockchip,rk3528";
@@ -264,6 +265,18 @@ uart7: serial@ffa28000 {
 			status = "disabled";
 		};
 
+		saradc: adc@ffae0000 {
+			compatible = "rockchip,rk3528-saradc";
+			reg = <0x0 0xffae0000 0x0 0x10000>;
+			clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
+			clock-names = "saradc", "apb_pclk";
+			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&cru SRST_P_SARADC>;
+			reset-names = "saradc-apb";
+			#io-channel-cells = <1>;
+			status = "disabled";
+		};
+
 		pinctrl: pinctrl {
 			compatible = "rockchip,rk3528-pinctrl";
 			rockchip,grf = <&ioc_grf>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
