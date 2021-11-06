Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA17FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8856561165
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8856561165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDLVTIBiyDqzCawFm1JGSuqMG2oLPq9Jmjo4GtOeJqE=; b=nP5gWQPQwB/VN4
	j7JPZSwuupirD/dYwLsuD7mklC8QIHhJC7i5+U66AF87Hx8lGUK5lFDTRd/LoX/5CHkmipx8dhT1S
	AfdvAui+GOVrmgUHH8Jsze36QBPhn0xwWjBy7AcFqD0i+lx17DNunAEgWAtL+jdSMabcBI1NYeJAI
	8grst+Z5ly+Az5uYR9g1FJ8L69AosFFHsgELWwKT2LYCAIuzwzHgWYZm9RjXiXhiMqbPU64DOdSa9
	c4lMQ0Rh06X83UBU7z7qHyjT+TwKvLLIeXrn7TVlE2KwCAjPoCB/qYUSjzDXxftKjD7s30x4E+XyQ
	xF0AlH3ioJ+XJhuUTpXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQbN-00DXlS-Bc; Sat, 06 Nov 2021 18:39:41 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQaM-00DXE0-ON; Sat, 06 Nov 2021 18:38:40 +0000
Received: by mail-io1-xd2b.google.com with SMTP id f9so14338169ioo.11;
 Sat, 06 Nov 2021 11:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=udKl62y2x/Oh2cW97C2eKZ5L1gu+lpGXEnEESf3ayO4=;
 b=fF8BuidW/FPcrJ2yf9wm3QJp4AL8b8rBt6CifE+v2//RxyWSJ0hVD/OyKAhAsI5g/z
 hNJAwWjZen9DblNTkvtAI4ExLnad4GRPXUULPZzZHurrnwyg+MPopwjt0IhcnDhrLcYh
 +Nr14SsC38b+nmVhUfrkeJi5pCMxSJhnhSXgOTYBaCGJ/hWFuVdcmKFApFelUfu7fhbS
 osvVDZ2rbFtFgQUcnuso2Ba/OcqSDAw3vt5ahC66vP5km3HC0vuMbSaC9M6oRB5M6qMe
 Q6ZvkqvIVDBS69JJIxBC54fXdis+xwlSM5FzxFZ/Rn+dptLc3ax9jjvGgliZ3tSN1Ytv
 BZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=udKl62y2x/Oh2cW97C2eKZ5L1gu+lpGXEnEESf3ayO4=;
 b=stJNf58u9wGmc0KxWShhslkqnhFVUvBiZMaoolTNFd7u/QAKywhmaTJDYZ1gUOx0Kv
 4yCO+an6UbQFgrIFXKuS4KrAIYKGOCJataZ0/8Yyvr9PzfG8LeL/Ldgu8q7d2QyRf/Af
 wfo3+Hewz86Ios3V8/lHZT8Lh67YKKWssqaHPhiMDp0QPkxRJqsX3v4itKABtp0YL7SN
 5V2JFi0YIWToM0aFOU/tMJUnDnRFCc0VUnatgCaAQK7wbf5/yvWT+J4gG/FQd31huMa+
 4yp2voCaNVn7qQXtFLzmJheTB3OXFIRWcB9VBKbvPpMZPP2w9LBSToTnJ/pIGdWbVyCY
 ObvQ==
X-Gm-Message-State: AOAM5317clUexlp63nLkM3GGMa2HJsWsnDYRsW7DknKlBlA3QlviveRU
 5WtHdwX3GjrRqEX2rOnt/Q8=
X-Google-Smtp-Source: ABdhPJzi/tEgr5ILGu/G4uh+io+CaFv2TdlL4qlt4DJ0TsFdO3pDfvEw1qfgLCdAoScQ2u7hufdjBA==
X-Received: by 2002:a05:6602:2cce:: with SMTP id
 j14mr5024039iow.23.1636223918087; 
 Sat, 06 Nov 2021 11:38:38 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:36 -0700 (PDT)
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
 Joakim Zhang <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 Peng Fan <peng.fan@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 5/5] arm64: dts: imx8mm:  Enable Hantro H1 Encoder
Date: Sat,  6 Nov 2021 13:38:01 -0500
Message-Id: <20211106183802.893285-6-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113838_847939_5521271D 
X-CRM114-Status: UNSURE (   9.33  )
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

The i.MX8M Mini has a Hantro H1 video encoder which appears
as a media device.

Media device information
------------------------
driver          hantro-vpu
model           hantro-vpu
serial
bus info        platform: hantro-vpu
hw revision     0x0
driver version  5.15.0

Device topology
- entity 1: nxp,imx8mm-vpu-h1-enc-source (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video3
	pad0: Source
		-> "nxp,imx8mm-vpu-h1-enc-proc":0 [ENABLED,IMMUTABLE]

- entity 3: nxp,imx8mm-vpu-h1-enc-proc (2 pads, 2 links)
            type Node subtype Unknown flags 0
	pad0: Sink
		<- "nxp,imx8mm-vpu-h1-enc-source":0 [ENABLED,IMMUTABLE]
	pad1: Source
		-> "nxp,imx8mm-vpu-h1-enc-sink":0 [ENABLED,IMMUTABLE]

- entity 6: nxp,imx8mm-vpu-h1-enc-sink (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video3
	pad0: Sink
		<- "nxp,imx8mm-vpu-h1-enc-proc":1 [ENABLED,IMMUTABLE]

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 725c3113831e..b4c204cbced8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1289,6 +1289,26 @@ vpu_g2: video-codec@38310000 {
 			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
 		};
 
+		vpu_h1: video-codec@38320000 {
+			compatible = "nxp,imx8mm-vpu-h1";
+			reg = <0x38320000 0x10000>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "h1";
+			clocks = <&clk IMX8MM_CLK_VPU_H1_ROOT>,
+				 <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
+			clock-names = "h1",  "bus";
+			assigned-clocks = <&clk IMX8MM_CLK_VPU_H1>,
+					 <&clk IMX8MM_CLK_VPU_BUS>,
+					 <&clk IMX8MM_VPU_PLL_BYPASS>;
+			assigned-clock-parents = <&clk IMX8MM_VPU_PLL_OUT>,
+						<&clk IMX8MM_SYS_PLL1_800M>,
+						<&clk IMX8MM_VPU_PLL>;
+			assigned-clock-rates = <600000000>,
+					       <800000000>,
+					       <0>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_H1>;
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
