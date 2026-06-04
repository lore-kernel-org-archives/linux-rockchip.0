Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F336CCD6E7E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fn/PwAlL4KlSosoe3fIMn2n1bwaEbBhtDF0StZUASRo=; b=3AXS4gtpeubjtj
	OqGGAGT4DA1afRVOjrP4BdnwSIp27CdN7NKNr0e9yZwYEjXuO57PPs+fDP3zAvYnqqrHNFIHBp6hE
	r4dpaDwFO/7y0ioC5PFQDNaWwli81DlQQBLKXjtOPd2KwcQI8267jYLcUCA1pTKnQ6bNOe875rBGu
	ZjgndxHfIxpvPsD8ARxAQiNVFaL7gNNYLguSEUrtiHUOT5OPcmsgru/xjA3TrlWsLCjfZhoM3Fu56
	gQJn1X0gzeiHpaFxoJHwRAaVyb/Uh4pAPvYrZBK/YUB8P1MnqLJNtWwnyz59y9ITa5MgJ8KLcbVwV
	0oEEdC4sSalD56u6RbsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VQ-0000000GprJ-3uQU;
	Thu, 04 Jun 2026 13:53:08 +0000
Received: from mail-wr1-f47.google.com ([209.85.221.47])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VN-0000000GpkI-49ik
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:07 +0000
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-45eecb8bf67so581010f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581184; x=1781185984; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Y0cyJs3YzhZbMhMCeS+YcB/ZC7ibeA7FwgxaOl6j4E=;
        b=T6hwvhMkHh+vo4M+wzbKP4PlhYxWXg73emhL3ONx2uZsBzJStZufO/kF1HcHF9nnOd
         uDeZN5IjuekVDnVFxH29O2AMEfShvKPQGhwqRU/ypT6LsyG+eH1OlEE/7hQWTAE9kYEy
         cEjNtHEKAjV5Fem0SkAiUCEmOfWDXHqg1Y9kavRUSax0CaN/ZPVaWqGgQIEd9lgoIWmD
         JzKOQLj2a4FOcSuazHS4Aa8VP+HlAX5FEMWFrQHBlXEcIVz9e9ruDoySDxwWSzEdWKHU
         vAnDC5dwpXKk8SXohZPhKmJGZ5MVCyoPW566/ViHtyeqiy7dF3JRh20W2SycUkQFXDpQ
         NVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581184; x=1781185984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6Y0cyJs3YzhZbMhMCeS+YcB/ZC7ibeA7FwgxaOl6j4E=;
        b=SAciPBd5vawOQCaxcYI22zw86WkaC9B7AWIsePTCYPh5IaNiJRCG6W4dA8E+E43cjF
         RbhXXm4seyVoApGpM+YhIMdHFZOq4Mv1UFflj2CIDXcXUyTxrDKcZkMjvfFg3qXRdwlA
         OkjihLXLg+iauBJDgiNvri/kpj/7eXTFh2MxRR4aNRhHC+sHnDhkIl/TW876LJu+DtSn
         BqlcqrcbCqGJxkFKfhj9/k2YVmUxU8OX3U6g5d6/OAZOGvrVkOzy9X3pb5PQ/xMPbjfn
         UL7ZogovZIanGHCIs27PMR0LrjHkFkR8XQ7gXK51Kxs6AEDJyQsi4xtc4srNgUjuR+gd
         OR2Q==
X-Forwarded-Encrypted: i=1; AFNElJ+I83/oV4d3lqMhGZtqPBxFJZeFSeW8dd5oBpSFtx6sxzOdIELaYe5wVQyP5RgI0WxtdMNVjXvawC27K0VLZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YylYoOCw4lzUZSk/irZEGqfSRLx2sALkubl/4TBPF78S649yAb0
	QronGUvT3J/kzWtEbm+WRyYZ+yVsPry5uagCIMCYFTP3OPjdMztND8k+
