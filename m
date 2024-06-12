Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5C2C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwHt5ySF6VQHABRYrOdo6hH7G+JA6IybvfY0oin+D0o=; b=sP7WmEEIdM73NY
	7YgN54qx8Q75Qk6fBQfnsbUio4FTSLN1wf98rbRxqi73IPsAzMikziGMtIhm54yFI1/6KtndYP4mK
	pCCytnkt2uebE+CgTSjKvmIyCWyAFmnWg+fO4Var6IG9fbyWOl/rwr5BUvyxrUMhb4GG0rEFzklVq
	OBL6Mn/nG2o+sx57bs3db9dCOz4448B3cITIpfDNkiAmSWxQYmS/De8MEjQpTIBIftbZqTBbC9JDc
	IDVcARRlPWo+6gceV3fCKZnJjmxi8ehJFsEFvXfACHcrDm5wSB0jnghOHLF9ctm7DcrJ1RzAei67J
	PjrFKSfRWOMzUsTPen7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOQ4-0000000CoxK-3323;
	Wed, 12 Jun 2024 13:53:44 +0000
Received: from mail-lf1-f41.google.com ([209.85.167.41])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPZ-0000000CoXS-2YNp;
	Wed, 12 Jun 2024 13:53:14 +0000
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52c8ddc2b29so2837791e87.3;
        Wed, 12 Jun 2024 06:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200391; x=1718805191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vg0+/XjLA9DMNjh74DM615g/08bNgkZOcZb3JbFI57w=;
        b=ryz4Ka/Lf9PuemD4h2p9lk37rMf3p4H7aox3wE/GfbKOcZBfBOnCgK65gjEeZQve33
         5ojEE94cbBvFDR/yt+p4CQtvD5Bz1LZ25fNGbZN2a6Hrp2Cd1S9nx+POKpGL2P5aDU/L
         FOxC3uSxOG2ipj/EgvLg1MzjwkjaNkO1+5XKQ43dt79JotG6ViILB97bC3pSAt4xMCxe
         eF1yWRaYnGqcC+zM/9rPdYz5pkDZIdR+W4p7KtNdqMgEiNNg5LhGEJJAhFzlSugG67G0
         hnuCD6WD44cVFpv3Ruq4wJ++fa+Ci6nlPGLkA0iCoDBBCTvqo2X9nDzuinEmu+CL5uJs
         Mbrw==
X-Forwarded-Encrypted: i=1; AJvYcCWAtlY8E3jcGeliKTjlWi0N+HKziKHb5QTu1F1SguGmP6EQ8S0QBO02IHS6FMqrPMXbYTHLIAvZh0MGx0Orma2Bt1CvcACJd4IFOR4889wiUz86ZWJ+OKh202FBcf9NbbFQKn9IgZUMvoVfmZvFOdNLE+YZf36jSVc=
X-Gm-Message-State: AOJu0YzHwl95poZ/vxmxNCYqGJ366CsvF6ksIGazC6T63AfDGjfDFcSZ
	/7JcirbSwtUNNZBHHY/kzuKrwtJoidYSFI55pG3SqWNstNM1uVOl
X-Google-Smtp-Source: AGHT+IFb5KiASexlYfqJGzCdUiz4DDkx8C0TVnq0cahH+zxyS5x49RXEnxhGffyDz+kuMTXlB2fIdQ==
X-Received: by 2002:a05:6512:1391:b0:52c:82c7:bdff with SMTP id 2adb3069b0e04-52c9a3b963bmr1947827e87.13.1718200391086;
        Wed, 12 Jun 2024 06:53:11 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:10 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:52:57 +0200
Subject: [PATCH 4/9] arm64: dts: rockchip: Add nodes for NPU and its MMU to
 rk3588s
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-4-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065313_721477_F977A8F6 
X-CRM114-Status: UNSURE (   9.68  )
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

See Chapter 36 "RKNN" from the RK3588 TRM (Part 1).

This is a derivative of NVIDIA's NVDLA, but with its own front-end
processor.

Mostly taken from downstream.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 53 +++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48ab..a5d53578c8f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2665,6 +2665,59 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	rknn: npu@fdab0000 {
+		compatible = "rockchip,rk3588-rknn", "rockchip,rknn";
+		reg = <0x0 0xfdab0000 0x0 0x9000>,
+		      <0x0 0xfdac0000 0x0 0x9000>,
+		      <0x0 0xfdad0000 0x0 0x9000>;
+		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "npu0_irq", "npu1_irq", "npu2_irq";
+		clocks = <&scmi_clk SCMI_CLK_NPU>, <&cru ACLK_NPU0>,
+			 <&cru ACLK_NPU1>, <&cru ACLK_NPU2>,
+			 <&cru HCLK_NPU0>, <&cru HCLK_NPU1>,
+			 <&cru HCLK_NPU2>, <&cru PCLK_NPU_ROOT>;
+		clock-names = "clk_npu",
+			      "aclk0", "aclk1", "aclk2",
+			      "hclk0", "hclk1", "hclk2",
+			      "pclk";
+		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
+		assigned-clock-rates = <200000000>;
+		resets = <&cru SRST_A_RKNN0>, <&cru SRST_A_RKNN1>, <&cru SRST_A_RKNN2>,
+			 <&cru SRST_H_RKNN0>, <&cru SRST_H_RKNN1>, <&cru SRST_H_RKNN2>;
+		reset-names = "srst_a0", "srst_a1", "srst_a2",
+			      "srst_h0", "srst_h1", "srst_h2";
+		power-domains = <&power RK3588_PD_NPUTOP>,
+				<&power RK3588_PD_NPU1>,
+				<&power RK3588_PD_NPU2>;
+		power-domain-names = "npu0", "npu1", "npu2";
+		iommus = <&rknn_mmu>;
+		status = "disabled";
+	};
+
+	rknn_mmu: iommu@fdab9000 {
+		compatible = "rockchip,rk3588-iommu";
+		reg = <0x0 0xfdab9000 0x0 0x100>,
+		      <0x0 0xfdaba000 0x0 0x100>,
+		      <0x0 0xfdaca000 0x0 0x100>,
+		      <0x0 0xfdada000 0x0 0x100>;
+		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "npu0_mmu", "npu1_mmu", "npu2_mmu";
+		clocks = <&cru ACLK_NPU0>, <&cru ACLK_NPU1>, <&cru ACLK_NPU2>,
+			 <&cru HCLK_NPU0>, <&cru HCLK_NPU1>, <&cru HCLK_NPU2>;
+		clock-names = "aclk0", "aclk1", "aclk2",
+			      "iface0", "iface1", "iface2";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_NPUTOP>,
+				<&power RK3588_PD_NPU1>,
+				<&power RK3588_PD_NPU2>;
+		power-domain-names = "npu0", "npu1", "npu2";
+		status = "disabled";
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
