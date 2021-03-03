Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10D8FC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:35:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77C6A614A7
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:35:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77C6A614A7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lvy3BNlAP1AzkJMl32EAiw2d35mCzwVi016Ek4bGmaY=; b=hkeG3X0JDY1MVaz6+0WrG72je
	PTxSE1CWbAcIkPNb53wCQugH7WuTt7hzra1NVtS3vqqS449ivEsJbIMLsvwSbVY5h1Y27WQS+HAjS
	BmuUUgROVUyp0q91qeaNBCfLnU0abQs4YJzmQD6z2nn9L9NTkZgrICQGWKe2RSokEOyHzPeIOBnKx
	rux9mzBnNOmolDrd8L897IF5Q/eZerwl8S/rsh+XkmZDXyUbMndzpTSPL2BpCMZ9yI63EhyY75vJu
	oELSbpOikRx8ob6KNtXEmGhBcHVO9yQZUXJRzU8d3Q2NdfkPfpA8V2do9+lleYDOGZeYdaoF39kPB
	xwzHYbOiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHUSZ-005cpa-TA; Wed, 03 Mar 2021 16:34:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSpr-005E3k-4X; Wed, 03 Mar 2021 14:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=V53/AVZb0Qm1QI27dsm7UEhnvRdo5hCixbEqdpgoAhI=; b=bMsnbnSv+v1ReH6hkIfSs55veC
 zIAIIjXmwasUSFGmoV0x03fMe2h8nWVyKs1qriDcTK00+wFPdIlo7PjhleyFZhj+o5pm0Drf8h3Ne
 wQPQazsnewGTpQHZQYrpcuSNZyrrPFe3FMFvbGG3+WGAeku5cJ+FOY8p+lxaSWQ1aGgWQAgHtqQUo
 aZ+bjY1Tg41paYS9ZcVsNetBQbdKUkt1lbpFm3c97UpE4ejKEI5YmKNuTFS5kDEiR6lWQBOQHVXn+
 NhmuOKu/wU1FNP2EvNnBe067Inc19+PDsg8jHq5zWMI8J66/71pUCaEG7YUTndhvXM2EVN6etwXzV
 eOOHo3iw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHPrk-002O4H-Lo; Wed, 03 Mar 2021 11:40:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2035:1dcd:21c7:b3af])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 66CAF1F45C31;
 Wed,  3 Mar 2021 11:40:29 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 11/11] arm64: dts: imx8mq: Add node to G2 hardware
Date: Wed,  3 Mar 2021 12:39:52 +0100
Message-Id: <20210303113952.178519-12-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_114033_796110_B6C9A4AF 
X-CRM114-Status: UNSURE (   9.96  )
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

Split VPU node in two: one for G1 and one for G2 since they are
different hardware blocks.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 4:
- rebase the change on top of VPU reset patches:
  https://www.spinics.net/lists/arm-kernel/msg878440.html

version 2:
- remove useless clocks in VPUs nodes

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 41 +++++++++++++++++------
 1 file changed, 31 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d9d9efc8592d..8358e214d696 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1287,17 +1287,15 @@ vpu_reset: vpu-reset@38320000 {
 			#reset-cells = <1>;
 		};
 
-		vpu: video-codec@38300000 {
+		vpu_g1: video-codec@38300000 {
 			compatible = "nxp,imx8mq-vpu";
-			reg = <0x38300000 0x10000>,
-			      <0x38310000 0x10000>;
-			reg-names = "g1", "g2";
-			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "g1", "g2";
+			reg = <0x38300000 0x10000>;
+			reg-names = "g1";
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g1";
 			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
-				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
-			clock-names = "g1", "g2";
+				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+			clock-names = "g1", "bus";
 			assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
 					  <&clk IMX8MQ_CLK_VPU_G2>,
 					  <&clk IMX8MQ_CLK_VPU_BUS>,
@@ -1306,12 +1304,35 @@ vpu: video-codec@38300000 {
 						 <&clk IMX8MQ_VPU_PLL_OUT>,
 						 <&clk IMX8MQ_SYS1_PLL_800M>,
 						 <&clk IMX8MQ_VPU_PLL>;
-			assigned-clock-rates = <600000000>, <600000000>,
+			assigned-clock-rates = <600000000>, <300000000>,
 					       <800000000>, <0>;
 			resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
 			power-domains = <&pgc_vpu>;
 		};
 
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mq-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			reg-names = "g2";
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g2";
+			clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
+				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+			clock-names = "g2",  "bus";
+			assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
+					  <&clk IMX8MQ_CLK_VPU_G2>,
+					  <&clk IMX8MQ_CLK_VPU_BUS>,
+					  <&clk IMX8MQ_VPU_PLL_BYPASS>;
+			assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
+						 <&clk IMX8MQ_VPU_PLL_OUT>,
+						 <&clk IMX8MQ_SYS1_PLL_800M>,
+						 <&clk IMX8MQ_VPU_PLL>;
+			assigned-clock-rates = <600000000>, <300000000>,
+					       <800000000>, <0>;
+			resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G2>;
+			power-domains = <&pgc_vpu>;
+		};
+
 		pcie0: pcie@33800000 {
 			compatible = "fsl,imx8mq-pcie";
 			reg = <0x33800000 0x400000>,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
