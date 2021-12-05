Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE7CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 18:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLeK8BH7eRIXbcDKC022PJN79ApJRq0TcoCBEPXTkOQ=; b=xn3lzoLrSo1wwc
	PqZKmfKrB4vigAlHFTDY+AoqgLq94gJ1tCHN4qftLKFNypGQr9T4EuYVjjJtyrw/jGZKE6ZqF9gMa
	jFLdi6EEV9pTOkpMT1mrTT+r8XAtJqvSALaiUTcL9fNwUm6IcNw5G/YZw0to6rLB3PmY8p3qMNR4K
	IQc6OjiOVI4Xgb8vckZfGxMwvZcHOdlQV2eTceMFZXAMCTaf/YbDLNK1Q3KMQPb2Cg+wv8DANjCKy
	ACCKgM/WP+6v0CgPHZAitPjPKn7owahpfR1Rmjqj1UeuIx3hv6GcFpsV8q6snonS635xPpG+cKH5w
	vegT8uU/kUri1hqszC/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtw5z-001qcI-Tl; Sun, 05 Dec 2021 18:18:43 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtw47-001pdz-46; Sun, 05 Dec 2021 18:16:49 +0000
Received: by mail-io1-xd2b.google.com with SMTP id z18so10374162iof.5;
 Sun, 05 Dec 2021 10:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+A19AMS3FcCbKFMkiqJgqoCgdphaPyPa3g/qmWJ+CgE=;
 b=mbtmONrktIpHdPAXu8gK/tZkvc6AKDTYPWMcriMiUe50ViMZlFAdlGnR3U4xDVj483
 J6EhF6nBLEtFvNL7YyErIUJ9sgSyiwlcGS0K7YJnkf0SgzlfYrMnB17TjVf5rp5tvz3D
 7vYVvLCpIbwZTD91iMcutiD2PF4dDGEGv/XxzZoxP0UNVNqEmOrA0cLubwdmNYMbpxGK
 N9poifoxBwf298Wen2wLEf+PyDCja2CTiO8douJkX8Uf7gNFPM/FxWNtr2AdAGVzg2Gj
 Bfy884Sc1HBRWjkhD4+AJan8/Ogs1E+LhWiIYo5KxzpZ0i5FNxDGzMC2g7gFPHEq8XEt
 ndHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+A19AMS3FcCbKFMkiqJgqoCgdphaPyPa3g/qmWJ+CgE=;
 b=wlQSZHtas5V/9S7yceNSzbC29bghbIrroq8IynjJSXpLeOTLS0MZme4Cm5eSdNTXNa
 nlHQau0LzXHEi7ODdUN6RMZ/II4A3WuKY2GkVzCmcCkpDBsbR/8IbdhE2Kb0Gp/mq++x
 o4Kj4eVG/TjZpVgtXMdnI0792gOYqZTY3UKZQ654/NpRLjU3hsgqLB/I5y3bOLzG9v6H
 CqZ78TNbrwhDMGGoz01IP70u+U8g2bP6oE5z3gL4AmtGDElbEQfVH81pi52pWMRsPMRK
 dt85MEvQlsnnLs0J5Q01z2WMkupRV7drbdhKGmmo40a/OfGuQszZR/jw+J8XPTI6z7o4
 f/KA==
X-Gm-Message-State: AOAM533fZWVURq9Gx87Xh7nOPVQObdI10lzfyC40E8o7u0Ry72FMto9h
 /BXFvRXFF8+R2Vtl4jSXq7A=
X-Google-Smtp-Source: ABdhPJxUD4PGhm5f8vPBx+gx5+Nr0RDU/Xdp53jkJBIAmnEDfXpwWuC7JCIkZ2ynBhvgDKgg9bSbGg==
X-Received: by 2002:a05:6638:4091:: with SMTP id
 m17mr36529663jam.41.1638728205925; 
 Sun, 05 Dec 2021 10:16:45 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:9ea0:bb99:b16a:6159])
 by smtp.gmail.com with ESMTPSA id z12sm5808164ilu.27.2021.12.05.10.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 10:16:45 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com, nicolas@ndufresne.ca,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [RFC 5/5] arm64: dts: imx8mq: Split i.MX8MQ G1 and G2 with
 vpu-blk-ctrl
