Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A41CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjLkTL+vSsMdrQ/wgst9i+h2rKTWilEqHLoMhMiFtSo=; b=m2EqKYEybQwhSo
	mzuWPihxggH0eNbwTokz7ZMfYyI0LjVpkv/oUgwlKEftLwauVZQOjPKfLt/7Q4x1L4ghsHI28bN/H
	5Ne19ppQ87fnk+RCYiYbHr1tYHkXRVWifHlXFZf/32Ir9Mc+M7sSaGmw/Rga7kQKuJGdo6Uj/d1zR
	lAywgO0R04Fw77TJ2maYsj7gEwJCN95b9qCDubWAuZak7Q2674/uoErK8jYkDy6ZnYjEe1Qp7ZhWA
	8Fca8/cPnIq1NX4jpzcJ5f7oTafdTnEZa3PnBIJyGu9GUkYDe1jtdB9EfQCp8M16/s8BuCAz1HC76
	W2Nledc66BqfsbZgXzyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNc7-00000000r4G-3Khi;
	Mon, 30 Sep 2024 21:07:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWN-00000000qNe-0EFx;
	Mon, 30 Sep 2024 21:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4Lv3Kwynzpq1gYkAA3f1MJlappE0nwgEQR7axSKWxUE=; b=a6gnvmErzUW7dNyYtVrRVjXDbV
	jUCJL/50ZYHMz7qOJgDRMrN7AoaAsvOt5m0ns2KfCqYf+jYG08aTYPulnd2OOWlWzs2WoNq8ZhhIR
	cK8RXkFfQ/D7F7H2E8Nva7vK6yIHMVGeLw7PhLGVEG+f3TAPQpZvXgBGruBgdoLbhiYkIu9o/e53g
	/jkO2diPUikKrCp3Mxe3B4+gf2x9huAcWOw3aDzc7I5HR30EhN+nAWYut8yAEddtJOkGRwLTwV26z
	RVH6np9cX5ry481q6XxMt3UYGfgMQSEAsS7scBFJf6dtvx5WmND40eU0QkCI/S7sm9cLsaU0QqnpS
	uBAk0+HA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWH-00000002vCg-1niN;
	Mon, 30 Sep 2024 21:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4Lv3Kwynzpq1gYkAA3f1MJlappE0nwgEQR7axSKWxUE=; b=DTw3tdHQKAZGnnqZCT7CYlTq9H
	SKenGOw55chQNnxUCzDwfZmR2RNBdHaodX1EaLDInPEqBvls4baTQBlZgFDAar49rXRX6YSpQibdM
	cvtx0NmJcQE3GlVhAemGho91YG9YwSGzIipBMdP4t1CuoRNmSLiNcqdOdxZn7XfRILlc9o4ZDr9YX
	4kKGkhQmcKeK8GXDjMn5sMKDPEB4wEwMix1jjOK2l2boGd7Lz0DQZC5376UtzH8WuKkFO1LdE/8eZ
	dQbaEzmcQcwJWJhYk6/zoas3q/hH1TRix5AL21Xh5GACZyIsYHO0nQ4FDFJJa581aLbRpMdUipHtu
	8oRi5yqw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWD-00087h-24; Mon, 30 Sep 2024 23:01:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
Date: Mon, 30 Sep 2024 23:01:09 +0200
Message-ID: <20240930210112.1993625-6-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_220125_829020_2CF48368 
X-CRM114-Status: GOOD (  12.25  )
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

The expected clock-name is different (ext_clock -> extclk) and the wakeup
gpio properties are named differently when changing from vendor-tree to
mainline. So fix those to match the binding.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
Cc: Andy Yan <andyshrk@163.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 0c18406e4c59..dd6fe964d618 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -449,9 +449,9 @@ &uart1 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&pmucru CLK_RTC_32K>;
-		clock-names = "ext_clock";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		clock-names = "extclk";
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
