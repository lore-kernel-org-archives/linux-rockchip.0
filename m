Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 418A2CD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IauQCTnoUYa1Y7yhWb2WWvmFKtMON9aB+75PorkNbhU=; b=dKM25fn0Ftm0DF
	QNm6NASRc24efbYWE7fEP0qS1/2EGB6aQJ3MZ1RwT9z7BN0IRWB+i35Tvv+Q3q4eaYch1eR7ocRO5
	O39UtW8ZAYCP2rxEUxON2rhnmk87lCc8B7N44GpIa9iQG/Q6GkFwhGxMUehKxcC1tW4lUP1K5MDlR
	Mi2uzgf/JAr5kbDu9F3Gyp2r+I5XfYQfhVZyWMnZi38ZG7RFHWvXYGG8867fUiyq+85Os6Q7TIB1g
	MpovqzkPRJ5LYRJWhYgYB7tbLYSO+dW295JPZSmwwhqzdkgtf2gTxKHV80c13kImOT6pkOhca5/6P
	a1BY4+v1QH/26WbR4Pgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO57-0000000Gi3S-2lYv;
	Tue, 03 Sep 2024 07:36:05 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO53-0000000Gi2N-3XZo
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 07:36:04 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4837Zrq1017155;
	Tue, 3 Sep 2024 16:35:54 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: chris.obbard@collabora.com, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: remove duplicate nodes from dts for ROCK 4SE
Date: Tue,  3 Sep 2024 16:35:44 +0900
Message-ID: <20240903073544.2161-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003602_115221_8B3C0467 
X-CRM114-Status: UNSURE (   6.92  )
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

these nodes just define same properties in rk3399-rock-pi-4.dtsi.
remove them from rk3399-rock-4se.dts.

sha256sum rk3399-rock-4se.dtb generates same hash value before/after
this change.

Fixes: 86a0e14a82ea ("arm64: dts: rockchip: Add Radxa ROCK 4SE")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
index 9dd26150c369..a8b8d4acc337 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts
@@ -17,14 +17,6 @@ aliases {
 	};
 };
 
-&pinctrl {
-	usb2 {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
 &sdio0 {
 	status = "okay";
 
@@ -56,10 +48,3 @@ bluetooth {
 		vddio-supply = <&vcc_1v8>;
 	};
 };
-
-&vcc5v0_host {
-	enable-active-high;
-	gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&vcc5v0_host_en>;
-};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
