Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBCF7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 18:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWVvXH0QvMsJlu1B3TB6f+qe7YThuhEbD1tmfHplhh4=; b=RPQfFICuKnLgeu
	A0usngMzSeIPpVhJfmio1uW4tXBy2KRa77Wf/b2R0e3b0x8UQpVNLVvr6b10FLTfQl9/JKTh3169y
	V2L0mgZ7FeZbboYQZ14eYR8xTG2F7MfqnMLFrZFWY0BH7gxUV491zBc64kP5ohDXN6gEItlB3+Syb
	0gFvBcPWpzsrPDsZsEvN81F8sBq4FZw/XEgj1HX1+U/rIHjiv8l5A37Ratb6cztLGSL2Rtd67iFnr
	2h/cjDrFQeYXp42VK4+igHHI0tFL8DEKFJ4eU6ZZo747KMoI0YV2+BF+px2OAnuLPgGQng8B7dcoB
	l5xZWOOf8sRjeMoTQjFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLir-00FVYH-CF; Tue, 12 Apr 2022 18:58:41 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLiH-00FV8J-0I; Tue, 12 Apr 2022 18:58:06 +0000
Received: by mail-qk1-x72a.google.com with SMTP id d71so6375023qkg.12;
 Tue, 12 Apr 2022 11:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ukbT/4wlnr3bIKYOPfr/n68CEs+SDNJ8K2aJyw0K+g=;
 b=kRX7Utmi5sQeJOdNV5GhibPVbi+R8T1CXlL4HB67wg+pJJQ2aPRD2MFBzwsvjXua64
 6zu1TEp7uAPQoS29pn7ndo6GaHiDMD2v9+H8xitmT0fXat0jXYgEUrpZztAeBCp+h7Pr
 j6PIF5OLcbNU6fjOClZDd/WHXjK3+qA1zBnqk3wCIPGC28N6ebjTFyswcFhZbcMOw7e8
 RDfRf5BolneaTvspYK40EFE0EIRbvRT9GJakQhVNYHFX6vDttuG+wi94dhWgsRqMq2vr
 vFdHrYA3QJkpdpuk6Z0AXQ9/rZBMR11J1N9jn/fZoOjib//84gVb+t9cHpScZ3HSO9kK
 hbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ukbT/4wlnr3bIKYOPfr/n68CEs+SDNJ8K2aJyw0K+g=;
 b=zCG0Mz7wCJvjA9thREwKOCbU1agRbXBkQ5/8X2P+nDzYngSDgJT5rYvgiX5sjjekxJ
 I9Ryq/AdSNDGxXvxuDkPNA620REdLR7HJ6xjJn4bV4MHYSc+q5y0iFIqzo15cieib5Y9
 D32EdBY3WD+afHtyEDZ91Lrlq4sWNcbQ7X/iyIIPEM7hq4UOjUk5DokpUc9EEuROFe9q
 kcnQ3vHpAaVerY7GdNTl7Qg7e7A0Q5x0o/1a7jmzQ3vlCKWc/N6nAMRd/tJEJiSYC0GS
 eK/e9xABm88Xe/btTtKcb5haOtr0DFFp+6pS4CK6tAXn2AZwbeH6Q6Ul6ZAC8cHW/JWd
 mYdw==
X-Gm-Message-State: AOAM530rAAZW+8UvBD62Jd8qkVnaoaQ6g1BA0VvGgqeleye+YZ5OKUX9
 m7/q03mFdlhbfdwqlhMlOmw=
X-Google-Smtp-Source: ABdhPJxMin6i5rA2NeoQXHQ9qwN32ld+Qy9ePRO3wMgKyKQRQvIEYC0jvp+o6YDuaSBUH1LeVlUvRA==
X-Received: by 2002:a37:f519:0:b0:69c:29e0:f740 with SMTP id
 l25-20020a37f519000000b0069c29e0f740mr4234784qkk.652.1649789882726; 
 Tue, 12 Apr 2022 11:58:02 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a05622a05d200b002f07ed88a54sm1820610qtb.46.2022.04.12.11.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 11:58:02 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Date: Tue, 12 Apr 2022 14:57:50 -0400
Message-Id: <20220412185751.124783-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412185751.124783-1-pgwipeout@gmail.com>
References: <20220412185751.124783-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_115805_082913_03A722DB 
X-CRM114-Status: GOOD (  12.20  )
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

The pcie2x1 controller is commong between the rk3568 and rk3566. It is a
single lane pcie2 compliant controller.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 68 ++++++++++++++++++++++--
 1 file changed, 65 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index ca20d7b91fe5..d5131f5aaf73 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -270,10 +270,17 @@ gic: interrupt-controller@fd400000 {
 		      <0x0 0xfd460000 0 0x80000>; /* GICR */
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-controller;
+		ranges;
 		#interrupt-cells = <3>;
-		mbi-alias = <0x0 0xfd410000>;
-		mbi-ranges = <296 24>;
-		msi-controller;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		its: interrupt-controller@fd440000 {
+			compatible = "arm,gic-v3-its";
+			reg = <0x0 0xfd440000 0x0 0x20000>;
+			msi-controller;
+			#msi-cells = <1>;
+		};
 	};
 
 	usb_host0_ehci: usb@fd800000 {
@@ -722,6 +729,61 @@ qos_vop_m1: qos@fe1a8100 {
 		reg = <0x0 0xfe1a8100 0x0 0x20>;
 	};
 
+	pcie2x1: pcie@fe260000 {
+		compatible = "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xf>;
+		assigned-clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
+			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
+			 <&cru CLK_PCIE20_AUX_NDFT>;
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
+		msi-map = <0x0 &its 0x0 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy2 PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		reg = <0x3 0xc0000000 0x0 0x00400000>,
+		      <0x0 0xfe260000 0x0 0x00010000>,
+		      <0x3 0x00000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
+			  0x02000000 0x0 0x02000000 0x3 0x02000000 0x0 0x3e000000>;
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
