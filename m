Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B11ADC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 07:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJzd0lHHcNnzzK5ETHPDk/YjS9dpNh6893xHiBj4GUs=; b=xQO6PEHjvz2Gr0
	C1K9dmlPlqW8oLo7jkgmzgUIJ2qIN6k2Odvfnh7OE4EQL7sHfwn1woLkKPMa/CvSsuJfHwxX2iyNS
	SLGItHiwca8inQEQQ+PpFCDh2Z5dS4SONGkXmKFMFSC02WzaY1B+Eh4Dudqwjtnt/2YtWfT6hDx7v
	ag3+xbBYAedbAgM+QQgVX9tFkKEY+8BONhbWgIorMKKQKSi4t6ACFW1WEUiT5g4BjclCT+Ge19ppl
	xAH1ZSrv23O0eHwXU1uKzmWj4rdi0e679BvkLPkAixpw3MOcDealeE2Z8ii8Gx9fGF8ULJ00ceI5n
	y/INdTmKAEoP0O3zHtxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUVz-00000006KB9-2c90;
	Mon, 26 Aug 2024 07:51:51 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUVw-00000006K8C-0zTc
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 07:51:50 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47Q7pZFA025012;
	Mon, 26 Aug 2024 16:51:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: remove unnecessary properties for Radxa ROCK 5A
Date: Mon, 26 Aug 2024 16:51:29 +0900
Message-ID: <20240826075130.546-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_005148_505129_50108F91 
X-CRM114-Status: UNSURE (   6.10  )
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

There is no "on-board WLAN/BT chip" on Radxa ROCK 5A. remove related
properties.

Fixes: 1642bf66e270 ("arm64: dts: rockchip: add USB2 to rk3588s-rock5a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 24 -------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 03ed48246d36..953a722198fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -317,28 +317,6 @@ vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	wifibt {
-		wl_reset: wl-reset {
-			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		wl_dis: wl-dis {
-			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_output_high>;
-		};
-
-		wl_wake_host: wl-wake-host {
-			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		bt_dis: bt-dis {
-			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_output_high>;
-		};
-
-		bt_wake_host: bt-wake-host {
-			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
 };
 
 &pwm3 {
@@ -754,8 +732,6 @@ &usbdp_phy0 {
 
 &usb_host0_ehci {
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&wl_reset &wl_dis &wl_wake_host &bt_dis &bt_wake_host>;
 };
 
 &usb_host0_ohci {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
