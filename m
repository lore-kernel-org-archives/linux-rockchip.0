Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC982C52D7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 02:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UJeCV7UdPZryWwAGz64b02AxLR9hIjeMMjiNgoJk3k=; b=dtPzyf4791j/pA
	MEr+50LtPiYYtCk9TCxWIHmtkZCffMdzvgTWIdklfFpUg2HMhBXRVDLVaO8Uy6kwN1xhZKw4X5mc7
	g0NWqKWZ2CEXr2KuxE1ZmVycN5UsX3ShL0PEp0djX+MRPApOhwE9Q8fuk70TqckD/jAGU/NwddBy9
	UZRo630yhcApfY6vtUz3JC2lutpZeigiRuy8HP4/mScloWRfneFnsz2oe2O1ynpQeFx4xuvPIsGZU
	ksJiL4ABAL+0x1f33I2JWs1gSLbEbOX1+hl4xqLo/l+a9Zjm6EB0R0Fp4KFPFei88uGTux/MqQcuA
	j8KdU+a5E40OJVegWw4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1semm9-0000000BaZc-3axA;
	Fri, 16 Aug 2024 02:33:13 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1semm6-0000000BaYA-2MXe
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 02:33:12 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47G2WnZS023994;
	Fri, 16 Aug 2024 11:32:51 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: make "multi-led" controllable under sysfs for Radxa E25
Date: Fri, 16 Aug 2024 11:32:43 +0900
Message-ID: <20240816023243.487-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240816023243.487-1-naoki@radxa.com>
References: <20240816023243.487-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_193310_827811_DC01891A 
X-CRM114-Status: UNSURE (   7.08  )
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

Radxa E25 carrier board has 16x RGB PWM LEDs. This patch make it
controllable under sysfs.

$ ls /sys/class/leds/rgb\:status
brightness  max_brightness  multi_intensity  subsystem	uevent
device	    multi_index     power	     trigger

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
