Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04AF0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRhJ6FpAtVQYjWCkWgP7eAO49QD4pboBB2Zj0wTa72o=; b=id9+QT3+aVmit9
	2pGsgMu/xrWn3jpyQ+KZ26jfTbjIlUEew5B0FG5pvtlRtZ0ptsFZ/k20hsnGRbfujZdCWl0CRqn4y
	jyMxGcn4Kws7Ey7SnK21FR8hADEpKG3ObLGOO5WaGRw73q2Nqu52J4jxie6UkB7wiYYIzEiIS3vzP
	penzjT5pJdCJ6nwdfGhx19GQIwHcn5dDYKdaNYuUponKGWYHEAFciYsYws1NU4gsmd06fQTuvWfGQ
	QEj24fZ4iCI7ZBYj5kctvZ+tsYJ0B1o2if9rdehHlaSD5NYh1Lm6P3I0z7H3TtBaTuFgtreAjGCFz
	K9f/fq1e6Dk1jgzSNQlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5qI-00ETsq-7p; Wed, 08 Dec 2021 22:55:18 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5mB-00ERe3-5N; Wed, 08 Dec 2021 22:51:04 +0000
Received: by mail-io1-xd2c.google.com with SMTP id x10so4567500ioj.9;
 Wed, 08 Dec 2021 14:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CmYKrk6BY+JkB/hlDlt3q1jLnYSH9OFSxGsl7p/faDY=;
 b=g/I4+F+JXnzH/TubCYTX76MFnsz+ZsY2EqNzT1DTl+068Y3W5T5xKg5k8zT5az8lhy
 Kl1+ZyGfSPXGYsIOqQf8C5JdzbjscEZwDhs8hqY9OjcS/hOlW/nPj7nY5BWE9qkGxifi
 jP0lvHHCW2w5WiW1wrw0hyssDH+Gie8/xln4hA3Gj7ZTNT2JHu7kql7ZzG8+d4PGDuob
 DKtBRa/yi7ScSqeUjOrx5AHvZy3Lnh8l7Odt1XqODPb+bsaHbBQeR+7VD+DiTph7ShWq
 VURawxVCm84z8SQ8h74V/wL5wJQsXSfDgCy+YUjjaK/gt8Yfc8nzNjoGF+GXxxStrKde
 F3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CmYKrk6BY+JkB/hlDlt3q1jLnYSH9OFSxGsl7p/faDY=;
 b=ciOHwyqOIrACoodum4wGYKECQtRjL1hxz4ePH3xJ5Jxy/ItHnfwFiRBAvMZTn+E8wk
 eZngbFyU+4jNB8vsAHwSzuYuwXjV4o0VeTl2esnX1SU/hqj4thqpQEdSXUQmZvGxBgqS
 t2Til2SF1/MnsPlnYhbnLURnKHuzvtU8VD4tDIESAwzrmr+qOKdSlxEw8wNtkZcgXPDS
 dmYXh6sp6IuWeCBLR9Nj5m6iYTltdKlx30sLq8VfLZRftT1fEU0/3ij8KBCXart9s6ei
 VmkgqR9bLC6H0tOoAZsflb8nwa6ZMNe7JJkQcI6f7zQQx4BoHDHpxcCD7151CxFrw9Xv
 QSEw==
X-Gm-Message-State: AOAM531XOTW0S0Blbm9S8OCXVppxLgXdsfwz/garBj0ODtO+xruftXtQ
 HtFcsQqp/gp4/tm2rmLEuPA=
X-Google-Smtp-Source: ABdhPJxiaJAYaeU0Z9vSpYSyUwXqVRBqeiOQq85i/0XyqKBA/pEz+No5RNx2VUK0NfXDTsaq0yOICA==
X-Received: by 2002:a05:6602:3c2:: with SMTP id
 g2mr11081040iov.65.1639003862036; 
 Wed, 08 Dec 2021 14:51:02 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.51.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:51:01 -0800 (PST)
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
Subject: [PATCH 10/10] arm64: dts: imx8mm: Enable Hantro G1 and G2 video
 decoders
Date: Wed,  8 Dec 2021 16:50:29 -0600
Message-Id: <20211208225030.2018923-11-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145103_248784_719DC2A6 
X-CRM114-Status: GOOD (  10.62  )
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
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 28 +++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index f13d31ebfcbd..4682f1f5238d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1196,6 +1196,28 @@ gpu_2d: gpu@38008000 {
 			power-domains = <&pgc_gpu>;
 		};
 
+		vpu_g1: video-codec@38300000 {
+			compatible = "nxp,imx8mm-vpu-g1";
+			reg = <0x38300000 0x10000>;
+			reg-names = "g1";
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g1";
+			clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>;
+			clock-names = "g1";
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G1>;
+		};
+
+		vpu_g2: video-codec@38310000 {
+			compatible = "nxp,imx8mm-vpu-g2";
+			reg = <0x38310000 0x10000>;
+			reg-names = "g2";
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g2";
+			clocks = <&clk IMX8MM_CLK_VPU_G2_ROOT>;
+			clock-names = "g2";
+			power-domains = <&vpu_blk_ctrl IMX8MM_VPUBLK_PD_G2>;
+		};
+
 		vpu_blk_ctrl: blk-ctrl@38330000 {
 			compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
 			reg = <0x38330000 0x100>;
@@ -1206,6 +1228,12 @@ vpu_blk_ctrl: blk-ctrl@38330000 {
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
