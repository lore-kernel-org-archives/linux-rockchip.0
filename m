Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD60CD4F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 15:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNmxtxHx6TCOcRFhm5D2lYk0hBbdxJBTBbBfrl5jyns=; b=d+RjWV938BqydI
	Bm5DaxTJjMonMj5YbT+A1cVtzz3HO74XYJvm74HQZashmUkBdh46+Zob4ta65LWFkRVux7HWuOLPy
	/Ay7ys16w4PM+Gp1KfYs0RYfcrhFQGM+Nzsf9XzEOloiB9lrVNnPWUkfGRxzr3671Z/M6ufm5XYEs
	f6V71DdUpPXOgguAwr7EOyS3VSD4SqkBYnRSXZxArdeKsf1hgwtM7o/tIVQ0i3TXnuPAx+sW5RRiS
	E/5anPcyY46lsOtCq22ypxUePYAN5Ex03qxUdj2/ix5L9HttG3zCRYQp360tCRnWKtNbmrtwjwwvQ
	FBWiZiqBZm5PeMgiIODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZL-00000007m4d-0q1p;
	Fri, 29 May 2026 15:56:19 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZG-00000007lzQ-1Zhv
	for linux-rockchip@lists.infradead.org;
	Fri, 29 May 2026 15:56:16 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48e6db3ff7eso73289235e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 08:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780070173; x=1780674973; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1A+YljpcvCERY1OoB5p2TF1PX3S8oCba6E+e91fZVo=;
        b=pcM0B49qqLNs7sTqrv+Tzh5niI6du7ZRWnx16SmPjB4/iIxiSVMFHYIf9vqGJZNr3P
         yeW7euI2BZOZhDT9QfqV/QuALzct+czVhQybfW7qSIiaudhfjyr+9ThnYZ+xc/x8h+NS
         tTz+1bdSiNqEVw2qsBm0bzukfTRfx6GR8Eh3vlRwr447OdktGM+ZHSafwGcunYbTKoX2
         hGP3X/DWyBFszx4Bc7ZAkvhbO5V9HRSkxS97ui+u2RNTOuvELPU3KiTWTPlyzEej9pBm
         JtIpidin4ngf0CathICfnktHloUUFb6TU1LYS1mAmBUnDMr4MteK1b7M8QYIdApH1PLl
         M3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780070173; x=1780674973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p1A+YljpcvCERY1OoB5p2TF1PX3S8oCba6E+e91fZVo=;
        b=AzzEv7n/HaioNSfUuOkbXx5TT0NWrLoz/vOWTMCxtlBfAjcEYViBSqT+qVhVsE01i8
         fv4XoE5fR/9k9u1YrfLcN3QleIRDbfsQEDMriist4vtmyThh0eRnXd/6LC+4BzxykIvh
         Dwpwccq1hRaaXjruy85d8mV/epujz2R/ncjBy8FUXjEpGUPSQ3GMhnkMyro+hrJyAIPc
         iEOcEmvltUhF1ZwEVVFax/kQ7Kfi8U5L39mM/y9rv98tg2fxhcl6teUGQjXuIbR43abF
         vg2pM7Nt1Bl090Hxx8bCqDZ9yO/1JNzSe2QnibrOZD0rE1tADmeZpaRnc1SXRpPZM7KS
         omEQ==
X-Forwarded-Encrypted: i=1; AFNElJ+fWUYGGTmT6PHNADnF1hP6I9E0fy5cH6/czPIv5D35z8619z3yIc0V+WjVyrFIpb+FDCKkJUea5qACpYUmVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwawD7gJAVa5ITLONQ3MK9k3suIoikSq6M3xBluqr41GEMAoJLf
	/owlNYM2G/UvtWozjeA6ztDKDmdwmdRnB628LD7gCTfIQ6pJD1oM4yr6
X-Gm-Gg: Acq92OHb8Jq6/4Ny15jSXREoyaW3+Wbj14qjDyYknfASy6cFekbwIMNoysrh9rtoign
	0jTZaCG7JDButQLbP2W2g6urT4Ppkmmr0YC7mLvQ680oBMbezzw3BCgoj8DZMLMW3AUGf+x7lFX
	xwA0FXzYuIXw0BYZAXVraFWSKD8J1ruWpN/l5Mt+lfNWOp+N0Znrcq3hi/6wsOBr1cSshZcKMwn
	J03XpFg1ILvZIoB0YCTw6KRTLEQjowQF8bwLWEf6hlAqBREG1ozQEy8mWLmrQ/Sbuz3WGuOmbPF
	tSdrtm5QAAtbjSJf2j74JjcEfGoyDXw1hbnW2o+JpT0IGWxWPpbshUeYe1ZTu6ANSPzd6UGr5RP
	FoTNoHzpDOFF6mKwVO7phq5LuJfeU30H/NeTpFp01YIcLF15i2qZiUgcYi/ASUqGO0PfuFYnLIO
	ND6BQJnS7lBQM4GxJV0Fz4qqF9EjYyFMNiYkVrHYl/43AEG3w0dwJdZOJArp1j7dV3YQcdTw8/o
	h36Jh+n0MViMmzmXplxcJQLDoukdJHCOxTgB4Sq
X-Received: by 2002:a05:600c:4703:b0:490:9d1b:f086 with SMTP id 5b1f17b1804b1-490a2915c45mr3835355e9.14.1780070172686;
        Fri, 29 May 2026 08:56:12 -0700 (PDT)
Received: from debian.tailb81abf.ts.net (2a01cb09e0354cc878d00097536575e1.ipv6.abo.wanadoo.fr. [2a01:cb09:e035:4cc8:78d0:97:5365:75e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909cabfd6esm55150315e9.15.2026.05.29.08.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 08:56:12 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: rk356x: Add NPU and its IOMMU
Date: Fri, 29 May 2026 17:58:23 +0200
Message-Id: <20260529155824.3099831-4-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260529155824.3099831-1-midgy971@gmail.com>
References: <20260529155824.3099831-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_085614_430856_98C2F4EE 
X-CRM114-Status: UNSURE (   8.86  )
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

From: Midgy BALON <midgy971@gmail.com>

Add the RKNN core 0 and its IOMMU to the RK3568 SoC dtsi, mirroring
the RK3588 pattern in rk3588-base.dtsi but with rk3568-specific clocks,
resets, power domain, and a rockchip,pmu phandle required for the NPU
NOC bus de-idle sequence.

Both nodes remain disabled by default; boards enable them as needed.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 8893b7b6c..2c2a57ea3 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -929,6 +929,37 @@ qos_rga_wr: qos@fe158300 {
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
