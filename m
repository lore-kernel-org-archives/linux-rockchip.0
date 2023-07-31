Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE40C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y908vRDdd17B2ZEbRqzF94RkMJrnQTzX+/PkEpSyM30=; b=dgOWI6mJttK6UP
	Ht3QQE4MTfDdbJMSNHI1D1W/I6yB/qqRwycSn9lkk1X3pyLCO6hUJ437LPhl1/jh+oUbnB/x3MlXF
	8MSRb13paXBeu5yDf9uyepSMFr6HPBvIstbwCpis61RHSDZOpm8umvCEgm52ilj3ktqFGD3JvAsHv
	7+RqnX1QteYpe3VlS/3pDaHBXdPA3B5sF1biAixPcClC50ycs+Zqhmy/VfvM98Dq9m4BumDkrumqw
	sHA8F4nS0b0osTaXrIacOecs/On81n/R06gvtZ7AyLQgPN4yhiq33/QZP4NfC2D3o5jq8xJGPZ/cp
	70Fyy6XGfj+waAgJAS3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeM-00FEoH-2W;
	Mon, 31 Jul 2023 11:01:18 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQe4-00FEX9-1u
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:01:01 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1b8ad356f03so25780725ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801260; x=1691406060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55TagAiRshVLsdjzm5dT6uG8EtYk9qbUxp2o3j3weag=;
        b=Bl3v+TDkr1tWyTR/X3u7OIWZY+hhZcfzuJMQJUAsDJ4k3VI0u9+hKhzUyskc5O/L0a
         UHShK07qZ5T4TooAg0YFWtucQeZP+x73pJycEz+zwtvgMrKXQkFcJaHIB7unBa7zk3mU
         H90/e++GoCZW2I6JHF1020O/DfcbaiiAjdxoe0WS8kvyBrxYPHMPGa+0ey4WmieNbxt6
         8cHIkPxlBV5T9jaxWCsOjO9+2hWGi5IQztDadSenimHylGJ3ZyMFdPVwmyeXaKfnk3pI
         aLrlGi07RzqUBvCommCfmGaC3ZXgqWCT24MaGRgFvzMlIfm5Ch5y5ztSX4ubvCWKEPgJ
         oDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801260; x=1691406060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55TagAiRshVLsdjzm5dT6uG8EtYk9qbUxp2o3j3weag=;
        b=Z/n9q+RetIW3RFe3On6hlKjDU+8Jzkk+5VX2CICaWMQuxU17VSJmlb7+oxFeKSDJ1k
         Z3LrDDL0551AelBclFfDv529Pida+0a0fkJjDVWX8rfPHh1wZNi6J6BHpFLumyHwkvqS
         FjtPL4BYYSXBU51UAnIUhH9EbZTe2COFfcbBBFrQkQOalyXFecmVYGQr0zcNNLw3da3v
         Bg65UQLSBeBspX9mKLJz2AtbMD6h5Nj185rZV6vgnO0tq4i3C5tRpdC/Bz3YyxjLU7rP
         HFcAg0IFRDet40qEBzGGB0bZ6XpUOoBQkrn5acpP1q79OxB73WUuBVk/8ffSvIVV4ZZR
         XivA==
X-Gm-Message-State: ABy/qLZoRYeUcFpo1D9O5TEOO08UwdUqj9qmoBe6Y4xu628jv0aFOkD8
	9FfYHW8bepsTgpU88rR1Dd9H+g==
X-Google-Smtp-Source: APBJJlFN6+PX/38XXVYidoiq5so/jfqcKsG0PA72uSFA4mF8rVS3tLoY360tQQFzPvZOXDtB3tTcHw==
X-Received: by 2002:a17:903:32cf:b0:1b9:c68f:91a5 with SMTP id i15-20020a17090332cf00b001b9c68f91a5mr10388667plr.6.1690801260144;
        Mon, 31 Jul 2023 04:01:00 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:59 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support
Date: Mon, 31 Jul 2023 16:30:08 +0530
Message-Id: <20230731110012.2913742-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040100_655671_08E2F48F 
X-CRM114-Status: GOOD (  11.26  )
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

RV1126 VOP_LITE supports the video output processing ofMIPI DSI,
RGB display interfaces with max output resolution of 1920x1080.

Add support for vop in rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 42 ++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 4d74d3d998ab..9ccd1bad6229 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -83,6 +83,11 @@ timer {
 		clock-frequency = <24000000>;
 	};
 
+	display_subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	xin24m: oscillator {
 		compatible = "fixed-clock";
 		clock-frequency = <24000000>;
@@ -393,6 +398,43 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	vop: vop@ffb00000 {
+		compatible = "rockchip,rv1126-vop";
+		reg = <0xffb00000 0x200>, <0xffb00a00 0x400>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+		clocks = <&cru ACLK_VOP>, <&cru DCLK_VOP>, <&cru HCLK_VOP>;
+		reset-names = "axi", "ahb", "dclk";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
+		iommus = <&vop_mmu>;
+		power-domains = <&power RV1126_PD_VO>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vop_out_rgb: endpoint@0 {
+				reg = <0>;
+			};
+
+			vop_out_dsi: endpoint@1 {
+				reg = <1>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@ffb00f00 {
+		compatible = "rockchip,iommu";
+		reg = <0xffb00f00 0x100>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		#iommu-cells = <0>;
+		power-domains = <&power RV1126_PD_VO>;
+		status = "disabled";
+	};
+
 	gmac: ethernet@ffc40000 {
 		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
 		reg = <0xffc40000 0x4000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
