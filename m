Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82ADED41C1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 08:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/vHWduF0KGMe505lFwryvmwirQOJy8ypBz1rixtxkI=; b=Mopk1/02dZilao
	x+k5kcQBtQKM3liHSI0d7KcQW4G0YP9Ms9bP9jk+PoEhFceyTTbUbmGkQ5eeEeUb6LyCye0EW/0zo
	lqORWRbkSmn18dcEqanWXoC8RP4rEfaM7l++KpFtejONyRRopoGbEeGnh5d8qiIzAcGnk/NGe7Odt
	Q3CVoDl9AdBWScnFKwObD1pwbLgrjbgGXuae+5QWFZqNUpK+/5jAllkF3lQ4L4OblPACe7w7Ki1MA
	osx8ml5UoxlLSa0j2NDxCpzKpu3Q2o6H+3HBN5+T8XWDPv78Ks0CIRhIqU9Y0rrX5ar5F97FsFK62
	jloQGhf/TClGhnQ8LFqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8VW-000000064O2-0PMC;
	Wed, 13 Nov 2024 08:13:46 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8V4-000000064J5-3zq0
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 08:13:21 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p5026223;
	Wed, 13 Nov 2024 17:13:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 4/8] arm64: dts: rockchip: fix u2phy2_host phy-supply for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:54 +0000
Message-ID: <20241113081258.2745-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_001319_261618_117D964F 
X-CRM114-Status: UNSURE (   8.16  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

by schematic[1], USB2.0 HOST0 is connected to USB hub(FE1.1s), and USB
hub power is supplied by vcc_5v0.

[1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index bb0b2897dac9..66f6e872856c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -783,8 +783,9 @@ &u2phy2 {
 };
 
 &u2phy2_host {
+	/* connected to USB hub, which is powered by vcc_5v0 */
+	phy-supply = <&vcc_5v0>;
 	status = "okay";
-	phy-supply = <&vcc5v0_host>;
 };
 
 &u2phy3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
