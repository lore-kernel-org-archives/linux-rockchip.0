Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 645C5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5h1Gjr5MgG6PnOhJUy5ekITFwbcSBfEY6hf9yUPBEpo=; b=SuX1uE8s/IQbN5
	S+pGT4zs3x6sd09e/c+lnXOPn4YG1aolr6DviP4v25SZ0C8te5s+cCU2Ivk995Ucp0oX9TkKGVG8D
	2Ze8TG5k62B8OPBkOuVTsSIsAAxqyGHHYYFJ8GkSAZh5Izm9Hzei+AkhEYWCvFIK24AS8MbE0aMW9
	5l1UpyRTItxHM0jT/uhOASHzMXZGuijgedGeGaefEi+XiT2HeOaaHJUOk1y1QDcholEe2P5HhK3ia
	g3J5Vg6mk04d3px9tnvXX/wPmzjfdU4jNb3uL3BdO4Xx57iNcGnmhfSKgm7IVrCbm46b1PN3gTURu
	pATrGYjnACgmas4XYbpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5nW-00ESMc-Qc; Wed, 08 Dec 2021 22:52:26 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5m0-00ERW8-IU; Wed, 08 Dec 2021 22:50:54 +0000
Received: by mail-io1-xd2a.google.com with SMTP id q72so4538985iod.12;
 Wed, 08 Dec 2021 14:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NFogeyKqCKVdpqDGbq1GMkQ4k9jpT6OZfNqojgS7X5k=;
 b=ZwgLTDl9TVxnEXEyb2wy5fHnVtVcSa4P6vcYiVu2MCJlfUm2vs08a0JuuWeCXj08nO
 VCGeyE//fdMtxEVqVoIBclzJKMGaoG9cGjBv3z/WlCo8RryYqbEmSY4nwpJvzT8hqIWX
 cXnENxxOrPCQwkb8bBDP5D25RFHktTa+HOS8NAeWDqgvWdjtF7L7pKDFcaVUh9/DGMFO
 WyP2+owcYUxNzGrz4dj15SH4OYn36pqWQE/GjUoTNt4VxsDeDkqoMsowujt0mY7OeLCW
 uSwWeamZvYX28QJILpcPmwHCAHZ8e5CVJmoLtU3wwYZ+xh8THhyphi3t9UP459mOdR49
 w2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NFogeyKqCKVdpqDGbq1GMkQ4k9jpT6OZfNqojgS7X5k=;
 b=PGiOn144nVaXddvjKKoaXjiWBp3dJWYVjZaEtbQpfQtIUS/AhtDiLfKRu5Fb/BKAY6
 d2di7A8LS/81kWeH9dvByWqP87n2MZDNMgfqTBoMCmDsKy+9+t8b4eeBlceOfjq5dkwv
 XkW6nABZLdvS4poZZxnQOm4AaKJrdPf34gK3LEyLleUn/nE4iCIuBRIlJliJAsyqdb6q
 Ho0K6f2fg85aiMdMnla3ZrhKtxfFUFo5dcmV9cLVWFwRXwLH3+g2A6ekBKpLseSE4u3h
 7R2kxXGuy1rPmxqZzvzRS1DmX5jpWbs8ldaoxETl62+P3O1C4y4r5Oh7+6JOLHJapXDq
 JZPw==
X-Gm-Message-State: AOAM531hj2p5QLVw+qOJsH8XfAQNnlnUZJGCJ9mobS7gAvn5K6fR7Gbc
 2m5PAzJsdP2mcIS+blTTbsQ=
X-Google-Smtp-Source: ABdhPJyoKawOWsLtzfaPmOwvYL9x/wy99YL5HCd1uBj9YOi5nbMPGLBgtfwD58IcW3LHfFc3c8lHjw==
X-Received: by 2002:a02:a11d:: with SMTP id f29mr3402688jag.78.1639003851910; 
 Wed, 08 Dec 2021 14:50:51 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:51 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
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
Subject: [PATCH 06/10] arm64: dts: imx8mq: Enable both G1 and G2 VPU's with
 vpu-blk-ctrl
Date: Wed,  8 Dec 2021 16:50:25 -0600
Message-Id: <20211208225030.2018923-7-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145052_662219_ECEFE761 
X-CRM114-Status: GOOD (  13.42  )
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
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 69 +++++++++++++++--------
 1 file changed, 45 insertions(+), 24 deletions(-)

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
