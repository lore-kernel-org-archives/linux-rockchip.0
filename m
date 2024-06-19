Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0FC5C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 05:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3L/Z1qATLI3T+G64aebxyBseVRwpdk19B6Li0Rs94I=; b=X3OOhfxLk6hweL
	GesTqwxC3enSffBVWwyFQTppHMr6amdycLM40RClITs5woHpmZPKdschYJz6iq9kMLbYHA9mVwpsT
	9RibV2cRarZP6++gfM9N4NgtQCwL+f3CWwYop4zRXyy3YZGHWMCCQFeIU7ulvl9lwhCLxupralVXL
	z+AY3v6vRt3d95S3n5o9D5TDC5rojDxI5NPLQcsRvOEsb/4l3CakRaHyUDYqV21DLssWM7NSTPKXS
	8kSqkM/ylaoENSVzdn0Eyzj8LnYo4HDy1RdbOCSJJO/6xSk5ba7q5r6vIEkOUBmhQEOcTYbeHezt4
	lFbSEZPVkmBhXytFZAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJnSA-0000000HSnz-2OC0;
	Wed, 19 Jun 2024 05:01:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJnS9-0000000HSnJ-1R9L
	for linux-rockchip@bombadil.infradead.org;
	Wed, 19 Jun 2024 05:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=X5L45GBC+/cYuHC4yL5181ue6yTYJz4kOLp6ZFkn6A8=; b=XFBTp03oGqyVcJdf2vOTi3KU6K
	giIL92a/+Swww4TMoY+vfArfvbLMEFJz2/5LEZcoBiKqNK0n45Fyxqd09341UfQ2hetnF2geWig/e
	3IaDgepYkFugklXOIv0GxgOf0X4pDqhg0S95s6XzeIo9HWsp89igxJnZQ9d5y6BKvext0Dc9gEy7j
	b6ok85t5GyxhQn/jBvjdgY96IQF0oiAyDje1h6D+gWK864WG32jA6JUhjvM/KFb6+i3l3uYE8AydR
	7dtMd070dFstTEgujQ6KglhYxw2x+sUW1V386kxq0PivfwvN87evSynl6tyDfUbClweLT3MMunMIZ
	UupiHd/Q==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJnS3-00000004CNy-3bOE
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 05:01:48 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45J50qs7023651;
	Wed, 19 Jun 2024 14:00:52 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
Date: Wed, 19 Jun 2024 14:00:46 +0900
Message-ID: <20240619050047.1217-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_060144_401314_0BE98C04 
X-CRM114-Status: UNSURE (   8.14  )
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

use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
pre-production board.

Fixes: b918e81f2145 ("arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index f09d60bbe6c4..a608a219543e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -241,8 +241,8 @@ &i2c1 {
 	rk805: pmic@18 {
 		compatible = "rockchip,rk805";
 		reg = <0x18>;
-		interrupt-parent = <&gpio2>;
-		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk805-clkout2";
 		gpio-controller;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
