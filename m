Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26278D69102
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 12:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3aC+9m0/eeOkRES4ms1lOW/SIydr8iJcrqopi4oTck=; b=tcKK8wn65uXyrU
	eqeHYRsBQAqcym8cw7WsNkN0+42PGJuPVmCdWpyNfBmS5p9I7W7O9Fc/EqJaVql/zZk/vtyjsAmZW
	8MxVRUyRkyPzdEEvRkoCuhncCDg1LCePBkknD7fcq1u//bJFr1Ggg3059FnHn4NpvlMPM6KRM5Jmf
	e0JkcWkePmPfnOr7VMFRedDetcFAyGDYByN3Q53dE/K2LUgv9qmsj7IluDJuncxET57pZAoLzgfrP
	gWCRnXVxZQUHQ1Uu69ALkUCu14SVsvtcQi+P69Xr/L4WTKWA5ZvvgZULEPAEroOQfb7422p47/VKI
	nEF/HBIEzJeS50RlhaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdId-0000000FR1U-1H8E;
	Thu, 28 Nov 2024 12:07:11 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdIZ-0000000FR0l-4540
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 12:07:10 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4ASC6aSm018602;
	Thu, 28 Nov 2024 21:06:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
Date: Thu, 28 Nov 2024 12:06:30 +0000
Message-ID: <20241128120631.37458-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_040708_215481_89092B25 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, jbx6244@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
devices.

rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
matches with rfkill-bt.

Fixes: 82d40b141a4c ("arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b")
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
---
Changes in v2:
- add Fixes tag
- collect R-b tag
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c44d001da169..d597112f1d5b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -72,7 +72,7 @@ fan: pwm-fan {
 
 	rfkill {
 		compatible = "rfkill-gpio";
-		label = "rfkill-pcie-wlan";
+		label = "rfkill-m2-wlan";
 		radio-type = "wlan";
 		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