Date: Sun,  5 Dec 2021 12:16:18 -0600
Message-Id: <20211205181618.1041699-6-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211205181618.1041699-1-aford173@gmail.com>
References: <20211205181618.1041699-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_101647_226241_09944883 
X-CRM114-Status: GOOD (  13.05  )
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

With the Hantro G1 and G2 now setup to run independently, update
the device tree to enable it again.  This requires the vpu-blk-ctrl
node to be configured, and the clock-parents and clock-rates for
the various VPU's to be moved into the pgc_vpu because they cannot
get re-parented once enabled, and the pgc_vpu is the highest
in the chain.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 69 +++++++++++++++--------
 1 file changed, 45 insertions(+), 24 deletions(-)

This clock rates and parents were moved to the pgc_vpu node because the vpu-blk-ctrl is 
expecting certain clocks to be operational, and they cannot be re-parented once they are
runing.

The datasheet and the TRM both show different potential clock rates for the G2 CODEC.
It could be as low as 300MHZ or as high as 650 depending on what document is read, and
the operating voltage of the hardware.  Because of the uncertainty, the clock rates 
proposed here match those in NXP's 5.10 Release.

https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm64/boot/dts/freescale/imx8mq.dtsi?h=lf-5.10.y


diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 972766b67a15..0d3053bbfb2c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -711,7 +711,21 @@ pgc_gpu: power-domain@5 {
 					pgc_vpu: power-domain@6 {
 						#power-domain-cells = <0>;
 						reg = <IMX8M_POWER_DOMAIN_VPU>;
-						clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+						clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>,
+							 <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+							 <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+						assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
+								  <&clk IMX8MQ_CLK_VPU_G2>,
+								  <&clk IMX8MQ_CLK_VPU_BUS>,
+								  <&clk IMX8MQ_VPU_PLL_BYPASS>;
+						assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
+									 <&clk IMX8MQ_VPU_PLL_OUT>,
+									 <&clk IMX8MQ_SYS1_PLL_800M>,
+									 <&clk IMX8MQ_VPU_PLL>;
+						assigned-clock-rates = <600000000>,
+								       <600000000>,
+								       <800000000>,
+								       <0>;
 					};
 
 					pgc_disp: power-domain@7 {
@@ -1432,30 +1446,37 @@ usb3_phy1: usb-phy@382f0040 {
 			status = "disabled";
 		};
 
-		vpu: video-codec@38300000 {
-			compatible = "nxp,imx8mq-vpu";
-			reg = <0x38300000 0x10000>,
-			      <0x38310000 0x10000>,
-			      <0x38320000 0x10000>;
-			reg-names = "g1", "g2", "ctrl";
-			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "g1", "g2";
+		vpu_g1: video-codec@38300000 {
+			compatible = "nxp,imx8mq-vpu-g1";
+			reg = <0x38300000 0x10000>;
+			reg-names = "g1";
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g1";
+			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+			clock-names = "g1";
+			power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+		};
+
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mq-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			reg-names = "g2";
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g2";
+			clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+			clock-names = "g2";
+			power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
+		};
+
+		vpu_blk_ctrl: blk-ctrl@38320000 {
+			compatible = "fsl,imx8mq-vpu-blk-ctrl", "syscon";
+			reg = <0x38320000 0x100>;
+			power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
+			power-domain-names = "bus", "g1", "g2";
 			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
-				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
-				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
-			clock-names = "g1", "g2", "bus";
-			assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
-					  <&clk IMX8MQ_CLK_VPU_G2>,
-					  <&clk IMX8MQ_CLK_VPU_BUS>,
-					  <&clk IMX8MQ_VPU_PLL_BYPASS>;
-			assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
-						 <&clk IMX8MQ_VPU_PLL_OUT>,
-						 <&clk IMX8MQ_SYS1_PLL_800M>,
-						 <&clk IMX8MQ_VPU_PLL>;
-			assigned-clock-rates = <600000000>, <600000000>,
-					       <800000000>, <0>;
-			power-domains = <&pgc_vpu>;
+				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+			clock-names = "g1", "g2";
+			#power-domain-cells = <1>;
 		};
 
 		pcie0: pcie@33800000 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