X-Gm-Gg: Acq92OFvupOtz8aCrQHuAovhDTz1lVcGGwGCmNoA7ZP/zR0pytsyAZ0b2uKVY6kOo1s
	ARSo/lZVPnqxKlMBuCN4rqkewKBu9PXFcriU+FXadfVOrGzop1GFVHguX04HaLVdl+/JYmjbfUh
	U9q9ESZUmJ8pNd2lIVBz84HpRPMWqlNl5S5jub53z+bAf+EeaazF9IhXzrtyJ3rHzUcr76f8rFd
	6yRmYnuYYytosnR2dghpOPTOA3wbESQPyRsEq4Lsijhe3Kqe+HgokYGQ8UL537gnsITeyYnevVd
	rdceY+cX2+K5hn43IiyflZoVkmHcfS8nyHXJ421c92U19addMcWmVEjDfpOEH+IutMgdppmwtue
	d8frEkVCyzCdudAlEXuHkJMl9CqyfNNYh03biIH6LlaQMlz0FoMQ/gCLAuKm7qGAPnpwrfJalS8
	CqX7g9cS4/ARSJQru3NEqSy3rexWvppB6VfgfFvSkiXz3qRgcJKsc3kkYVMUufYLc=
X-Received: by 2002:adf:fc48:0:b0:446:96b1:f53 with SMTP id ffacd0b85a97d-46021844e6emr9463717f8f.26.1780581183713;
        Thu, 04 Jun 2026 06:53:03 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:03 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 8/9] arm64: dts: rockchip: rk356x: Add the NPU and its IOMMU
Date: Thu,  4 Jun 2026 13:52:54 +0000
Message-Id: <20260604135255.62682-9-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_065306_058097_E6417384 
X-CRM114-Status: UNSURE (   9.33  )
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

The RK3568 has an NVDLA-derived NPU at fde40000 with its own IOMMU at
fde4b000. Add both nodes (disabled by default) and the NPU power-domain
child under the PMU power-controller, and point rockchip,pmu at the PMU
syscon that controls the NPU NoC bus-idle.

The power-domain deliberately carries no pm_qos: qos_npu sits behind the
NPU NoC, which is gated until the NPU is brought up, so a genpd power-off
QoS save would fault reading it.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 64bdd8b7754b5..50ce5a5e4fc24 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -512,6 +512,13 @@ power-domain@RK3568_PD_GPU {
 				#power-domain-cells = <0>;
 			};
 
+			pd_npu: power-domain@RK3568_PD_NPU {
+				reg = <RK3568_PD_NPU>;
+				clocks = <&cru ACLK_NPU_PRE>,
+					 <&cru HCLK_NPU_PRE>;
+				#power-domain-cells = <0>;
+			};
+
 			/* These power domains are grouped by VD_LOGIC */
 			power-domain@RK3568_PD_VI {
 				reg = <RK3568_PD_VI>;
@@ -948,6 +955,37 @@ qos_rga_wr: qos@fe158300 {
 		reg = <0x0 0xfe158300 0x0 0x20>;
 	};
 
+	rknn_core_0: npu@fde40000 {
+		compatible = "rockchip,rk3568-rknn-core";
+		reg = <0x0 0xfde40000 0x0 0x1000>,
+		      <0x0 0xfde41000 0x0 0x1000>,
+		      <0x0 0xfde43000 0x0 0x1000>;
+		reg-names = "pc", "cna", "core";
+		interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_NPU>, <&cru HCLK_NPU>,
+			 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_PRE>;
+		clock-names = "aclk", "hclk", "npu", "pclk";
+		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
+		assigned-clock-rates = <200000000>;
+		resets = <&cru SRST_A_NPU>, <&cru SRST_H_NPU>;
+		reset-names = "srst_a", "srst_h";
+		power-domains = <&power RK3568_PD_NPU>;
+		rockchip,pmu = <&pmu>;
+		iommus = <&rknn_mmu_0>;
+		status = "disabled";
+	};
+
+	rknn_mmu_0: iommu@fde4b000 {
+		compatible = "rockchip,iommu";
+		reg = <0x0 0xfde4b000 0x0 0x40>;
+		interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_NPU>, <&cru HCLK_NPU>;
+		power-domains = <&power RK3568_PD_NPU>;
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
 	qos_npu: qos@fe180000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe180000 0x0 0x20>;
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
