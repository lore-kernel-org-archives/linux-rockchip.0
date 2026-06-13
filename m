Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B2EDCD98DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Itd0g1iJnOUgeMjQBgnUjQKfrzycpU+NNfDVls1LHkA=; b=IV9IxgX8/0Drx4
	nyfHfH6/8mmH6wHZXhXfUXaOsP001iJjoohJoT+rip+wrTBK9QsEvPesIwkULm4v9iMDRFun0eZEI
	Qh71MhgVNGcF9yp2eSLTPYfkD3ZS+5/6d4+cEOZwb9GZLSF+Zyi14TJR047wNteZlkJuMvkiNEL4T
	wumckkT+B5onDk2/3p9PhJj6YM8A5TsEeeIgKNXeVo3sR1CK4vKKHD3vRJ3TE5qkq7RFlFEiLC3yN
	1wVeRnlnEEuEVsO+BKAOM3PM1gFk5rRFnlhScK5GhgDQ4x7AlxfLMhEgGzihRG8dk1/gRNqovnhC1
	KOyCN/dgOXIssBFwJohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKX-0000000C1Hb-39RX;
	Sat, 13 Jun 2026 06:58:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKI-0000000C0wq-1e7y
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:47 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-491609cdd8fso7679975e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333921; x=1781938721; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ExjVQvO4/iWqbTjsUJjExpq/Pad0yGuPxgZEv8g/Xlo=;
        b=ZdJfMidXKu9CD+KNjREK5N96tRtjEC3UmS/eewvIUpgnw0oxb0W5guj3HHysqUJUaI
         wpEBmYrjCkdJNJJCkXZUFklFXi2eGF+glkKhy6iTr38Y2JscsptZk0AG+QuRyDEORCpk
         HJB6ThVPqrx+QDAyrEbrQtIWU8SLN16HfEYlVFPqk2c0M8hwyir9kPE46I4TievP6jZo
         6vhuOO19yj0YjZIBU2t9aJuWQt6N2Zxq1oYvrVpSi6ngEW6oVav1HykQPtvEEqwd+8DN
         QY02wcXOu5GOdqoH8r0D8m22gTLCGq+xPn944nyX1PoDcP5QPaCyUFlta4r12LzF8Kas
         S0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333921; x=1781938721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ExjVQvO4/iWqbTjsUJjExpq/Pad0yGuPxgZEv8g/Xlo=;
        b=a7LmLNhbCwAa2qs5/yd/n0adH2YbqjjIgv+56d9nudcdmcpcLQf5BSqpSz+go9F+ON
         r/GE5ntGBcNpsjeeyhk+T+KoW7nLLk8+QmNZG9nGgTJrUlN78nHXEFci1feHz2PdTxac
         OLKHMs3BGYXxC4A7t16pfq5eeG44SrCXSZ0Hlz0pPFh0D0wD57K+x/5ZmWFaJegsT+oK
         zX61Y43GY1aedwjKxz4xh4vkj/jkUeBrgb9Zx2UaVGeV1419zYb70KLWqiTI3/vKsRMz
         YVAqyZ+x/ONI4qg7URmI4axNNkbjrqEibVzavk83LgyMy5WF7HbfZgHSOWrdG7r2z5Uk
         8puQ==
X-Forwarded-Encrypted: i=1; AFNElJ9cYgyTj0xSHGd+0NE3RvVRQBqrNFrKzkbb150GDHWOR8lHSJaiQlwIC7TyDEfbzFzJAL6mrxmO9vTLlzlmag==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUtNGFcdASYiL8EP5Lnirif71FgquiaMKnQlWcELniFu58kKe8
	e5K3JfU8YV1iLYxEhhd9JlCBkMQoo5aGYfMTCpt6/Vc+rK2oAn2aAEV2
X-Gm-Gg: Acq92OGW2K1Br5giFaDtjYChPRhoM+oDrcYVBS8FXsgeuAEfmKj4ITizrGCB4kWS63B
	52Kipw5iKXJaWYw5iz2vEIJNMtHWgoGf3SeyVvWurUT87TIWT1AlsUC5s8Q/UumIB8p9eopy8Ta
	RHHtvt0fzRFsZSCDwcPpErwK7YA0QECJw3218q60EGt6EHj7aF6nsjhU6RLWRVTSrR4opkOS6SW
	h1EZrZX0n5Egh7ka0t7Q2wJkJN4LYcBnmr5RBtCFVnX3l/i+F9HE49JsmiGdaPcAPn9G0vCfL/g
	dBxRadbpgIVK90pTO9ey40+CuzgCSv3KM3mZter/r6pcbpXW6RcyXRmnfYX0nIMzy22QL6rg1jT
	FaBiVfb57iyIJdQs7H7AvxbdggbEqXLspumyU/JRepy6INBGaJsB+LEu2ZVs848FmibECrhY4XI
	fmeJQo9vIpst9ofnvbIfQYTKf1X9eLVaDTIr0ABX56bQ==
X-Received: by 2002:a05:600c:a47:b0:490:52c0:744c with SMTP id 5b1f17b1804b1-490ec4ee63cmr73748795e9.20.1781333920798;
        Fri, 12 Jun 2026 23:58:40 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:40 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 7/9] arm64: dts: rockchip: rk356x: Add the NPU and its IOMMU
Date: Sat, 13 Jun 2026 09:01:14 +0200
Message-Id: <20260613070116.438906-8-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235842_456485_8C8B9964 
X-CRM114-Status: UNSURE (   9.88  )
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

The RK3568 has an NVDLA-derived NPU at fde40000 with its own IOMMU at
fde4b000. Add both nodes (disabled by default) and the NPU power-domain
child under the PMU power-controller, and point rockchip,pmu at the PMU
syscon that controls the NPU NoC bus-idle.

Besides the SCMI compute clock, assign the CRU CLK_NPU so the NPU AXI
bus clock comes up at 200 MHz rather than the 12 MHz boot default.

The power-domain deliberately carries no pm_qos: qos_npu sits behind the
NPU NoC, which is gated until the NPU is brought up, so a genpd power-off
QoS save would fault reading it.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 64bdd8b7754b5..313db59c1aed8 100644
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
@@ -572,6 +579,37 @@ power-domain@RK3568_PD_RKVENC {
 		};
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
+		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>, <&cru CLK_NPU>;
+		assigned-clock-rates = <200000000>, <600000000>;
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
 	gpu: gpu@fde60000 {
 		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
 		reg = <0x0 0xfde60000 0x0 0x4000>;
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
