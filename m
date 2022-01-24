Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C612C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW2aPRghda7XSlvjMLaZZNixksolzan+XRUfsHs+1fI=; b=UGz/kbPkXByNxX
	v4dCiEBbakUfZPW4BsKLsx6mhd0pIDvPoull6yO9YGrUEvp4uSp6tFmK/dDW+0CJ26kNvBqAYBK2M
	RQ3EYFJ/VFZop1yVuRsbZ4hdk63NwIQ6EpuhNDs0FixnT9tpIxwQjE2DXMO/kbFTfqpEL/ulJgDmm
	3SFI1DHZSzH+u1QPn3fkNRhSH5+Vu4V4w8graDD/moxVfqAftygcz+J1HTArC7JUjHpxCJg+E7vSq
	aysIVAN5oNiyZI15MvmJjANgdztlb4Os4zw4skxC09vBIX1Z7WbsXXGvmGNx7sycxS0nTwPme/kP7
	JNMrO1epohUrBxRgFSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpBG-0022wH-1z; Mon, 24 Jan 2022 02:34:06 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp91-0021fc-C8; Mon, 24 Jan 2022 02:31:49 +0000
Received: by mail-io1-xd2b.google.com with SMTP id i62so2078957ioa.1;
 Sun, 23 Jan 2022 18:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0kqapHPsVAmMS1hoADzYhtB33F6J8cOET2+FNwBRYVI=;
 b=UjHNdYVBgQuefHEiP7NbKEkMw+838O6fih8G046RqbW05XTz91K2as73j4bCJHEG/i
 H+6hfjiigX46NZNy+WHb1T6KEYRkc42t+/G+r+z2ijG27j8F/GBOdDD0tRLLr/8+uT6y
 /b34Ko2Gs9uwNfeEL4Teub3gJKq9UyFtGClm0clhY9NANQYj3Ga0L8TaR2whBThWAUsq
 eK4IuWdTelBizfAvnVZyvp3a6sVnt3pAv0wqUxDw5oMNUXA0nA2OpA6C00az43q6IPbV
 xQGGJObqJrmnXPn+Gnj08tQpHKkUOebFzut8qf62RljmsicwQ/ODD151qV2Hh9LfJozS
 bPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0kqapHPsVAmMS1hoADzYhtB33F6J8cOET2+FNwBRYVI=;
 b=I1l1FcVH8Dnu8rQu62YXTT3TJQ14z7XoHMQPugxqvT3S5fJlQBlvIL/1NBqwX2JVkr
 BNzWIorTjrAJt5kUsdPmsdwrupidO/7Gc8ZWDm9iZL3wHol1YhHTvkfrznCxx0/3pIfU
 lNB99q9iuoA8alWLIl5oiqOSJvjD8wI/1rQrLIn4AqYcY4lX4PuZiyI28xxgOx8TRu3B
 SBZ+eBW8YZxdaNFpowYVTXYl6Ofd8WDjLUJ32F4c9fVfBDtwHrOXSJ5zgxqRB8u8djq6
 +vsCiVyPPqxytRdWIbPkwtNHYcgxz/szUrqdPPoc9vqD2y3Xg5nKWbsNgZ521lAVUPRj
 4VKw==
X-Gm-Message-State: AOAM531SO/H3/SguIcxxUaYg3U0Vd1gEFLUnh6sPccS5imPrJc66Fxz+
 m7IKXeYYUkNtza474x9FuS8=
X-Google-Smtp-Source: ABdhPJylwStRZxRkvSHduhjVQ/yru6kNZFcjW6rMzP6oabSV2mxLIBKRp4iZfbJ9guWf6zAYV+7YXA==
X-Received: by 2002:a02:2201:: with SMTP id o1mr5733193jao.213.1642991505768; 
 Sun, 23 Jan 2022 18:31:45 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:45 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V3 06/10] arm64: dts: imx8mq: Enable both G1 and G2 VPU's with
 vpu-blk-ctrl
Date: Sun, 23 Jan 2022 20:31:20 -0600
Message-Id: <20220124023125.414794-7-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183147_489550_AF9BA7EB 
X-CRM114-Status: GOOD (  11.74  )
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
the device tree to allow both to operate.  This requires the
vpu-blk-ctrl node to be configured.  Since vpu-blk-ctrl needs
certain clock enabled to handle the gating of the G1 and G2
fuses, the clock-parents and clock-rates for the various VPU's
to be moved into the pgc_vpu because they cannot get re-parented
once enabled, and the pgc_vpu is the highest in the chain.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 2df2510d0118..549b2440f55d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -737,7 +737,21 @@ pgc_gpu: power-domain@5 {
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
@@ -1457,30 +1471,31 @@ usb3_phy1: usb-phy@382f0040 {
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
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+			power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+		};
+
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mq-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
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
