Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CBA9CF8847
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 12:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxAHmjFnnrKY15dAV6fOam45hOJEpHxpJXj97gErypc=; b=bSFUEKsFtANggO
	wnozx7/LdRmVKDgehOEcsx0Ixc04dnj74LV3nfO6pKL/O+rSQCP7yJjXQoZ+mV7eEUfdl2oj+D4dJ
	c4WvMhsbAD3kvFHLURQhFjk53auXLjLK8LPZbtOgRz/Ibg64nASmXheUJ4DcLrwup1S0sTDptbDBG
	8yYKopOCRw3wG8a6fS2G6NeuAi4wakoEsFzxPOBIDdbANl4A7v5nFcs02uB7H01oQKTezCud7I1UU
	JeCPtApBnTJV8DT4VwbUnXJiG4lnu96zHptcTpR8cWGyNxLpF/nlX91XyAq5fDCqJpfa18bYy4zjK
	qqtgQJbqo+m4YryPXY9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM3L4-00000006cNQ-2wF8;
	Thu, 20 Nov 2025 12:00:38 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM3Ky-00000006cMC-1zkm;
	Thu, 20 Nov 2025 12:00:37 +0000
Received: from localhost.localdomain (unknown [116.25.94.95])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4b77145;
	Thu, 20 Nov 2025 20:00:27 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
Date: Thu, 20 Nov 2025 20:00:07 +0800
Message-Id: <20251120120011.279104-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251120120011.279104-1-amadeus@jmu.edu.cn>
References: <20251120120011.279104-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9aa12327b903a2kunm2d0ac75b4ab69
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTEMfVh9LHUhPGEJCTE1PQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQk5ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_040034_677650_1378D55E 
X-CRM114-Status: UNSURE (   7.40  )
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

The max-frequency property is already defined in the mmc
node of rk3576.dtsi. Remove the redundant definition.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
index cb04ab96d1e8..f9dc4fa39167 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
@@ -689,7 +689,6 @@ &sai6 {
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	no-sdio;
@@ -703,7 +702,6 @@ &sdmmc {
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
-	max-frequency = <200000000>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
