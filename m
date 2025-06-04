Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5EE1C5B552
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 08:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mpbx4PHuJFQo71B/bu4ZtBCVfwXBEF8yTpCPq5ja3Q=; b=PQqyAp61iQg6l7
	0zPSh05i1fizDdAdyGlsDIC10eWrlMgT2nIMzP/gDs2eF34yyXWPpKR9+Syus/8cVf5LUTLeEGnji
	P5alDWk09cE/efH81c5sMd+HihYvnyxtozBFupu/M0r18L59NnTa05uptT6rxdudxgVP19aL+r5RA
	SCPqmS07A+4ztVQeVqUoBUl6P/QsAQ1dx50s1I1eUV5juRwJh4w7Hyi57FwA+QhB0A+rnjLzZjCUo
	uMDThKzl5/6HWLZWXRd8oVHlPAz3TgjLu4AJTkdgfQDnVSpqIpxDCPSJGhsFoDW8Xyl2L6pkzCM+A
	J9W1LjIC5bPXKfLoyLYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMj6L-0000000Cpvp-1xbM;
	Wed, 04 Jun 2025 08:03:57 +0000
Received: from mail-ed1-f54.google.com ([209.85.208.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMj03-0000000CoT7-46lP;
	Wed, 04 Jun 2025 07:57:29 +0000
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6020ff8d35dso1414225a12.0;
        Wed, 04 Jun 2025 00:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749023846; x=1749628646;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQzfLXEfpbapvcsaMd2hvFRTuIy+/DFb42ELFIxVYOM=;
        b=InAAuPmYQDdem8oY28ujUqcNopmHUMsXTdDqXkJzgvY8sIhc2jod+gmvLFU+LVLp5T
         DWPjGwgFJHn01NP+F/j3i23C6B/Px9Jk+JfGsszJ9ES1oBd1AAsx+qAOio/pVDIhlr9B
         1v31jidYUKJkuUVAibfYvFC/3mXZhIozFy95m7Ps5cjyi5d6OIX+RC5SO2KmjdONoKp8
         VoogEJe2V0LRfeyq4oQd/RKwymfz30/GZ1bSht7gDp7rAVWxw7Y6Vyk3uX72VQzShUpQ
         y98JrUnQJxkeynesoFdF3tvbQqM8T1quH/eBcZ/e/G5D7chFtEpLN1F87bYwkzGjp/qX
         8TEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVL6u2oyF2lYLbIyua7wXF1COw2mfOhkj2RSjyNhjFV79wSmIe2yflqTuEyatQMFc+vLAwu21A7wmTBlTnerQ=@lists.infradead.org, AJvYcCVyidIrljf07wIwT2vW2d6VdEJbNlSP/oTFmJENwBILGeOmxuH8fL08ZgkQFDXd3CLlq3ZZjVWFIPCrT4c5ba0m@lists.infradead.org
X-Gm-Message-State: AOJu0YwbXiIsL9cXhSgyQ4keRZ1BAPlrAcE16QoSona5h49ZJ5zzLVQi
	YWUNwqeXT8c1ZL4/tehnWJwqlAp9GLhJQMyI0tEKWXCpqcPRNS9+K0ThLWwg3aAy
X-Gm-Gg: ASbGncugINJePyiwdZtlVYnYZ09HLoXuYpGIZ4yP+MQyAn2GUersR2kAb0wFISZZV/4
	zyy1atbi8WfmXb94hqXlgkbx9pFZEOz3eMUK2bN0AfPYWEWspc8CE+zk9IISgKe7CDwJkxBYP7U
	nu+Se0QMFFO25IRyXzRnSJwhuXnWogJnx5kSD9nrOc0mUEHyFfLMDI1HQzkY6neWwQOhpXbgaUU
	VCvOgeb34uIP49EdqxmCn3gKn6J8FOhApJtDtibN8gkLzNCCPl4KKcGbFD5GjW+91cQ//jyTW4I
	aXkMEd8xaQxKkxner5rAUqmlektql/ORvRjNmhklJPEHyHWVqJ9iWrfwjCLklvpCcqocWhYcvA6
	W94sgZjW4eHNIOciJ++us
X-Google-Smtp-Source: AGHT+IFEUDTz53sxvAofcuKFOGy4nng0s/ToNEAoojwwDcQ8tyCCPINrPylxjfzw9wWTMYeDei00rQ==
X-Received: by 2002:a05:6402:5244:b0:607:35d:9fb4 with SMTP id 4fb4d7f45d1cf-607035da435mr341355a12.15.1749023846309;
        Wed, 04 Jun 2025 00:57:26 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-606fb36a160sm348569a12.45.2025.06.04.00.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 00:57:25 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 04 Jun 2025 09:57:15 +0200
Subject: [PATCH v6 02/10] arm64: dts: rockchip: Add nodes for NPU and its
 MMU to rk3588-base
MIME-Version: 1.0
Message-Id: <20250604-6-10-rocket-v6-2-237ac75ddb5e@tomeuvizoso.net>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
In-Reply-To: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_005728_027421_359FCF0D 
X-CRM114-Status: GOOD (  12.93  )
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

The IP is divided in three cores, programmed independently. The first
core though is special, requiring to be powered on before any of the
others can be used.

The IOMMU of the first core is also special in that it has two subunits
(read/write?) that need to be programmed in sync.

v2:
- Have one device for each NPU core (Sebastian Reichel)
- Have one device for each IOMMU (Sebastian Reichel)
- Correctly sort nodes (Diederik de Haas)
- Add rockchip,iommu compatible to IOMMU nodes (Sebastian Reichel)

v3:
- Adapt to a split of the register block in the DT bindings (Nicolas
  Frattaroli)

v4:
- Adapt to changes in bindings

v6:
- pclk and npu clocks are needed by all clocks (Rob Herring)

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 87 +++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 1e18ad93ba0ebdad31642b88ff0f90ef4e8dc76f..ea831bb6e2ccc64c811f885a4964da7617c255d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1136,6 +1136,93 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	rknn_core_top: npu@fdab0000 {
+		compatible = "rockchip,rk3588-rknn-core-top";
+		reg = <0x0 0xfdab0000 0x0 0x1000>,
+		      <0x0 0xfdab1000 0x0 0x1000>,
+		      <0x0 0xfdab3000 0x0 0x1000>;
+		reg-names = "pc", "cna", "core";
+		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU0>, <&cru HCLK_NPU0>,
+			 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
+		clock-names = "aclk", "hclk", "npu", "pclk";
+		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
+		assigned-clock-rates = <200000000>;
+		resets = <&cru SRST_A_RKNN0>, <&cru SRST_H_RKNN0>;
+		reset-names = "srst_a", "srst_h";
+		power-domains = <&power RK3588_PD_NPUTOP>;
+		iommus = <&rknn_mmu_top>;
+		status = "disabled";
+	};
+
+	rknn_mmu_top: iommu@fdab9000 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdab9000 0x0 0x100>,
+		      <0x0 0xfdaba000 0x0 0x100>;
+		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU0>, <&cru HCLK_NPU0>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_NPUTOP>;
+		status = "disabled";
+	};
+
+	rknn_core_1: npu@fdac0000 {
+		compatible = "rockchip,rk3588-rknn-core";
+		reg = <0x0 0xfdac0000 0x0 0x1000>,
+		      <0x0 0xfdac1000 0x0 0x1000>,
+		      <0x0 0xfdac3000 0x0 0x1000>;
+		reg-names = "pc", "cna", "core";
+		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU1>, <&cru HCLK_NPU1>,
+			 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
+		clock-names = "aclk", "hclk", "npu", "pclk";
+		resets = <&cru SRST_A_RKNN1>, <&cru SRST_H_RKNN1>;
+		reset-names = "srst_a", "srst_h";
+		power-domains = <&power RK3588_PD_NPU1>;
+		iommus = <&rknn_mmu_1>;
+		status = "disabled";
+	};
+
+	rknn_mmu_1: iommu@fdac9000 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdaca000 0x0 0x100>;
+		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU1>, <&cru HCLK_NPU1>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_NPU1>;
+		status = "disabled";
+	};
+
+	rknn_core_2: npu@fdad0000 {
+		compatible = "rockchip,rk3588-rknn-core";
+		reg = <0x0 0xfdad0000 0x0 0x1000>,
+		      <0x0 0xfdad1000 0x0 0x1000>,
+		      <0x0 0xfdad3000 0x0 0x1000>;
+		reg-names = "pc", "cna", "core";
+		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU2>, <&cru HCLK_NPU2>,
+			 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
+		clock-names = "aclk", "hclk", "npu", "pclk";
+		resets = <&cru SRST_A_RKNN2>, <&cru SRST_H_RKNN2>;
+		reset-names = "srst_a", "srst_h";
+		power-domains = <&power RK3588_PD_NPU2>;
+		iommus = <&rknn_mmu_2>;
+		status = "disabled";
+	};
+
+	rknn_mmu_2: iommu@fdad9000 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdada000 0x0 0x100>;
+		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_NPU2>, <&cru HCLK_NPU2>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_NPU2>;
+		status = "disabled";
+	};
+
 	vpu121: video-codec@fdb50000 {
 		compatible = "rockchip,rk3588-vpu121", "rockchip,rk3568-vpu";
 		reg = <0x0 0xfdb50000 0x0 0x800>;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
