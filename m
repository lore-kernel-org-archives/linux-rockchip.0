Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F186C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 01:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy3AfN5/M/4uF7Tclh83Hti4MgyDPEZ3a2mwEZLTUmY=; b=pNFV3zKRjdD06Y
	B85PR8ZdU1tO80adhFwCAsEDVxT3cuafLDRIA3KL5J4UeVsglC5n2vcXZpm3NeJpEyaeOa/Q2z/+A
	9HQj69UOAZq+tCRrPccng/QT2GZPZHvE3nkV5f38A74HSLXc2OlexFMIUr2CzqaTgyJLPGTuhvjeO
	2+a3BZmaZeHuVSIIWES2qFAAv2B16w/dBnc2U2/5VsbDEpZruhJ+Lpuk3goAqs7GmvpXV3wvD3Lkb
	HUKoIyrsTmfEi8MbZG1QGWfEVRFB/DZ59rRGe6fAYRj39xkDIXtJ1ZVQlBcGfjQWvBVzazdJ+GwkO
	yD24j2Oyq/csnT4gI3wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msEVq-007Fmi-BI; Wed, 01 Dec 2021 01:34:22 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msEVJ-007FcZ-OY; Wed, 01 Dec 2021 01:33:51 +0000
Received: by mail-io1-xd33.google.com with SMTP id p23so28702779iod.7;
 Tue, 30 Nov 2021 17:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ap+Y2Tz8z5LcHzGO6SA2tif2EyiHYR6r3DF4Am/aoA=;
 b=OcbXRHDXrnBr8kivgFa/eyWQC8wj9OddkBPOFLlJP2uV0U47aHQn6gbTwG3IPOQM+3
 4IDeyBU8fV9k6Mw8DW+7GMii65R3Ud6uJGKaM5sFDo8e5VOy/JsP1+FnSOidK+nrwbJA
 +c6l1vZUjTDiaxHNCNh8Ix7WCaDA4EjTXaGRuTOb8RHT2q5x/jF5hKD4QTYgaHCYYDBJ
 4lqpVh3AdxNri9cq5zbgwLUKnAcHJsT0bnBqV4YcvvkbHsL+Slq0eT4zfjXk1latB2ir
 UZ9s+8Eh9J6f9I9oD5ruIY/EVu9CDQwKeJ1Gzj5wx4jwk5rtlKCeuTT+W/36K9mXC1/y
 kV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ap+Y2Tz8z5LcHzGO6SA2tif2EyiHYR6r3DF4Am/aoA=;
 b=1/H3ymEIfNcTnAVVxbzQUy9hmFXXc8TnQ/948S3PnLdkeNxZU1Akj/7wKNlo5cqKL+
 Y8Xm+QK0NH0RPdifSkGsoWY7R3nZNQaj2qmZygGLfs/Qx0XdT1IcHQHyEsudbjiK/0zT
 MhQWTMt81ZiQXpoXU/iCdRK0J/TWj4w38qEazDv04ZCyf/tcWd2sBvmbF5oDRXSIhx5F
 hpf+ofnOpEQ8Mr2WCOND2q/ILVvj1hB1s3iG+MUIrrM4EdHa2Hs5/r+WGPk23dK9WXTl
 /JpKHRuWsNEsRohubAuKi16qRQ5dkZSaod7snOSOnsK7iFSJ171lxbesM1q/D7lleE1b
 q9Kw==
X-Gm-Message-State: AOAM533h3RxZD1r92mhAzxm4MnsIWNG4Anarv7JMHZmLtL86uaslC6nx
 qM7WuY76/W3ApSMiOWwfnqA4a1oYqHN6gyKr
X-Google-Smtp-Source: ABdhPJws3i9Y5kHYiQGhopk7urQguB9dlP7kNjGUVEgv5jDp6giKcZ6fFE4/yqGZACC+0c8Xw/Wdcg==
X-Received: by 2002:a02:9f87:: with SMTP id a7mr5568738jam.136.1638322422135; 
 Tue, 30 Nov 2021 17:33:42 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:b7ee:f768:f33c:c028])
 by smtp.gmail.com with ESMTPSA id u24sm11856737ior.20.2021.11.30.17.33.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 17:33:41 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, hverkuil@xs4all.nl, tharvey@gateworks.com,
 nicolas@ndufresne.ca, aford@beaconembedded.com,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC V2 2/2] arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
Date: Tue, 30 Nov 2021 19:33:29 -0600
Message-Id: <20211201013329.15875-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201013329.15875-1-aford173@gmail.com>
References: <20211201013329.15875-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_173349_809934_4AD78CEF 
X-CRM114-Status: UNSURE (   8.90  )
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

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c2f3f118f82e..eb9dcd9d1a31 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1197,6 +1197,47 @@ gpu_2d: gpu@38008000 {
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
