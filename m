Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D0DBC47422
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 11:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dOV6U/3WMb5CPyIESUlcAwVptD+qjGGfgpLHxG2BC8Y=; b=N+uZh3trYEghqa
	GXncBb2Gp5BtS+gPH+NJgNVBk3rpEniaILWWXmZDSfv9W743yGN2SbAtxvtsoSAAhiLzbn2/oKJKk
	R2IO/KYwI46hTYk5Z7XA+pgfjL9dE4aPQB+mLULB8l4hviAbOoWi8HTGeDJ74zxHCjhH+qUE7ss0F
	imgO2cxpDh8NkF69eE13fM5/eXfZ0wF//ypOA5KI5n335Po6D2Com0Bzhu9PMDGk4aDKu4muYo01j
	o4zntZyX7aFwC6cW6FGfZNAxKJn4ZGd87wFQTb+mQr5LkTf1uiRn35C/ia/9ALAjANvgpfZxnkXle
	8AdJP3PM/umEgZ1UMXpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUQ8N-0000000CSVe-13re;
	Mon, 29 Jan 2024 11:49:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUQ8K-0000000CSTK-3Mzn;
	Mon, 29 Jan 2024 11:49:02 +0000
Received: from i53875a60.versanet.de ([83.135.90.96] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rUQ8F-0000ZH-Vf; Mon, 29 Jan 2024 12:48:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH] arm64: dts: rockchip: drop unneeded status from rk3588-jaguar gpio-leds
Date: Mon, 29 Jan 2024 12:48:51 +0100
Message-Id: <20240129114851.2019861-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_034900_866365_B8544BD8 
X-CRM114-Status: GOOD (  11.23  )
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

The default status is okay, so it is definitly not necessary to set
it on a newly added node.

Fixes: d1b8b36a2cc5 ("arm64: dts: rockchip: add Theobroma Jaguar SBC")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 4ce70fb75a30..39d65002add1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -62,7 +62,6 @@ leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
 		pinctrl-0 = <&led1_pin>;
-		status = "okay";
 
 		/* LED1 on PCB */
 		led-1 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
