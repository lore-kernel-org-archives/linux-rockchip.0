Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9420CF0421
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwHUSA46/P+UxZtHQdv3im6bgiEHYTR8Frsh79DLkRI=; b=1tF4T9veueaZPk
	CknZVC8agQgA9XBB07Mrj80fe8D9PSDJY4qoQXBTW2Gq4/SCZ0Bq9QBtBXmhbGRhcGfUNyq3zp28J
	FEogWkt2dq4TToAzWBE5ToC3e5oecJCSppOp2s9msy7xCf/3hoLSS5ebT9v7JKVpGpQF+OZzqfAur
	MZqNZWMjZHfMDnNITfS6S8S3s5S0OXAnABLQFGGeLOl9RQcqG05lNP+YHsW5KaYO76tfQmF0ezLlc
	3VSalBRAQwphmqi2gXjvK8ne0P4Wyl2tgDI2V0iwso2TC7bWP35IHPk5htwLeBDey32bXzNUoSY1R
	RTDyPxYodoirHCYXI7Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH7Y-000000076HF-05AX;
	Tue, 08 Oct 2024 20:47:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0F-000000075I4-07uK;
	Tue, 08 Oct 2024 20:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eDd5It6L888PWBPkJXs5nl2b05MH0ha+y3DJsf2KZJ8=; b=UTjbr40Vlh/Fy6lMgbcsfjHeB5
	Sl8WtzULm7bfnesmMHTsk+3FxUyE7Ptb7qxx1Nt8RM1SyoQYEDUfCbaxHZIa9N7285NNUGu2v5KRh
	DPNicvcqu86pjrhxyTuoQQJzFfq79MojXRi7F7DfsdV8E9D/9M9F5JxorWWcgRELJs0u1ByUPuO1M
	2QhNGew61W+qJmXa5L4rkIgKr8H9rXgb1ZVjQlrpj4666rTFESTXr6aNM/AFvBa1+oRZz0k0G2buo
	odWPsVhz5Q0eb0z3ad1iG7evhNgulgARy+uUhlEhbmy+1vidk5vi9jCF3UPaAeIR5OAjN9fxsZ0EE
	BlqJjCCQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH06-00000004gep-3Le7;
	Tue, 08 Oct 2024 20:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eDd5It6L888PWBPkJXs5nl2b05MH0ha+y3DJsf2KZJ8=; b=jSuUVASO5JpD0ixglqh5ZhtT99
	MeAKJjnELiy/DWwPry9+m8z8UQD5tpS7pEl8AeWysUqbNvedrQZ/5LVI4M+BKs4xV6OVaPjzGUWVD
	swCc2sP0IblT7YS7PS7WjULFljKN2pcVQhHmVHvh4OZvX9m6FKln8u/nfV3/PdoWUsTiXih/AoAQD
	eB5QBnNvQN502Yo4JpTrYqmpa+Z8B+92Yzrd/k6/Dit7+gf2bgRtgguB2s7hzgXz1NwX3NoatxI+f
	pNERTHWjtRQh5qXFQ89dK9y/hypK+4JbN3IZ7GG+ZQnELS745vZb8Sn+21UhKcU/VX3atPTCCWgNT
	3Cu93X/w==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-Qg; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v2 09/14] arm64: dts: rockchip: Remove 'enable-active-low' from two boards
Date: Tue,  8 Oct 2024 22:39:35 +0200
Message-ID: <20241008203940.2573684-10-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_214013_811717_63EA7CFF 
X-CRM114-Status: GOOD (  11.35  )
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

The 'enable-active-low' property is not a valid, because it is the
default behaviour of the fixed regulator.

Only 'enable-active-high' is valid, and when this property is absent
the fixed regulator will act as active low by default.

Both the rk3588-orange-pi-5 and the Wolfvision pf5 io expander overlay
smuggled those enable-active-low properties in, so remove them to
make dtbscheck happier.

Fixes: 28799a7734a0 ("arm64: dts: rockchip: add wolfvision pf5 io expander board")
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Cc: Muhammed Efe Cetin <efectn@6tel.net>

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts              | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
index ebcaeafc3800..fa61633aea15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -49,7 +49,6 @@ vcc1v8_eth: vcc1v8-eth-regulator {
 
 	vcc3v3_eth: vcc3v3-eth-regulator {
 		compatible = "regulator-fixed";
-		enable-active-low;
 		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc3v3_eth_enn>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index feea6b20a6bf..6b77be643249 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -71,7 +71,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 
 	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
 		compatible = "regulator-fixed";
-		enable-active-low;
 		gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
 		regulator-name = "vcc_3v3_sd_s0";
 		regulator-boot-on;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
