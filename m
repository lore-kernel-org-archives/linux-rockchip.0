Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 674A8C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 11:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d31ctXlyvyuvY3/Fg1UuP6S8c9TpRTb6XWn6Aje9OZc=; b=ilRUZYZaAI6c8n
	Zo3otb7ej1cg9uwYUmxIz7dhWM58Fc4a72u3k6aEe6c7e4TSfiWtnZ9YCCogiBQ9Av72LjBoKAtu7
	F8pze7plcSd0wV0zvMJZhZFVbqhfz24hJcJgQ9sUs/3JCdAUU6sJIMgMqdKRctqiwR0JvfUqQlR6v
	ExAISJzuytqyNBIlmxLvVuyzWAC1BLOAlfi7jacpk8Mh1lFJ8ixACs/aAeD4QjTIN4qm9eaZocWKJ
	5FjnJ6JqmSdlKG17tG3bDgg2ZSpdS//GXj4fOTpTCKPm89wh7ieLJnmJ7soJGA2dcWrEozuFkkBvP
	0SevBP4UHPkTxXE86Beg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6RmR-00000006KdE-0cgO;
	Tue, 15 Sep 2026 11:56:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6RmM-00000006Kax-2Dtd
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 11:56:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=MSObQBHAPu0fXn6/uVS83Vw2xOwdtVTcMmwcpXwTo+g=; b=irVnja73x4YrfE/ViAMRtvsk3h
	qAsdGVc7CQbFbIWSWo7f/ASLvF0UCjWt4UCTqNOCH1FdgsUyb6NQO4AfHbC4jD0WbKzNxKp5pRtl6
	hTjFLqqTJURS5bkUBKMBDKUY7aCgEcwrEUVfGQNor6BRtGqiG+6tqivR5Bq7iCtBLdiVD2k6+pPBR
	0o2A92eJQM7FBuFqcmVtFg2MKnxrYqLu6Qd3x+orNH2Gz2/l3Ml2vmmtQLPC2U3pr9xOdHdZKo0JL
	o3GTzlmpvLDxDIfrX2yWsrOlJYiiacbk8OdKIXX9aQUVRnIY5qvEZeNGmhYXECJNXXe6UYrKN2omV
	rkIMUxGg==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6RmJ-00000006gis-3QWa
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 11:56:49 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e64ccso20962405e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 04:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789473407; x=1790078207; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MSObQBHAPu0fXn6/uVS83Vw2xOwdtVTcMmwcpXwTo+g=;
        b=NZ2uHWw2nOBTYEfxtYFy1Iga94XHwKHXjqpvuzpbEj7Egr9IsU4V0XCq/X4uSzycLZ
         gV5bQeCDmeS+7JvqH4qrxQ5boAsxyHsdfFzjl+AytP/3c+prAb6kI8R5NPsz20ZWf+Ti
         HHOEn7FDUqx3qhX2YrmR8lJPMrb3zHt0DSwknkUF35D4w/OghLcIKLsjROBhtFiCpjN/
         BLl/JU0kPRk5rDY8x9R16ouN4cg53XGnM32iAjxqXkptuKvUcdlfCUiV+i9om04fLGc4
         kyXElPQnvP0enu4MsdIK1q46DroowbaIExdqaMJgbbXWDjgGqRirYtdiVMzY41DzZkBa
         X8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789473407; x=1790078207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MSObQBHAPu0fXn6/uVS83Vw2xOwdtVTcMmwcpXwTo+g=;
        b=xe4Tl7bLpJfzf4qs0Bof9+l8tHcvs7yHXxeWPjs9TomN1FvEgbDFko1XSpRGwquYQd
         MaOZuTBk/dzLX5i1xm+B7o1TqAO7yWkcMTVIzOxGB8dzFjR8EKtBlEiqKsMwIHFIPI7f
         NLOa16atXRxGzTdxX6JvvtS/ROtYDhpSXVjASeUE61F2/pnj96OzLdgU4B8lNITrTxVK
         j4HTMNAuoSlnfZdWzXO6yvBX3RAXz+VklJovlsNYE+Qt7+XjMzzqu27dEkTLdjeTBkup
         Opxwdy93eSFpbglRc35qjvauLqrHdsY50oXx37YTC7SGlU+soLz+tBLc4FWah/+LtJWS
         82Og==
X-Forwarded-Encrypted: i=1; AKwUvBzgYEdYPJnT/a8oigaeuk3lv52mJvTyxVcIS3PXtt4M4AiAQUC+p3AE6nDjPY8SZT7I0iQcSlzsW35lSuxYrA==@lists.infradead.org
X-Gm-Message-State: AFuF++lKVRuqMI1Xisqu7zbw/XU+BHV18xVQHvMk1R/oekOQ2gVkxLa8
	ZDfncWmavUrpOKgnHa/zzzHUQGqHDTt94mf+AnCQdoqkAZns/STqDA/X
