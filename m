Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76FFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 01:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yrFWxUM8rsmhqvCLGMFrtqur62VUh1RwG00OC/3GtQ=; b=QbhEGsI/YCz0+X
	iE6ySJjb7WtMmqJFUM0BBgilNvsGnbQ/802iAY7ywx/y3GzdJwPoIyfj88y2PhyEf6/eG1ZjZNRpq
	FQQigbvM8E+NM2lLj6KJAnQd3IFeT2tzFGRHRfToQ5p+4BzKzQLenzOQeQKbY1bcAUyPHaOU4nZho
	yyKKNsISEsxahU27P5Mxhap7WkBU1Wr8I6lUVGC8pivXMilRb3VBQ4u8wMhTNx/rK5EXfVZVJ/FsK
	ptsfrDaVM+h95pnMILD01FKx8vuphf7mxfHTtEcts/5cC/CKI7662G101cWTqY+LUOStK42VEI5Fz
	p3gbFoXfNWbvD5lN4iIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muPk6-006g70-RR; Tue, 07 Dec 2021 01:58:06 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muPhJ-006eNO-VZ; Tue, 07 Dec 2021 01:55:15 +0000
Received: by mail-il1-x12b.google.com with SMTP id j7so12141365ilk.13;
 Mon, 06 Dec 2021 17:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N2Fm6dWc0a7+XOgJFn0Wt/EroGCK7h79J9FUWbkFAFU=;
 b=G2HYHzbdjxUJbtEeR3Os3Or3mcq2aUaj1uFlbZcGiz6F7622cW1x3Q1wVyTgnNYc7X
 ivDpHgSXwdzxWpNd3p3nlBbZ2cgyVdQoil1dvKLSPVzmaypwuZe+SRmH0PvId5F1hbcx
 9VfrBh/W+0+vh9vBl4yAC3mBReomcOpvllCxZF9sl1pt1ptJbSU5tLbXQcvdDygQLT1o
 MHbrVDn4qG0RdBT6NNf0yIdwdfpGSBlRLT5rUoK4jauoKxfSPGnqTPqQ9YeKo2AQlZRy
 b8vik5ATTgBMLn8rnxcnDF/qLQSyBpaGoPV08e7FddLiQjjF28havCOhS97YxidFWu/2
 dIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N2Fm6dWc0a7+XOgJFn0Wt/EroGCK7h79J9FUWbkFAFU=;
 b=PjXGwwy6f4PIyhLAxdBgPTfU+WctXVikh4MkCfXXR3Jk2Mdyh8mVZjhlCPbwCJzCy9
 JgmBPDkNmDPaKbu0v89KYxxipuz66ymoaGi1aSX5NCcwItr8wAQWYH3t5AOod3b1asWj
 Q+h5U3ZFMPu3sxJHe9xZWTgxJ6Qb5ORBRs2lsTIrHhJKKXU6gOoJutxSK2Pp5i6chxa1
 5ahDvtniWaXwehbatt5mzL+WIVT+Fklli/3d5IQuJsYSVAcY/7SF220x7q6yMbPdHtzc
 ZmxwJNgeea52Ca+iSma8I8C71iyWG1DqVrfVXVZ/4OpCr8aZvq8PmZxGBiekqSERMjV0
 VsVA==
X-Gm-Message-State: AOAM530sLXucV1nOJPBluUcXWAh1ntopWnVz07BBCGa8QG2BTrLugvmh
 2XC3G5S5dggTg5fOJ20Bdec=
X-Google-Smtp-Source: ABdhPJwFLGfSdq9wLBvEJKWPqQo0SPqabYFCnQeXCrib2XsGTtaB0FmNDVOawUKEl716ZhKkS/S3Kg==
X-Received: by 2002:a05:6e02:c94:: with SMTP id
 b20mr35622714ile.257.1638842112590; 
 Mon, 06 Dec 2021 17:55:12 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6db8:c9e4:6f6d:f38e])
 by smtp.gmail.com with ESMTPSA id j21sm8623639ila.6.2021.12.06.17.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 17:55:11 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: cphealy@gmail.com, benjamin.gaignard@collabora.com, hverkuil@xs4all.nl,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [RFC V2 6/6] arm64: dts: imx8mq: Split i.MX8MQ G1 and G2 with
 vpu-blk-ctrl
Date: Mon,  6 Dec 2021 19:54:45 -0600
Message-Id: <20211207015446.1250854-7-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211207015446.1250854-1-aford173@gmail.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_175514_063086_48A82337 
X-CRM114-Status: GOOD (  10.52  )
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

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 972766b67a15..3ed2644bd500 100644
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
+			compatible = "fsl,imx8mq-vpu-blk-ctrl";
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
