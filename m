Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DE07D3CC89
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 23:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k3JRYN7qB1/ceXuVsKABHmmi3EbdeYrxqMbELlU1Jo=; b=QmTI7n/6g8fJV7
	WYg/F6vu3QLVAL9kYDLKFvyLraRBpigms9EDZDQTwXCLb9o0Xct8PLXCxhsoW16So14cuC0aB0EBN
	acPVl0dXcN2Ct4wS7gtIOisYt0nKMKwQ/uU61XBpfnTEbnRTlT+EMyvdZoEFS7ZmIUQCPbFYltfPC
	1eTqH00HJU1McDZl5WIzCtBnsPSVHQ3eNWQzk1xzawvw4AaIXBpJhoGlTs2J9VBr3o99dtSuHMFAe
	6ZnurI63W/gPslQJNCjZDwg6lzxIZEzjqQWQyB4TfWLp4syeZZuhwYgnJCpUjU6kMWURqqjIAf8tK
	6U39BE6NFDKedE8xN2MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg9xe-0000000B1o7-0Lh7;
	Wed, 14 Jan 2026 23:07:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg9xW-0000000B1hE-1LCf;
	Wed, 14 Jan 2026 23:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=M3ml5hv1veuBDv5JcHu7QZoxL9+gsssIIrGKTPBWTCQ=; b=uUzZCvdPtHGb1hLa4ZWZpbqa83
	l3l0LYCdzfuoz0TGexcqQVB6J6FCaT/Pn+i1WYgr0JLsv3QgLq04jo0vGXqUAeGQIKJXsgxJ0oW03
	TCdbXUL7bJ5cteihAS7+LKAMyxRbPZ8X8EkSSghGMUBhcH517lujqqPr6pSJYkLq9ch7tUgZtCYjm
	6Jsk5Zegvh9Lw08kHrJdeVhGvTQf+D8bZza2pNP7DYD7y2axBjSoCSC8n+X2MSQtqO+0Xc+05y5NW
	9Ph3Kx0np2FqjJWF1tqiDwjgyQ5g+51IgVl//vKgiCymUVEGiPaSv58nQ9aH6ZrBZQ9vtyDDUw5M0
	Rc0Y2x5A==;
Received: from i53875b96.versanet.de ([83.135.91.150] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vg9xT-002N2m-HG; Thu, 15 Jan 2026 00:07:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v3 1/5] arm64: dts: rockchip: Use phandle for i2c_lvds_blc on rk3368-lion haikou
Date: Thu, 15 Jan 2026 00:07:03 +0100
Message-ID: <20260114230707.4175162-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260114230707.4175162-1-heiko@sntech.de>
References: <20260114230707.4175162-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_150726_391430_FD24FC6E 
X-CRM114-Status: GOOD (  13.63  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

i2c@0 on i2cmux2 does already have a phandle i2c_lvds_blc defined.

Use this one instead of replicating the hierarchy again, as this might
result in strange errors if the lion dtsi is changed at some point
in the future.

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/rk3368-lion-haikou.dts   | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index ab70ee5f561a..abd1af97456a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -18,16 +18,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	i2cmux2 {
-		i2c@0 {
-			eeprom: eeprom@50 {
-				compatible = "atmel,24c01";
-				pagesize = <8>;
-				reg = <0x50>;
-			};
-		};
-	};
-
 	leds {
 		pinctrl-0 = <&module_led_pins>, <&sd_card_led_pin>;
 
@@ -68,6 +58,14 @@ vcc5v0_otg: regulator-vcc5v0-otg {
 	};
 };
 
+&i2c_lvds_blc {
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c01";
+		pagesize = <8>;
+		reg = <0x50>;
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