X-Gm-Gg: AYBFou2iBnJNnr7m4YhWYWrXf01xnHngcViSKWalcoyuBSc+/8yVM4QMMupSrdskRns
	960s4Fcsd/Rxedo2X7P0TS0n8zOjUaJMW4h8rhTFqUbFPRwerLwizatUxa1608bXnHvBlWZlKWi
	FPMW1sNSaP0m7LuEdnqsQZn/Tu5DWFllxIXwMf+wIW4qGYjWKoS1UWoVhopmxDZV1ZwRc4/0rAO
	O6Vd6YCzxb9fTmjMgJGKthrnzTB0oWqhq/GcA6zo3eNrpFRnKYFLPIdU9s0d4APNhcpytWN1/5i
	33WQ3SRmgHbvRAfhcfUFOzww9W5Utq+c7MDegDlYufPBsr+L3Vcc0sm/TjmxpGGcaDZ1cmgEzc+
	WDX6HFTiABddEEHCCpijQcuuIcFBMyHZJsPeFJ+acjHTJzEtyUBaIqbQDnntS6EX6IQReiD04Js
	Tv09MLA94AjHLLEbZ1qC5H57dqdlladOgyU/hB/Ypk10bhSoeUqpNj7lej1Svcvq4/VbAYCX8F7
	9Eprt5rkl+Xbfw0ezFPBEUW9muOPt8DTXmu4BmHRLJJpaQIA/tmLQcl/Xclt0E9tXGM
X-Received: by 2002:a05:600c:3487:b0:49d:1cc7:5ec3 with SMTP id 5b1f17b1804b1-49e7a66af92mr186642285e9.9.1789473406677;
        Tue, 15 Sep 2026 04:56:46 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7ef88754sm63175565e9.13.2026.09.15.04.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 04:56:46 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 13:56:41 +0200
Subject: [PATCH v2 2/2] arm64: dts: rockchip: add mipi csi-2 receiver nodes
 to rk3576
MIME-Version: 1.0
Message-Id: <20260915-csi-2-rcv-dts-v2-2-bdaf8141616a@gmail.com>
References: <20260915-csi-2-rcv-dts-v2-0-bdaf8141616a@gmail.com>
In-Reply-To: <20260915-csi-2-rcv-dts-v2-0-bdaf8141616a@gmail.com>
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789473404; l=2691;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=hz7ecKJMlWN4w7YByidxbnhsifV5HkA2kX05eT5H6SA=;
 b=tj68X/IcmWZX/XZiXkGeeRk0CFzYyPr/Y7qcNgyol3bOUZ7O2Jnd8YAYI2xuhQ50+w+iMS1+r
 8idipYTKQdOAh89PeeC1du381r95I3oTVoV/s0oBkv93JJ63M6jymvM
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_125648_064520_9CCD0766 
X-CRM114-Status: GOOD (  11.64  )
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

The Rockchip RK3576 features five MIPI CSI-2 receiver units:
 - MIPI0: connected to MIPI DCPHY0 (not supported)
 - MIPI1: connected to MIPI DPHY0
 - MIPI2: connected to MIPI DPHY0 lanes 2-3 in split mode (not supported)
 - MIPI3: connected to MIPI DPHY1
 - MIPI4: connected to MIPI DPHY1 lanes 2-3 in split mode (not supported)

The PHY to receiver routing is fixed. Only the full/split mode of each
DPHY is selectable, via SYS_GRF_SOC_CON5 bits 1 and 2, whose reset value
selects full mode, so no software configuration is required.

As the MIPI DCPHY as well as the split DPHY mode are not yet supported,
add only the device tree nodes for the MIPI1 and MIPI3 units.

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 52 ++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b7a527614243..cbf8b70cc15a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1324,6 +1324,58 @@ vdec_mmu: iommu@27b00800 {
 			#iommu-cells = <0>;
 		};
 
+		csi1: csi@27c90000 {
+			compatible = "rockchip,rk3576-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+			reg = <0x0 0x27c90000 0x0 0x10000>;
+			interrupts = <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "err1", "err2";
+			clocks = <&cru PCLK_CSI_HOST_1>;
+			phys = <&csi_dphy0>;
+			power-domains = <&power RK3576_PD_VI>;
+			resets = <&cru SRST_P_CSI_HOST_1>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi1_in: port@0 {
+					reg = <0>;
+				};
+
+				csi1_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csi3: csi@27cb0000 {
+			compatible = "rockchip,rk3576-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+			reg = <0x0 0x27cb0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "err1", "err2";
+			clocks = <&cru PCLK_CSI_HOST_3>;
+			phys = <&csi_dphy1>;
+			power-domains = <&power RK3576_PD_VI>;
+			resets = <&cru SRST_P_CSI_HOST_3>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi3_in: port@0 {
+					reg = <0>;
+				};
+
+				csi3_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		vop: vop@27d00000 {
 			compatible = "rockchip,rk3576-vop";
 			reg = <0x0 0x27d00000 0x0 0x3000>, <0x0 0x27d05000 0x0 0x1000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
