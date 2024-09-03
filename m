Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146B8CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 08:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FvZ054/zzvdRmjYFYnJXewBtt99HaYljNKPIpr3s5ag=; b=4xN/LtMz40cLah
	6H4GPzeFSOmmGOB3soApfm5lHOK8tponJfHgPoL/kzCs1+uToesOSD6FD6GVlRtfxrrdgcT2z2fxN
	cvRGSxipq/QXScX/wTFi3f5E40JpVy6pM90xbB0gfDwnQdWCcDQXTEUGrSu5o7lojySLdVhmxGu++
	ZrWbTTNFcQjod+oXglFE98ztJtGXied+LXb14rlPgD3OoQaRNj7CAzJDTaclbCTz1foMmqn3cDB9I
	5gks/q/9qbaYvDrOCgZYFOXY/6jT1upVkZ1jaRxxYsED0DlKBwzk0NnlJvlmoly+Hg6Qo70U2ZXxV
	Pq7YfjbTqZvWZXxzSI4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPKa-0000000H12m-3Zwp;
	Tue, 03 Sep 2024 08:56:09 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPKX-0000000H11a-2a2l
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 08:56:08 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4838u1Rt017332;
	Tue, 3 Sep 2024 17:56:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add workaround for microSD card detection on Radxa ROCK 3A
Date: Tue,  3 Sep 2024 17:55:50 +0900
Message-ID: <20240903085551.568-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_015606_028445_13AFC841 
X-CRM114-Status: UNSURE (   8.89  )
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

Radxa ROCK 3A doesn't detect microSD card insertion/removal correctly.
it happens from Linux v5.19 to v6.11-rc6.

add workaround (broken-cd property) to make CD work.

Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 59f1403b4fa5..89599258ef9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -722,12 +722,12 @@ &sdhci {
 };
 
 &sdmmc0 {
+	broken-cd;
 	bus-width = <4>;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
 	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
