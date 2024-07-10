Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 391EEC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 13:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=685IYjeqJ9d32sQ3uc+ejcx5px5Ewgq8d0vv/poegqw=; b=c5FI70uMe7gG1B
	67++w7tHwI/Nk4w0NicDVqbRMLc3EzKA1K1F0LBlzIl/k8ONu4luirC1ePXKI/lX8oppTNa9ENBO9
	7nEBBfhoj+JrdBNBPLf0zkp8DqEVrfT/tZvis7uNRL8DCbjeVBhusdxKf/NduFqQ/M7xMFEcIZ1NP
	TIbo/0QWsNL0nDnESIE1X1EL+h1JijYA9xH8pH83U17HEghKMuR4PdXF2A47ODbkjqIyuaqKdlgVU
	IPQvsZNU9RkVFVzLMupjv0NR18lH/belzAye+WDu5TpqhYGTGD+R/8jUWedyEERH9Nkbou0Ils1lF
	b5yhFs+c9NfbAPFeT8rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRXOo-0000000AecF-2QUy;
	Wed, 10 Jul 2024 13:30:22 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRXOc-0000000AeU9-2zJ2
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 13:30:12 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720618208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KLBHZjexyXVN2+OSBryAFtyXrp6LCvLeuz6pNTh3Nso=;
	b=mZcZPQYXx9l2k3OZVdPk/KGs0KYa7tQ/c8R/OJQJYGOtW6Kw+/GLh4VbYWz4eCe5o8UoLm
	X0pap6fdnLc3uK53eGHnkfCK0FSo2WYZWTia6cKpy4Diu2hpTVmtD/y4NQRRzfn8neeOiP
	dD3oMxfpTosZV83P7AxFXCRd3nlYBEDpzXsz5J7IUEQn67GKs14c0paAAt4CfClBCExNX/
	HFR2a6gbxq8NdNavtR+uz2c317tRRKwBsLH0W9cgcPgzdKPdVZLrIVHaIFs0GWjvtJBkvk
	ETLarDme6M/byrHWPiIeUYJoJMa5HkX2S6XsJCwVO1ENZ3+B1Z+vtTF5EQ3K8g==
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jbx6244@gmail.com
X-Envelope-To: wens@csie.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
Date: Wed, 10 Jul 2024 15:28:12 +0200
Message-ID: <20240710132830.14710-3-didi.debian@cknow.org>
In-Reply-To: <20240710132830.14710-1-didi.debian@cknow.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_063010_909738_FA2F59E0 
X-CRM114-Status: UNSURE (   8.82  )
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

From: Alex Bee <knaerzche@gmail.com>

RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
boards have sdio wifi connected to it. In order to use it
one would have to add the pinctrls from sdmmc0ext group which
is done on board level.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b01efd6d042c..95c3f1303544 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1036,6 +1036,20 @@ usb_host0_ohci: usb@ff5d0000 {
 		status = "disabled";
 	};
 
+	sdmmc_ext: mmc@ff5f0000 {
+		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff5f0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
+			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		resets = <&cru SRST_SDMMCEXT>;
+		reset-names = "reset";
+		status = "disabled";
+	};
+
 	usbdrd3: usb@ff600000 {
 		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
 		reg = <0x0 0xff600000 0x0 0x100000>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
