Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69703C07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 11:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2slhv+R7WpcNcCK5jgGE7TpAYM+s6cVAPvwJpKlWwZc=; b=3o0HmsbMoQ1WhQ
	r4kjtipqDAYHyxpGreVkA9Bzk6JCozpVCihWHCFFbsqKdW/KoUGTJvBx9TkQB0acxmOXMkArdRXwv
	tbu/ijTZoeppGcak7dccJcV0tO4kERMuz5u+jEues5Ao3UK49YlPorrsFrsHyNAtXjxf4aa9k6YRK
	Q3ryd7jJjeuMhmvSREhxbQ+8nzEGoluSfL0X+imw9wfC26NZhSMqBaGdl3bcLwkKcBZ8+ivn+094q
	ydZU9F7Fb48QcTFNP1uFILo8vwgg1ENiUe3vP6GuAXSkBmI7dWq1f30i9P+U3FsGfus4gt0BZqbuC
	hT59uRWRDpAPGVx09H2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc3MU-006yZ7-OX; Sat, 24 Sep 2022 11:30:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc3MT-006yYh-2X; Sat, 24 Sep 2022 11:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=a9mDCz2GEZfDqlVmLC9zSym3y5GkyEMnPpNofJI56vA=; b=v3N9l6QJvpl2ux7L7UmCQ0sLSY
	1iMHm19w3NnEyexcIHETcdYrQo+NdnIoP0/9Rp7Zt7LjKwvGQa9cpvjWIajjzQ6SbXTGkVPG70Zpb
	2xgZRW9SyD7/DWnjzowhBbrsY7JQfTcelDyp9eTGxwsReyLDlt/c/iF0F0DYs/GLHZ5EpkYbuVxwO
	suw/UYxaRkP0Cz3tooE8K5qYe4UHTauz3CewDEz730/+3HaYXXbEhEDtTg9gFQTmMOfPbMdrEZqTA
	4xJuXb+zhqo5ZdV+N3YhaZjCg9suKnzPofgggjugBuxka1JKdFn6eB6eG9DQuDVgewclBfvAcBNko
	O9m8d2jg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc3MK-008eM1-7T; Sat, 24 Sep 2022 11:30:20 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 28OBT5MA004632;
	Sat, 24 Sep 2022 20:29:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
Date: Sat, 24 Sep 2022 11:28:12 +0000
Message-Id: <20220924112812.1219-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_123012_802848_EE4A2880 
X-CRM114-Status: UNSURE (   6.79  )
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

I2S1 pins are exposed on 40-pin header on Radxa ROCK Pi 4 series.
their default function is GPIO, so I2S1 need to be disabled.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 645ced6617a6..1f76d3501bda 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -509,7 +509,6 @@ i2s0_p0_0: endpoint {
 &i2s1 {
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-	status = "okay";
 };
 
 &i2s2 {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
