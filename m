Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E581C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 15:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO3Tp94XEh/k/36vTh1qcsRIpdyeGRAsGL8EMebpT6E=; b=QdWQuClDHzuTEd
	6KSD2oA/FDIllAytf6pY/Qcvb4qsa8Ts1xeXvXF9U4Ey8ynPTbs3JqvF4W4O2SIc2gcx/D31CiTUH
	t9f0uExKdSLbhCQ9sapNQGBO/xmxyD7lg5UmyYCk0tAh/gyS/jJffgYYuV6cInEkmABz61zRvrELy
	C6qe6uab1HIeeXQAN61fQHSN4h4GMInHZ3inK1Mum7CfKiKsfGqkdAE5R6+4EqTgaltyeN4UreA97
	lHUeE5vUNENRHiWPjqUc0Z1bOQunLZLmC51gr6FRv48/HcFWdsQBJZ3OIcA02RyMB4rsTP+kwq33J
	tm7SHNho7rwYlurVDdsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHd2-004WjJ-RG; Sat, 23 Apr 2022 15:24:56 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHcK-004WIy-A3; Sat, 23 Apr 2022 15:24:14 +0000
Received: by mail-qk1-x729.google.com with SMTP id j6so7917398qkp.9;
 Sat, 23 Apr 2022 08:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OAdcJDVWazZX4dXGCD7+iF7myvUA+4bRuij6vVerXqI=;
 b=VLmOkuSGPNxi+Bn0Kbd99h+1Ub83VpbQRYo3/rv6mYfYEZi/ENANpvI/EwS2wP9x6b
 hPNLPLHtXUz/t2yDzPPYRzWimvosVq+qWWm87ajW/TO/otWvkRSXxZmoabpG7F6vmJsb
 18PpUrzBFh8F6x3viJJREgJKizPpXI/4jmRjw1tNFbcgAreAJQcp67r8H1HjOZ3BZICj
 oPd1uTyuM8Yx+zxJViSL4hLYPQJmB6V62ehwutaER2CcRqOH0UPawH63EsYR4DM8Ywzc
 5tpwxpMQTbmQwByJouPv+yPDos0Iyq49bpCWbpCiWRBIwwWmNb6BGEsKkogxdeLbmK7n
 av/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OAdcJDVWazZX4dXGCD7+iF7myvUA+4bRuij6vVerXqI=;
 b=zgucRF7ASx9SAXXPMakhBlp1Zb10vtwANnIcRUDeGJBGV98nic8YfrEHMP8XDZ5up+
 E9pODgvrG+vTzHSgRE7Sp48AldRMWoX/RqdTHIKpTeIY+kbB03Zdr8easlT18vcDVWwX
 7zaTtkN+xJPSdmW3GMLD2V2H5HqeX5JYi4MTIL5Zjl8IsMif+nRKEYlNkq9fdLPoebrR
 nppagTwo/cYRA7j5UtKhXqFsk898eq/WhIJCJxLJs2i0O6PuJmNsc9iN8rNrQSndcsXG
 4k0DVRcbxp1bFxAgy8TgJfyIFb/wwIDvx7xcmAtE9H3sdw1V/INciBI18vQ5faibOgqp
 nh7g==
X-Gm-Message-State: AOAM530z+zNCJKsD4jR50m2InU+wFCnmvrJVDxvE9m2o3Nn4BanLk9y5
 6R4f3+0xsxdn0JQvRMW/8Uk=
X-Google-Smtp-Source: ABdhPJyia0XabZnmUlsN995dOAIz25vVgGiXhUoSyZce7ayaDdE6Gq3gIaVnQ2tH4qNuYDr4ii7LSA==
X-Received: by 2002:a05:620a:2909:b0:69f:6e6:8d9c with SMTP id
 m9-20020a05620a290900b0069f06e68d9cmr5487902qkp.51.1650727450863; 
 Sat, 23 Apr 2022 08:24:10 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a05622a004600b002f33ba280cbsm3184165qtw.8.2022.04.23.08.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:24:10 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 4/5] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Date: Sat, 23 Apr 2022 11:24:02 -0400
Message-Id: <20220423152403.1681222-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_082412_385509_334A899D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

The pcie2x1 controller is common between the rk3568 and rk3566. It is a
single lane pcie2 compliant controller.

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
