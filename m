Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 04:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy3AfN5/M/4uF7Tclh83Hti4MgyDPEZ3a2mwEZLTUmY=; b=dRv0dv29PRnmd2
	8CsuFJz6JiqzQIcD+MC0x0y/x34iWIruUQ4a3xwsanpyPrRGjIbqUtUE6FwDTgG9IbP32BAHCiGoP
	f0bvhZl5bEf8tjZ9nk4GQr0+DxLBwcuGxCHk8ApMmvbqAgSMtEt5ujmd3MUwJZBPST0PXnco1VZwN
	Vpe4CN3/gq5gT1N0Vb+f40ZTvmQy+XWQ9YBN9TlgIzgXQqMwN2VJaw4ZFewu/A6lTyzUlxE8mrjnD
	mCK5xEXe2wAa8D/GvY9XgrbcTNW+h7i6yovJ69bIxUEWPPnMtYFd788MOaaC5BVNfUEagKG6C8PwL
	fx7CUQzizpaHyeXfNCbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdXz-00Asfc-5q; Thu, 02 Dec 2021 04:18:15 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdXS-00AsU9-IA; Thu, 02 Dec 2021 04:17:43 +0000
Received: by mail-io1-xd2a.google.com with SMTP id v23so33735786iom.12;
 Wed, 01 Dec 2021 20:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ap+Y2Tz8z5LcHzGO6SA2tif2EyiHYR6r3DF4Am/aoA=;
 b=IMVFwDqLjFJZ5830/8WtIIy574DKHzJnA5rl6QuLvDGsR7M9+Tz/ukHLXKwNgW0RQJ
 gYjjNpYjne+UzkYi43KonHunWQOWVUKfyXmZQBp/bzw6njVIyW91+ha6rNQ+HDYz51B1
 qlgtGMqqY12hY+NekMTiYMAqFzd4QrWlKO3D4X6nQa9SdJ2lMA2OsiR9un7TJmtqgy29
 i3/wEsM6CnJpG11zAZbTh52FVhUFOXx/AIXC+sYGVkfjw+1UF3dABRLXfcAHuG6q3Hlk
 4JaM8IOYdIuE10kSrx4+ZxJe0SOzE5pHqxmfbYHMWg4Jltb5eLjH3okjONqSB59U6LzY
 z/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ap+Y2Tz8z5LcHzGO6SA2tif2EyiHYR6r3DF4Am/aoA=;
 b=RIpI21WVAKH49tAo/YWEtTPnegH5tDZjWlhvXvF8XcgBUNZ21JPUW19Upb3KIg9ifc
 NcCrgOtdwJ7+VyNz/e7zC67px54op/RxvX6/ppHzMyhhxOzCFxsn6dbhhRQJp48hMDih
 fJPD5vybNp+cRgLRVVaDccoIh0n/zHwxA6LoeuIm2x9j3QeIP5NnIBmpWyPMQASzU942
 wffFm1l1SyMJ5qXLOdD15MIEMbuZbdXrKqbRcOXMmo8UKXo0vQ3ANJ8iB8eRawhpVL16
 wJl6YOCDUU3282sHJKCvNePZghd2oqlSEFcfDmrb+Tn6vqUn0xFN4Dug2KWFfXywGMmN
 +viA==
X-Gm-Message-State: AOAM533q9sqdb2mVWOyQrFei4sSTt/L72Qzy7tIIR6kMYl2ohRSWYseZ
 Vu443TqdezJvze7XfqWJa3k=
X-Google-Smtp-Source: ABdhPJww0AmjAfFnMxyfx6OuE4CZBudf33HaTR6dEqM5D1jeGQF3UfUTzKqHHMGShMO/7lQNUKwPEg==
X-Received: by 2002:a05:6602:45d:: with SMTP id
 e29mr13868300iov.202.1638418661156; 
 Wed, 01 Dec 2021 20:17:41 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:c405:2c26:c2b8:506e])
 by smtp.gmail.com with ESMTPSA id t14sm1030603ilh.62.2021.12.01.20.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 20:17:40 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, tharvey@gateworks.com, nicolas@ndufresne.ca,
 aford@beaconembedded.com, hverkuil-cisco@xs4all.nl,
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
Subject: [RFC V3 2/2] arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
Date: Wed,  1 Dec 2021 22:16:27 -0600
Message-Id: <20211202041627.291625-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202041627.291625-1-aford173@gmail.com>
References: <20211202041627.291625-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201742_634243_8AEE7D97 
X-CRM114-Status: UNSURE (   8.52  )
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
