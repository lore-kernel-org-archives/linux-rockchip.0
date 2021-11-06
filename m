Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84834C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5217661165
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5217661165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muGDdhCZBIgbp2aRCcj838/nOTKWk/oZubAxtR9jKdU=; b=aGNdhP7k+yu/Jb
	KybjogRSIzWjR/laox3sxZ7Lk1LtpnXUBb7AF3hl0q6tqNNdfSBIz4UmMB34sx2T/HGNsIeQ6DXjb
	jzXxKqpPOXTTh6l1TnevNp/W7P9Igot7W/TPH30qQHrOVOozJ8PpS0ByAlOaD0gAIaGyVtUso8LeS
	F1QNc2GoTJ7HrQKMc5K5U22Fi2kKthyKX3Y091ycrF0gIGO1MxsF3OYIm42QGgde8ZCl2WOnF7pxJ
	vdpTwPtwOnW6l3jwgRuhfV5o2Qizws9gLS9qTpAVMvnJ8bqHZNbIdB+BeWcRQ7mEQ8iPHbTX5eI++
	ukVdf5dibYnVsGFTugGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQac-00DXN5-1B; Sat, 06 Nov 2021 18:38:54 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQaE-00DX95-4j; Sat, 06 Nov 2021 18:38:31 +0000
Received: by mail-il1-x136.google.com with SMTP id k1so12848391ilo.7;
 Sat, 06 Nov 2021 11:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vvL0Zqkz85LYHufmiL48sAs3q5REU5bqby89EtGa5w4=;
 b=dQkQ7I0h/Op484A/fxCcDEaFKI1EYy9YvNnHRQz7m5jY+d+nd6+HEMfWftsfGCRii2
 z+7JloOkv4G0TGEJMYeEDlf8/J+PzE059GS637NG1vDRvDAW/BiT4b/KJ39n20Yzw9xP
 ZZNARKwYM7LuxY2cXiHX5MNPph8SUhDbxUajDkBn73ZuK/qnTsL6omXF5eTQfCkJCPdX
 pLixK7CmOdpDGeW7ol2PVnV9Inaj+5mW3MAmh/vvslAzoUCfWX0tTKCwoaTmp/RBg29C
 OLtfjubdU5eCqBcFNXfx07fPWFrPLGogJzp6euxbkwOiYYdk3x+QnvEjEiB8j3pHcDG6
 rxEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vvL0Zqkz85LYHufmiL48sAs3q5REU5bqby89EtGa5w4=;
 b=mwfs/uC3X3KwcyOuyZKFm51/renkZDp8d1HiEXI2U19tk5IArLcuX9tXPv1nSakPMH
 9eWQEPYJeyIe6+KHMfTk/29XokTJ2LcsZEfEGvUOfNVuxcSXwhSVJri/CMooBNB2EolP
 6U1gVBbw5SMmOTo5vkzovZgqxmgVfxiXTyWQ/t++Iq0w+WNDsU2hF949QkmBT69cVnA6
 awyVqLAPxGDjbUxaMU68RMyyq8LFtv95NmtsAQv9rUM7so7+mqewHCBH5+mg+xQGthFl
 k7hsW4UyUyBzZ0NZsv5vrkA2dOmOVM4hT/RzpWulInUFEWfFUUr3Rgl36cGuO2UaPmZp
 t6Zg==
X-Gm-Message-State: AOAM531hvWepCXSOuoGCchS15LBfBI7zFbKE1YkL51wEAq9nyaBWL6qi
 O6h3wc/DPMu3owKgktCXblE=
X-Google-Smtp-Source: ABdhPJzpnoPITzTG+mm95hC+TJyxENY8UqxQSr3DwH9LA8qNFBvVkGOuSJvfXac+Sgygj/rZMcJEEw==
X-Received: by 2002:a92:d908:: with SMTP id s8mr25362965iln.168.1636223909120; 
 Sat, 06 Nov 2021 11:38:29 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:28 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: tharvey@gateworks.com, frieder.schrempf@kontron.de, marek.vasut@gmail.com,
 jagan@amarulasolutions.com, aford@beaconembedded.com,
 cstevens@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 2/5] arm64: dts: imx8mm:  Enable VPU-G1 and VPU-G2
Date: Sat,  6 Nov 2021 13:37:58 -0500
Message-Id: <20211106183802.893285-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113830_238258_143C4A3C 
X-CRM114-Status: UNSURE (   9.93  )
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

Enable two hardware Hantro decoders called G1 and G2.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 41 +++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1f69c14d953f..725c3113831e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1248,6 +1248,47 @@ gpu_2d: gpu@38008000 {
 			power-domains = <&pgc_gpu>;
 		};
 
+		vpu_g1: video-codec@38300000 {
+			compatible = "nxp,imx8mm-vpu";
+			reg = <0x38300000 0x10000>;
+			reg-names = "g1";
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g1";
+			clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>,
+				 <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
+			clock-names = "g1", "bus";
+			assigned-clocks = <&clk IMX8MM_CLK_VPU_G1>,
+					  <&clk IMX8MM_CLK_VPU_BUS>,
+					  <&clk IMX8MM_VPU_PLL_BYPASS>;
+			assigned-clock-parents = <&clk IMX8MM_VPU_PLL_OUT>,
+						 <&clk IMX8MM_SYS_PLL1_800M>,
+						 <&clk IMX8MM_VPU_PLL>;
+			assigned-clock-rates = <600000000>,
+					       <800000000>,
+					       <0>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
+		};
+
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mm-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g2";
+			clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>,
+				 <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
+			clock-names = "g2",  "bus";
+			assigned-clocks = <&clk IMX8MM_CLK_VPU_G2>,
+					 <&clk IMX8MM_CLK_VPU_BUS>,
+					 <&clk IMX8MM_VPU_PLL_BYPASS>;
+			assigned-clock-parents = <&clk IMX8MM_VPU_PLL_OUT>,
+						<&clk IMX8MM_SYS_PLL1_800M>,
+						<&clk IMX8MM_VPU_PLL>;
+			assigned-clock-rates = <600000000>,
+					       <800000000>,
+					       <0>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
+		};
+
 		vpu_blk_ctrl: blk-ctrl@38330000 {
 			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
 			reg = <0x38330000 0x100>;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
