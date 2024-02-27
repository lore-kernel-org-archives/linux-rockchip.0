Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B933CC54E41
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 17:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ltQ2ASa0CUQCgIu7MC+sSLavvBgYfkMU83XPzF+lw8=; b=KhrWe8vLDp4zUh
	yXGT3FfgZSIhnxzFVZLFC115kuNRW5D3YWPDDwwOufn/qmpzjIhye9K55GO0PuL7Nmi2btcVFwUOc
	rNBrYyYkTQxILRX5Fnjw0srJiZeYeBeu8rBTkZaRHq8DTAeIrlgmbBvP0hosyozVVrH7Y6Cy7ggw2
	nRqCqetlD4wIW8h9loRefp93EIWk1bIsQkGvcBpezq4zW90ddSwr4klOxE4dgkaf6BHfO3G+71n9a
	dLnQ2yFNNfrCsIek40Tr+cFcYLyvyXW0A3/qntjWTQj67BcZrp1/lpiTu86zEdL2OmNkNtYc2ohp5
	euR9Hgd21MGkWzuNEB/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf1Ml-00000006Egu-0NMj;
	Tue, 27 Feb 2024 17:35:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf1MY-00000006EYq-1NEI;
	Tue, 27 Feb 2024 17:35:32 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf1MW-0007MJ-UZ; Tue, 27 Feb 2024 18:35:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	ukleinek@debian.org
Subject: [PATCH 2/2] arm64: dts: rockchip: fix reset-names for rk356x i2s2 controller
Date: Tue, 27 Feb 2024 18:35:26 +0100
Message-Id: <20240227173526.710056-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>
References: <20240227173526.710056-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_093530_430628_FBCCA579 
X-CRM114-Status: GOOD (  12.91  )
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

The dtbscheck reports a warning for a wrong reset-names property for
the i2s2 controller on rk356x socs.

The other controllers on the soc provide tx and rx directions and hence
two resets and separate clocks for each direction, while i2s2 only
provides one reset. This was so far named just "m" which isn't part of
the binding.

The clock-names the controller uses all end in "tx", so use the matching
"tx-m" reset-name for the i2s controller.

Fixes: 755f37010f3e ("arm64: dts: rockchip: RK356x: Add I2S2 device node")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 6a9bfb0550c04..92f96ec01385d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1124,7 +1124,7 @@ i2s2_2ch: i2s@fe420000 {
 		dmas = <&dmac1 4>, <&dmac1 5>;
 		dma-names = "tx", "rx";
 		resets = <&cru SRST_M_I2S2_2CH>;
-		reset-names = "m";
+		reset-names = "tx-m";
 		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2m0_sclktx
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
