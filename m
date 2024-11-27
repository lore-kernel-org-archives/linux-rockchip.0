Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 912CCD66BAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 01:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6ZSwiJCO3lPUF8oPuSX/Mae9ygznC+Gl8q3j1/UNRw=; b=cpN75kWDwXYsX2
	OAzTaGSm+bpqU6DEWJNT9gJeamc7Jw0/a5LAPlrFqlcOS1tXrsCRa5ta8KjGeNXjW7n1SGBdgT3/n
	Wr8VMrtbJQJZt1tO4QrBBNiqPsqUKJM5fh3clJvAYsx/IE3jiPibZ/sodQCmTnQjtST0zislaPkJ/
	oeSBtVZZmBxNQFx88P1kHqIK8eBkh0wQFUCLrCag4g3379xnp6vDDB1Xxz0jk1xka7NeDU8hAoppq
	LSWp0CfeOoqHycJex2GBr42nJcFhUwv7YlZ5hTOSnxSalvGEnrE7lUUl4wiZwdmM1ivudNdoqY0Y3
	6zlOqNTDe3RF6wlPi+KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7F3-0000000C2Wr-2L8l;
	Wed, 27 Nov 2024 01:53:21 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7Ex-0000000C2VY-1Iww
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Nov 2024 01:53:20 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AR1qYJm012963;
	Wed, 27 Nov 2024 10:52:35 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
Date: Wed, 27 Nov 2024 01:52:24 +0000
Message-ID: <20241127015224.2361-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_175315_561578_A010A31F 
X-CRM114-Status: UNSURE (   8.25  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, geert+renesas@glider.be, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, jbx6244@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
devices.

rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
matches with rfkill-bt.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
