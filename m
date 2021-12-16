Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0657C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIo5PltK/DQk780Rffh70WRv2LTkdd/mMwXDGFhocog=; b=B9mELqX6ZxmwdY
	giwD0HYV5Gso3LNp27S44oJUYpZP43bbrKCIj5otLE1QH9myMUgBt576l054ipz0x8YO+KOcHcyKS
	I/TwqAvxtiy13HZZRYMfbJtjlQkSMEVp8MMt8BvP00Xy9iz1OA/09lRRx2QYAwE/tUm67tChfd1fg
	jQTwMFpBxqUbo7GWo4U735rplFFKfGMUTIy2lI8CCnJidF7g+tRySR/9alK0IXjBH6sh32+qckZTh
	sQWYEQSJ/9tIlPfLCGLyzRa/8kpP0O1vifL+9SZfhB2Gqcg4f+7DhjviBO7OEV8scisUdbPxNOgFp
	bSnJ8LU49XFT7wGweE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxonb-00580o-SQ; Thu, 16 Dec 2021 11:19:47 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohi-00552P-46; Thu, 16 Dec 2021 11:13:44 +0000
Received: by mail-io1-xd30.google.com with SMTP id x6so34407902iol.13;
 Thu, 16 Dec 2021 03:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nvUUVsWm6ekCm3nrMfYw89v5CU88r8fv3TmpzrnxrvY=;
 b=kCpOLytv/ruCDnA220I3k1vMj6ogzYRZtglgZuiIWDB5Y1pUMBUpGPdjbX6Fb8xVOs
 XRYTnzTGM8SrtmcbIsLUjvrFhQj2j1lKEhaofIqIurUyPhARGPd4B7XufeEJZ7M4GGEa
 t7A2IReTRBnkFRP+974Am7tKsn8oaHfHIw2wc9qztD8CdhhHHQu8PX6qLROE2HIIZF1/
 A6O4vcZLIAGnJF+Th3wTJ+a/7grUQzgJTFjefmM811hoVjpfwCexPiSAG+t/sXZ30MKF
 iS2D/Eru9mXwc3/bOUYH5UrNzDVdgV/+OpfpKtF3TL7Y6mKAitHUo+eK6MXML2WwEJd5
 3llg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nvUUVsWm6ekCm3nrMfYw89v5CU88r8fv3TmpzrnxrvY=;
 b=0ZTE0W0Xd4Uvmd+i7eXwYZtFUL2TCo8ZXUQx2x6KeLKwikuLFDgFcydyrtkg4/5zm8
 C0+MmvXLDPy6yeGJ1xToagVtG44x5sp717C5I5V5RHXE0+oTbFjv8ZiW29EOKu94yGzF
 HP4zMsYCtpN9J1RNQ50BreSFL7aZmFmZK0dGuRItqaK7ZfZ4n9SmrpvmYKtsdxzGavvw
 fQJBnbPJ+uOHdhgxmkRa/vDvWx7ppD8D0km3lSG2+84JxlHrnALW2oexGmM3wjUP1gaC
 0CRKg5FZqUfdv2y4s5WepsZ8NziAYiPugY0/ZnvewAylIv2vyW7vKZ/+CAxbYVzZ4J7V
 hJiQ==
X-Gm-Message-State: AOAM532CQ0Tc+WeWBUnHZi7yQ+0HHWOYsNIGHqeBMR1hloTdLkQlMrl0
 30bhB1woySj8gSTAemZIAF0=
X-Google-Smtp-Source: ABdhPJyx3mLKcBbz7ovBGCuPU0wGKDL8WPY37sLIEEOjToMRjDITKfCeOiqI8/qHqykcbSqBVSkGJQ==
X-Received: by 2002:a05:6638:3891:: with SMTP id
 b17mr9451849jav.100.1639653219909; 
 Thu, 16 Dec 2021 03:13:39 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:39 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
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
Subject: [PATCH V2 10/10] arm64: dts: imx8mm: Enable Hantro G1 and G2 video
 decoders
Date: Thu, 16 Dec 2021 05:12:55 -0600
Message-Id: <20211216111256.2362683-11-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031342_203931_8D2FE94F 
X-CRM114-Status: UNSURE (   8.79  )
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

There are two decoders on the i.MX8M Mini controlled by the
vpu-blk-ctrl.  The G1 supports H264 and VP8 while the
G2 support HEVC and VP9.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index f13d31ebfcbd..ad1a83c25cc9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1196,6 +1196,22 @@ gpu_2d: gpu@38008000 {
 			power-domains = <&pgc_gpu>;
 		};
 
+		vpu_g1: video-codec@38300000 {
+			compatible = "nxp,imx8mm-vpu-g1";
+			reg = <0x38300000 0x10000>;
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
+		};
+
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mm-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
+		};
+
 		vpu_blk_ctrl: blk-ctrl@38330000 {
 			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
 			reg = <0x38330000 0x100>;
@@ -1206,6 +1222,12 @@ vpu_blk_ctrl: blk-ctrl@38330000 {
 				 <&clk IMX8MM_CLK_VPU_G2_ROOT>,
 				 <&clk IMX8MM_CLK_VPU_H1_ROOT>;
 			clock-names = "g1", "g2", "h1";
+			assigned-clocks = <&clk IMX8MM_CLK_VPU_G1>,
+					  <&clk IMX8MM_CLK_VPU_G2>;
+			assigned-clock-parents = <&clk IMX8MM_VPU_PLL_OUT>,
+						 <&clk IMX8MM_VPU_PLL_OUT>;
+			assigned-clock-rates = <600000000>,
+					       <600000000>;
 			#power-domain-cells = <1>;
 		};
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
