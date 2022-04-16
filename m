Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25A01C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXzxWKs5Rl7tTWB0ycWfG78DjglhkMV+n0qTQdzL8ko=; b=p6bGQ0yBov4Kp8
	+qDoqdtPV3n8DZHh8PrlRqnD8sNLD6C6aPxrZYRY1doNHqdKW+AEJibxxh228U+vUBapks4jx21tD
	F2TkjDJ86KrjucpOLlQGKQqqrbA3IG2B6C6jqaIFMiZl7iqUQQV8d1JWlv2Xmx0kAHmK3eTh2UPtE
	iRycMrWgm8IMbmyG+ScbLbgvBG8cLJZZGwgFVs7dYyH5kmtskeoe4NaDyOGjwdJlb9GeDYzWfPKym
	DvqCbYH8HA4BnKP3uYkayv/D0279xZuyTKeXqxWB0DTJHih0HOoogNKPdjFfVe9Z4z/AGwwW0nW6c
	6Trkk7cTCrE1wnkB1Duw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffJ4-00ChKJ-0L; Sat, 16 Apr 2022 10:05:30 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffIj-00Ch8w-1Z; Sat, 16 Apr 2022 10:05:10 +0000
Received: by mail-qk1-x732.google.com with SMTP id j9so683912qkg.1;
 Sat, 16 Apr 2022 03:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r0iQ9ABbCRaGlGa7IaJxgd/TqqdAiwKA2NxXKG7sbVE=;
 b=HFIYkPBC3hOIMq9kn9/xMHKp/ajgBr5nX5njgRv9yVVAamPnopCYrsldLNAtgL6YLw
 vpMU8i4l8FSw1iqq8SiA34xfKAW7THnyBNFK7A7KPqeXNRkWZs0l++4y0Wl1hheRKUwx
 SBqleY9gNpMJWlJq6cPrRfM+hkiHfIsZWQ7tLZ1v/x4EQG+W0jasgtE3iYmUO5CeL4Od
 +fpZjm7GVao/AvK1aU/hYVBC/W9buW5p024xkY08lutKlTeCowc1nkSLnT49A3c4ddTT
 gsI8NWuoehxOnhMAY9lNrWLNTo2E+hlix1pETI1HIQUiLbuxoXuVU7zvrEvwhGZd1cZl
 Fchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r0iQ9ABbCRaGlGa7IaJxgd/TqqdAiwKA2NxXKG7sbVE=;
 b=zsX9vM4ZAqUFQUn6UP+g+/m8SS4NF1bHPeFRnGCJ68s0Eb3BuL1w7vRKoaGZ5vT3dq
 qDK4MmmahfbX96c+aDyUPHMoyA7qxp4sp3xQCejAL8fCCs7iTRT6ynexFamPMA74M6W3
 6VMjKaYAwP8x5gMFz0xltDVshTzOsOIkgF8dDIIzwPxdQcXp+uQlptPnV7614CHSxfMX
 uqjTzkUmM8icRGGHSPQfYllZRoSAJoaUwWdaBH2du9HBVPJtUZe3q9gHDIUeq1eVfS94
 2j7I3anGQv0B0IvLVUjosEsMwHzwfnijm0tAKvspJUQccsmWTFgtxN2qqB+Dvxa1q+fP
 SviA==
X-Gm-Message-State: AOAM531FaA1XN02S+LqvMYsNlkluJ0wk9zkaJz0yqHgl8F+RfTujLdIY
 BPFv8p5MMxdoaiQc2YXb4PXZ0Xo5uIMESKfz
X-Google-Smtp-Source: ABdhPJxF0S/ltF1J5/ITjpMAtmH7iSTPGztzj+NFLC5A21kN0oqLUNyc2YkvWCHKcfv0840VdVIVaQ==
X-Received: by 2002:a05:620a:2802:b0:69c:3b5a:b264 with SMTP id
 f2-20020a05620a280200b0069c3b5ab264mr1556070qkp.668.1650103507353; 
 Sat, 16 Apr 2022 03:05:07 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n22-20020ac85b56000000b002f1d7a2867dsm4263188qtw.67.2022.04.16.03.05.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 03:05:07 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Date: Sat, 16 Apr 2022 06:05:01 -0400
Message-Id: <20220416100502.627289-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416100502.627289-1-pgwipeout@gmail.com>
References: <20220416100502.627289-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030509_121204_3DF41731 
X-CRM114-Status: GOOD (  10.56  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 55 ++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index ca20d7b91fe5..7408169f2865 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -722,6 +722,61 @@ qos_vop_m1: qos@fe1a8100 {
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
+		msi-map = <0x0 &gic 0x0 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy2 PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		reg = <0x3 0xc0000000 0x0 0x00400000>,
+		      <0x0 0xfe260000 0x0 0x00010000>,
+		      <0x3 0x00000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
+			  0x02000000 0x0 0x02000000 0x3 0x01100000 0x0 0x3ff00000>;
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
