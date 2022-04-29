Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3361C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoNaCDc5ATvWxHmHRuvyOzy0xSS5oI4fSD2d7bAUyn0=; b=RTnS7/PcBe0uoU
	ARaRrUdYPScPcfMdTCx6samFwe/yt4lmyRY3SsAnSuw/ht1uJE6OsXBBEMWZtyXyKHgQjGstTzfKg
	6gqORfJXorCBs00y1MAJceoNX6l3SAMzfTGZlClVuIAF4tNSDSyKc4Uyah+ZZiT2PeWJ+RKfGK3ch
	oEk7qu1WjlJmHnFSgH7Z2U95FRlgdtTHz8Pif1C7/se0Pup1hQ9rtW7EOwqg8hQcuAJNqF4McWwOr
	AeykTJYbM1VFOm3MuCESY/sExsqP9+blldYk/1DzLwwhTl+OmOz2pbL34YYeu+kXrbXbyNp+9wbPY
	IG3z1ohbFiDS41oVHlpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPuW-00BBqM-34; Fri, 29 Apr 2022 12:39:48 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPti-00BBIi-5M; Fri, 29 Apr 2022 12:39:00 +0000
Received: by mail-qk1-x731.google.com with SMTP id x77so4928147qkb.3;
 Fri, 29 Apr 2022 05:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nMbaB1hMrWP6q0zg7M4z6h6D9Tn07LeD9sztgtSCUDY=;
 b=SVxORSY0KhQ+iG+yIaaooCoD1DKLfpdYwjCniEUAX8XSWU/NUQ1MvQvPkNReNqdKnp
 wwjK/9YiMOpxI/97SjNQO3vng37jNQmu4cpMRBKVng7jNVSYgnC9/380maPcREXwN94n
 kXhsVKxOEzvcO6v6rkfnkhIhHozdOokaaEhGaZXPOID3caQGezLM0sw6yw46R287rjNA
 N0XSlQEAtKanTKmfAkOtWLozkZryyAO6U8BCqSXfGtLAjYpgqsL9gy+eXmcm8XIgpgY0
 D/jjQtFSDonOwaSoaBVlZ29RPL1xbnJewVpNGRvkwlDRDK8KczqdVYgoZt+xsF3UNgKP
 UNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nMbaB1hMrWP6q0zg7M4z6h6D9Tn07LeD9sztgtSCUDY=;
 b=oh5dl8wLzV9iyVREC0nBLH8BngOwh6zrGvrTXepsmsI4rbZcYpOrlexSLBCoRhN15K
 gYvMMyxwC6CnKaQaICANssOkojhf15Sp64G47jG29bjyt3chlrvTmW4P73XNPlkxdzO6
 hgz6KlJbiBfNSK4cL2NpoNOvyd4EXvxGIxVfGUiZAP2O4sutL8CER5BSWafQq4XDmheS
 8Xxsnaav+iaT9iBXSpTGGc2yd7UWf13sW/L4UcXXzzOsNvAR1DY1Z2IGcCq8FBqxQPh4
 7hKLcQok8Yl85ZCgQP6q6Nevq1mN7lrfYH3tEjCDWAoNJtPEiCtbVAoLCPPCZECiAVEV
 b7Mw==
X-Gm-Message-State: AOAM533HO2V2sqUTJzdNRtUX+NeDhfPvAfO+adm5spcbI6y9pLNqeqWK
 dGFxrOZRfYYh0xeQItly69Bwo8IAhUtUvWDW
X-Google-Smtp-Source: ABdhPJzTvdHr72vuhbWQnRKP8AsvOEpjnTNBML2w2Ih2Fea7TMAde5RkNBeQ1i+9VjD1dlmhhG1rCQ==
X-Received: by 2002:a37:278d:0:b0:69f:7705:61a9 with SMTP id
 n135-20020a37278d000000b0069f770561a9mr11452792qkn.190.1651235922951; 
 Fri, 29 Apr 2022 05:38:42 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:42 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 4/5] arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
Date: Fri, 29 Apr 2022 08:38:30 -0400
Message-Id: <20220429123832.2376381-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053858_272303_A3966767 
X-CRM114-Status: GOOD (  10.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The PCIe2x1 controller is common between the rk3568 and rk3566. It is a
single lane PCIe2 compliant controller.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..aea5d9255235 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -689,6 +689,58 @@ qos_vop_m1: qos@fe1a8100 {
 		reg = <0x0 0xfe1a8100 0x0 0x20>;
 	};
 
+	pcie2x1: pcie@fe260000 {
+		compatible = "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xf>;
+		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
+			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
+			 <&cru CLK_PCIE20_AUX_NDFT>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk", "aux";
+		device_type = "pci";
+		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "sys", "pmc", "msi", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie_intc 0>,
+				<0 0 0 2 &pcie_intc 1>,
+				<0 0 0 3 &pcie_intc 2>,
+				<0 0 0 4 &pcie_intc 3>;
+		linux,pci-domain = <0>;
+		num-ib-windows = <6>;
+		num-ob-windows = <2>;
+		max-link-speed = <2>;
+		msi-map = <0x0 &gic 0x0 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy2 PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		reg = <0x3 0xc0000000 0x0 0x00400000>,
+		      <0x0 0xfe260000 0x0 0x00010000>,
+		      <0x3 0x00000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
+			  0x02000000 0x0 0x02000000 0x3 0x01100000 0x0 0x3ef00000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE20_POWERUP>;
+		reset-names = "pipe";
+		status = "disabled";
+
+		pcie_intc: legacy-interrupt-controller {
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-controller;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>;
+		};
+
+	};
+
 	sdmmc0: mmc@fe2b0000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2b0000 0x0 0x4000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
