Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B90C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBv/uXi5phOOtheL6ShHA+o/qcwHg06SZPiAijr22uU=; b=G75x1YeLpW9qnK
	dJz/TCiOPScoLTQ0BUTHDRkDXlq9lRleG0np9UWzFKe5d/5LVGTKpbE+egiJJoZsC/e57WfYWTX44
	esQpS5GULmmHQvahsLQfe/cq1EgsJU8ogn0nK7+YAdfGHRW5301Z4/hmaWENiARatn8iiv1Q8IIYG
	EV3gyR1A8yDxcmc7gCYD3ZKfWw3JWp19q1OLmPhUg0aemWSxJxQrap/SMZUXgIac/ugc3fJfDWMSz
	yyQdBCIo4ABNP8mu4HYyaBxnHwirzERub+KrSYJBV3sguDnAokZ3zY8FC3XSUNzCn5aesuZQYp9sa
	Dd/DqtIzNj/9jmlg8SZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLW5-009Zfp-Gz; Sun, 27 Feb 2022 15:31:21 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLVB-009ZCd-9g; Sun, 27 Feb 2022 15:30:26 +0000
Received: by mail-qv1-xf29.google.com with SMTP id ba20so10635715qvb.1;
 Sun, 27 Feb 2022 07:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3eZl+223sl+0khRsd3wUqrr3mtzeFUiyhoAUr9E3jDI=;
 b=PygESFoK5ow14TVHuMhT0LLw9TBeCh5k8CfG2ey+b0L677CPvgCUqw5E9gPdveYO1s
 K/8RajahPgOPlmwWn1zvwjAhwE9/Se9vLjfyRrsYGixCc5xYYXrBBRB0JW0BAVcgVz7s
 FZLYZEfEcxJn1MAZaUO6BXOEhGuHqDEsGZ4+4bmz8/YgnR/kXBRBNdXqyCQPO9F5YBge
 L7DoRufiZ9AfJhCfdKsVLacusn6VkWppcMQOifuCuq8xk3tbv1xK7OygmewyQINkV5O5
 Ru1pFlML5wWi0lS7Zlm1k9dPBhKLOtomoRtB77Abn64vLaDKBmhV56Y7iV1MPPTozgnW
 pnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3eZl+223sl+0khRsd3wUqrr3mtzeFUiyhoAUr9E3jDI=;
 b=SA+I3XLj74X5KWBQXDNKKzdU21t19BP7t4unhiyEUDxi85gmDUHMdlX/66ITz/xIUL
 MaVG9esa4Z+R7UUBJWJES1AibALrjwZvMRetfyosAnfpz675evkj62Pf5tJrXFR5/Amj
 X2R1ArbfimJv37/u5v+7wPOPjDhm3IJK4wbb5S/cr+5owQGUblJXv8uotaerzGwU1PTg
 FTZOK2oMkojxy+HSmWHfo+Hv/+yJEZ861m2wLNCvjDvi32XUCCn/wM1ulz/1qIFelYww
 f4vF6g0gPKpQ1Yfdmb9ctMjNjieDjcuNjQON/P6EFxb4YoQ5EJoFXiDONY8wLaROffG5
 vPKw==
X-Gm-Message-State: AOAM531SxyGk3dLOtqas65iqAbT0xbF4SYlLpbHN8a9a0hXv/hUgnKWS
 h+J6uwLHl5Ftq5rWW/IhkPE=
X-Google-Smtp-Source: ABdhPJz/IRhGVKuwsLuChwFhxAsEe2SRtfnGcK0RPln660/qisd1WULt8QJJjRYagFIpW1lnousJzg==
X-Received: by 2002:a05:6214:1852:b0:432:dd08:56b1 with SMTP id
 d18-20020a056214185200b00432dd0856b1mr6379992qvy.3.1645975823982; 
 Sun, 27 Feb 2022 07:30:23 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:23 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/7] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Date: Sun, 27 Feb 2022 10:30:14 -0500
Message-Id: <20220227153016.950473-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073025_372102_1971A2EE 
X-CRM114-Status: GOOD (  12.38  )
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

Add the dwc3 device nodes to the rk356x device trees.
The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
dwc3 host controller.
The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
dwc3 host controller.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
 3 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e4f7..0b957068ff89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -6,6 +6,10 @@ / {
 	compatible = "rockchip,rk3566";
 };
 
+&pipegrf {
+	compatible = "rockchip,rk3566-pipe-grf", "syscon";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
@@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
+	extcon = <&usb2phy0>;
+	maximum-speed = "high-speed";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 5b0f528d6818..8ba9334f9753 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -99,6 +99,10 @@ opp-1992000000 {
 	};
 };
 
+&pipegrf {
+	compatible = "rockchip,rk3568-pipe-grf", "syscon";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
@@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
+	phy-names = "usb2-phy", "usb3-phy";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..072bb9080cd6 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usb_host0_xhci: usb@fcc00000 {
+		compatible = "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "host";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG0>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
+	usb_host1_xhci: usb@fd000000 {
+		compatible = "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "host";
+		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG1>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
@@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
 	};
 
 	pipegrf: syscon@fdc50000 {
-		compatible = "rockchip,rk3568-pipe-grf", "syscon";
 		reg = <0x0 0xfdc50000 0x0 0x1000>;
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
