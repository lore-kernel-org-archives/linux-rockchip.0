Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596F1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 21:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yMaYN7wGZlDDzEXpd8/Ot5/cmy5s7rQy1/X9W1S4+i8=; b=YzXnZIWaRlCDiK
	1aaQZZ4XHGybh9iburMSGygLcytVmDBKE65TnDmrURmF1ZBSfOGOqyDFvxBVq9qtL9SgsxF5HYuy6
	vmLi3eNOZvAGMIuKp1LL5Ux4l80ZGgvMECMcDK0fi1dkuIzBZ2MEpCQvZ4F+UIBsBx/P8nxkKWhKZ
	ZbnzZQKn1CpA1HkrXAaJ0Up5HJBPKlZyCkh3G3vLW4iWcLxoLpwIqrnJe7aNFEh7Fuhxgkfu8mG5V
	uuJHkbUZPeBdVZuDHrbmqKg0PuCPMx2CQkGpNmORFFrPndz0LztO3LhTTWv14d/VWcbhbkno3oHQR
	HlABulV+iJk+nQwZZ6dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLVCb-0000000EtAX-3a3U;
	Sun, 23 Jun 2024 21:56:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLVCW-0000000Et9E-1Los;
	Sun, 23 Jun 2024 21:56:45 +0000
Received: from i53875a87.versanet.de ([83.135.90.135] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLVCO-0005ud-Iv; Sun, 23 Jun 2024 23:56:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: knaerzche@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: use constant for HCLK_SFC on rk3128
Date: Sun, 23 Jun 2024 23:56:31 +0200
Message-Id: <20240623215631.440399-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_145644_385735_5589863B 
X-CRM114-Status: GOOD (  13.46  )
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

Due to inter-branch dependencies, it was necessary to add the rk3128
sfc controller with its hclk_sfc using the numeric clock id value
instead of the nicer constant from the binding.

Now that it's available, change over to this constant.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
I've modified the commit adding the sfc controller to use the
numeric value to not cause build errors between the branches.

To be applied after 6.11-rc1 .

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 5019aae1be328..4bdb6b0a618e7 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -429,7 +429,7 @@ sfc: spi@1020c000 {
 		compatible = "rockchip,sfc";
 		reg = <0x1020c000 0x8000>;
 		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_SFC>, <&cru 479>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
 		clock-names = "clk_sfc", "hclk_sfc";
 		status = "disabled";
 	};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
