Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ABCCCF0425
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRtO1OzFbUwaFk88+6mVV58oMnk/qNuQpK71j06vOSs=; b=MOhr15ZPdEY39I
	lKxQUdt4BpL1KqehbD4vuK684Pq7PbUFSSem4dsT9TE1LB8r5TUD2qX5VmfeAK98fmwi5tb4pXXAt
	71UdEXDaVPNGqRccyb48VNpfFygqIbCsMWr1JhVPbcb/s9cd9piI2zfKTDBHHcdIz3F1CEPvlRYCU
	taMqMGGzRT+ZUzNR8HVPVdNoTnFU2fwiiqQjhHTJ4Ii1+R1K4TOmIbtcSQehHwrz05Inzl8U1VPrm
	/o/PWH49Rj97gttHl2j9Y7l4b9ou8e/ulZF2VI7Oclv4oz1ea0ueT4Cff+mhfW5m8EuniojykIflm
	Hks7N+lngNxgjZnJb2pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHCf-000000076tr-0Pmo;
	Tue, 08 Oct 2024 20:53:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0o-000000075MI-1fVf;
	Tue, 08 Oct 2024 20:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=39rBIKasij5KGq63zlzPweJVheIerVbw/yLE/z9fdVM=; b=RbhEone2yOaB55CwxtXmK1QKIe
	cBThqv15TfOmICmCrNoXwHtDYdXjJGxBYqRRVtGJ0tQcp00tB+sKpb+92kON1q0uKElzkrgIcH+ac
	fMc1hoi76LJTPiOFks5k8z6Y2UXDK05rvu/2UphUt12vxOLKw0ze7UG8YbtoAh3d7NbbGcfWtsem9
	7pjX5D9K4uBFUFbB+Ne20lXaAewkCschbeyk9UiSWapXYp2HxYHpqCptWaZVJ3FVGDVpNmSQQoIOW
	B3T4csHuPvtE0Z4JQN+lP+GOW8Iib+XBD83deDwX8fca2aG3EMppiwm0Lfy+QM2jxoelJOwx4YkLO
	t1T4MvBw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syH00-0007ua-0Z; Tue, 08 Oct 2024 22:40:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 13/14] ARM: dts: rockchip: Fix the spi controller on rk3036
Date: Tue,  8 Oct 2024 22:39:39 +0200
Message-ID: <20241008203940.2573684-14-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_134054_458675_7F0F80D6 
X-CRM114-Status: GOOD (  13.21  )
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

Compatible and clock names did not match the existing binding.
So set the correct values and re-order+rename the clocks.

It looks like no rk3036 board did use the spi controller so far,
so this was never detected on a running device yet.

Fixes: f629fcfab2cd ("ARM: dts: rockchip: support the spi for rk3036")
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 09371f07d7b4..63b9912be06a 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -553,11 +553,11 @@ i2c0: i2c@20072000 {
 	};
 
 	spi: spi@20074000 {
-		compatible = "rockchip,rockchip-spi";
+		compatible = "rockchip,rk3036-spi";
 		reg = <0x20074000 0x1000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru PCLK_SPI>, <&cru SCLK_SPI>;
-		clock-names = "apb-pclk","spi_pclk";
+		clocks = <&cru SCLK_SPI>, <&cru PCLK_SPI>;
+		clock-names = "spiclk", "apb_pclk";
 		dmas = <&pdma 8>, <&pdma 9>;
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
