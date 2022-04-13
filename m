Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D35A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 13:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWVvXH0QvMsJlu1B3TB6f+qe7YThuhEbD1tmfHplhh4=; b=tmaY1TH2uVEzvd
	Z2Nsnuc9pCDRQQSQopVi8PaDk14pcW+Nfbxbko6Px9hZ3k3OqoUjXUPNbRzV8t+YjdgD1yHBpnjLw
	xI1ppROzNijTSOJ3rZy1DIi0pqva8B5DtRnhJDhR4IWuCDVhDF5SUs2XgjTG9CNLBV2UuFjSFFxa/
	7qc5TF3Qu8kM9xzcXhW5+RmImP75b80i47suoctY2xbJOE4+qVkBMARkVjfAHq156BLyOg5Vt0eao
	2z9mPotcvGqPucqHSynR9GA12GOOCPqCUy4qUl6o3+2FsObJK9mM5416XKiy2l58kVKmUkvWtcKIf
	6AN6bNaL0MDQ5by3jVMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedCE-001COb-9j; Wed, 13 Apr 2022 13:38:10 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedCB-001CLH-KA; Wed, 13 Apr 2022 13:38:09 +0000
Received: by mail-qv1-xf29.google.com with SMTP id b17so1600503qvp.6;
 Wed, 13 Apr 2022 06:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ukbT/4wlnr3bIKYOPfr/n68CEs+SDNJ8K2aJyw0K+g=;
 b=XUAIAMw9S2V928uTmqLYIWLIV4lwhS/XskmlSdJ29LdBhmNKksLHmw1HGydwdozR3e
 bdKZP2E/buiXCezZV8tydFHIrnpBAl9EmC3/eNXmudwJ7190AhzB7PBMmT9RZ5tic6Ne
 eEaUPKexSmOOABvCagElipJe2pKQClPnMjtvzYgT5z3e8s5M0pb7e1g65YrYjP7l5HLR
 rwx1MPiSetCOUe7PP5c9Cqt3czTKzA5fGPdVtDGDWa1FJW2NpvZ1O5QmdAG8oHOrRXTC
 Bgo6MtHLbDomydMXdlJDVKm0et8gZ1hsT/cOz7yYWUsXr5xTXmU/cMvx6/3794RTfzAb
 Uu+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ukbT/4wlnr3bIKYOPfr/n68CEs+SDNJ8K2aJyw0K+g=;
 b=pPF1/MOXMBn0n2VN+Vh9DRKpURuiGWcbTjbJ3K3kqKDhnjSuUpCw957x3NW9lEEedd
 Gy5ds8ONXOP8ItP4s9utFwK7LJRw3USvTwhyoACkI57NYRvFU/Lw7W0cWswlG74bY2xl
 vouJCm/L17UYhbtUZwth8boMdMQwWy6MZXlMY9wR9rd/rnrzQul/VkVwBKq/VYF51JRT
 /b5V/brnEDYjnLIbA0xlGxqprroR+i+I6ha5U0s7w02k6JooozYRCFDHyYcm4NCrNO3S
 Gt0hgBnmxOgrQDZ5d7J82/ncTCSj2QVUKQWE8NjxFvA9csm29T388p6sZ+ellomzQtfi
 P4Bw==
X-Gm-Message-State: AOAM533kELcVETEYU99awv2BdESGWZsu6jPwll+xAIpC9ttVcYFka+xt
 cBFozQbj/TSRoY+S6Ur4lWQ=
X-Google-Smtp-Source: ABdhPJz/KePNJSlcz8aYHVEZ4KgjrAunzkrxnD1+4FJPD9C/60EKr4EhfAeg9cW19bi2ok5YAJ+WHQ==
X-Received: by 2002:a05:6214:f0b:b0:444:5757:87f7 with SMTP id
 gw11-20020a0562140f0b00b00444575787f7mr7549283qvb.82.1649857081686; 
 Wed, 13 Apr 2022 06:38:01 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 143-20020a370795000000b0069c59e1b8eesm790584qkh.10.2022.04.13.06.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 06:38:01 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Date: Wed, 13 Apr 2022 09:37:30 -0400
Message-Id: <20220413133731.242870-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413133731.242870-1-pgwipeout@gmail.com>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_063807_684553_D8AEE2DA 
X-CRM114-Status: GOOD (  11.90  )
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
