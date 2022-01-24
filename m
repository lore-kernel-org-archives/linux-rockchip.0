Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72079C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzgQU1FRZfunDKFwGPrCyj2TUFG+ZAE56YPKybAKM8M=; b=tdSiQetRQdTMfl
	7524WAax0lup4ERjrGcyMFUj3wt1ucGjnL97IM99CPZSSBTqreZXDoAeOC+EtrlZYrWO86WlGNlLq
	0ujx5kt7tdBk2AkvRaIXYQU6eDEiT726pFI5/byc8zM2/WHgnECXAQo5YWRWu+ahjbGnRjiCckJwh
	hLe+rjs+RTn6/Qxa5h7gm+9PFI50wwG4NXcmh8nDed6hcGNsK8IKI48ZWANj+1KO5fBky04MG0Du7
	NHql4VUQwc7NNNQQ7rZzf0d6irCIVoDrYBWCFGuv+a7s5/XhXVET9vMWMiAkaaHvjo9KEe4v135z7
	INn8BTSTz/nlkO8ksUTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpDk-0024HF-Up; Mon, 24 Jan 2022 02:36:40 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp9A-0021mU-Rp; Mon, 24 Jan 2022 02:31:58 +0000
Received: by mail-il1-x12b.google.com with SMTP id i14so12607710ila.11;
 Sun, 23 Jan 2022 18:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R2uTm/BD2isTXWldGmoljdaacGOnVbR7Md5p5huP0LI=;
 b=JmMDFkLadGqdIsUwAjemoOsUPgfceF0iUcKiswWmYTYrcE7n0bzZ/Z9tSNY6D4fDNQ
 1EMCefN6u0VGCDqVHP2IOJs1hE9fFQ4rNuAeXJ29WNvjoqXy6kmpG1TCMyeZmfjzxRKJ
 D3bJNlPPVwj0wkSUjvE2mmI9W2Z6z95kj6RDHnof2xAGvib4QIKv6Dx6XoApeBSPV83w
 pjaiQNuTC1XxpSi7nzZjmvrznr3JCej2YCoZq2ZXAjWGdEGwB0IceLrTDTZaSI60Rovj
 nU/dqrFpv6d3mx8SguU5ITyk2raZu5ROKJxC6pM6/QPVlGXU3qRyfyfzG+Y9BFJvTN3x
 FNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R2uTm/BD2isTXWldGmoljdaacGOnVbR7Md5p5huP0LI=;
 b=hepNKP3n/rcAFWN6AVAX7yzE6DpPIAj7p8f/uCIjTWKXkbzxpR32bj15ky4+ebZfUS
 lLYEf90sWfLd6OQem6jGXE6F7H1gMVFEPuC4hJk+OK6CbMYgHt5jMsowtSzQlKTT03h9
 AhZVKtDJAVEn+XiLTwGST9YZQzjWBynHtSoavO9rWxDWkBYB6tV4dIiB9QqeYbIRA9hK
 DmayGitFdDj08Bogeefp0c0RsUi+5dmJDS7iGYGJacYZC1h0/awoCKNsGZHu5CpdPULm
 DZbeSZvW+IW1xDUw41JC5N0bI89gb93zBUB1V5Zi3GdSv0haBk+GXRQYC1X0Ehsp7Ogm
 9KJQ==
X-Gm-Message-State: AOAM531UZ6B+Oi3BVbim0BOh+p5zPP0aokK1Sgc1Pf0B5Q15Yy7EAL9a
 DAhXK7W+y/eb1RjaDVqjE2c=
X-Google-Smtp-Source: ABdhPJzKUaRunuyBFbmDoIVKwmFF8W+zvBreaT8xlFp7AUwcmOghFLRUo5hbPrelnPoJRUglaPqf3g==
X-Received: by 2002:a92:b10:: with SMTP id b16mr7624374ilf.187.1642991515536; 
 Sun, 23 Jan 2022 18:31:55 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:54 -0800 (PST)
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
Subject: [PATCH V3 10/10] arm64: dts: imx8mm: Enable Hantro G1 and G2 video
 decoders
Date: Sun, 23 Jan 2022 20:31:24 -0600
Message-Id: <20220124023125.414794-11-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183156_968655_D67116DD 
X-CRM114-Status: UNSURE (   9.22  )
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
index 0c7a72c51a31..98aec4421713 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1272,6 +1272,22 @@ gpu_2d: gpu@38008000 {
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
+			compatible = "nxp,imx8mq-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
+		};
+
 		vpu_blk_ctrl: blk-ctrl@38330000 {
 			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
 			reg = <0x38330000 0x100>;
@@ -1282,6 +1298,12 @@ vpu_blk_ctrl: blk-ctrl@38330000 {
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
