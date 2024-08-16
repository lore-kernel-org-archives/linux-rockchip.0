Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C63DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 21:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LdBrMEdtBTL8pEIh638PtByzEiOk1a+x+CHe+doe0wE=; b=bqZuOvkthS2PNQ
	dWBY8g4la43g6RKU0AjkyXjOvmK8HRbLDhOHU8OKXeNcng/nPkV8ULuIDeDE77e6h/1TFCn1oczm5
	DgvGDfnYMEI4iJjT2Mgrbq3vLgD97XXkWWNjfl6lZjAnXVDVLIYrTy6I9lMG/mr6ICGFDPDazs60p
	QVihj9DZPJCx9ytUPMTIU6lv26y2DHMi11EZTxgprCEUefK+Ws98wyl+kxXE+jb7bI4T0yuyNR6Sr
	UzGjGiDsIx9w91t3S7bvBb3u3Y0KKvfBOWOQ2JZJWwsND7mWPyhDp3PzlZXrM9Obk5RY4vDw1SNtq
	/mIev3dlQUizOCkuFPFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf4t0-0000000E8dH-1Y5w;
	Fri, 16 Aug 2024 21:53:30 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf4sx-0000000E8cr-3HXM
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 21:53:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GLrKL3026634;
	Sat, 17 Aug 2024 06:53:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
Date: Sat, 17 Aug 2024 06:53:16 +0900
Message-ID: <20240816215316.1429-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_145328_049388_EBB7D118 
X-CRM114-Status: UNSURE (   7.48  )
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

multicolor(RGB) PWM LEDs on Radxa E25 carrier board is clearly defined
as status LED ("use it to see the status") in product overview[1].

add "function = LED_FUNCTION_STATUS" to "multi-led".

fortunately CONFIG_LEDS_PWM_MULTICOLOR is not enabled in defconfig,
this change should not affect userland(sysfs).

[1] https://radxa.com/products/network-computer/e25#overview

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..1eaf304d94b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -16,6 +16,7 @@ pwm-leds {
 
 		multi-led {
 			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_STATUS;
 			max-brightness = <255>;
 
 			led-red {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
