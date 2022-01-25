Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1284BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3esdphZiXiue8SliynOdnXDcSHDXi2XtFzWCGgSgm5o=; b=VBxAsTp4zq1BKK
	HnhA4lugxtGTKspzxO6Xn3t7Q4wSzmeEtbTrgknNfgSOh7tnj/EsAlYuBFXdhsGp2hvJXAavpicmt
	wK0mktmi+Y60IfcIEf6pfCPdN8h40fjRbie6E16eI/4U2M/Ytj6YpcZ6uQGnUhUa5hRKBLgDJaAPi
	qrmICqulQaOSRWyD82O961UZyCrc1wDGk8FKPJM20IKm72xUCueBG8qK76sb8MkXhoJqU0HSrWUoI
	hVF7vSomoanfBZ8jshkKvco08O9RCgW7ZrGIWuCeUvAe5WzFOQ/7nL5PEu/765OJRF/dBpYXMcRGq
	TLmqrgW29Ds/we703G2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPb3-008zRm-40; Tue, 25 Jan 2022 17:27:09 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPNE-008tUn-BR; Tue, 25 Jan 2022 17:12:54 +0000
Received: by mail-io1-xd34.google.com with SMTP id n17so8622306iod.4;
 Tue, 25 Jan 2022 09:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=erjBKsHCbTFn1bNJZRE4/B4FWXxROM3zXPT4j5v41B0=;
 b=Qvc/4Q8LAUUm6mig1v7jRED7ZQR+Lmj876e5fQ7onKxHmsRvWUSdwQUaOqTJRlXL4J
 k0XAmAX926nfOedOT/dC9YXrqDhvYDcqkMqOkCr+EBQhSvjp+7utIdItkhsymSBgGBj8
 +q8K0QYu3ym9kjcFN3rWZ1H//vX7xk4wmpoM6KQvluqevX/ERkspc2VtnsvTLAhC3PFT
 eKIKqKTqKhmbAME3LYLBLQIi9D1SQl6NeUEeXCi8jm5wSXcXo/ZzjK43M/+KSDjEtqcV
 cG5wnNEv85Zd4Sv2/VVm/lPVWdDYF0gB4nbmuPRDShjS0j1ABaPWUKWHJQ1tZKxFNCT0
 3RWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=erjBKsHCbTFn1bNJZRE4/B4FWXxROM3zXPT4j5v41B0=;
 b=UJhR0SV8jue6Nu4xSS1XWd/wzw2jpDAdp2Jd904jzKEgPstdhLW62QaDnrZKWlCPPy
 SRwTkMNE2UpGV+USZ4BX3wSXJW/HnYtILWuM3H6IWpg22/xg7MN8ESmOPqjuIj7t/umR
 SISFGSFYj/qoCIh3HLihkjSM9v6iXFznwY965AFulWEncUokbTZro0F+aRYnh3gluzWU
 JYfH1nat13zbiKDfx53bOuJepfh7PSZFv2xj1dJ4DXnjkYZ3FD7tRXpja+G25lft/T84
 fa3xciQm5qq8GR+LgoSX+kQpFlmB65VcUFs2r2KhQnslpGk6Lbu9WlQGnhumYqrqf/ct
 liiw==
X-Gm-Message-State: AOAM532Jje8evvWe4gzyMzbap6BBpeCFqrJAqXy2Yna1zyHOARaoo7cm
 a5t/s0QdwUmgFBHhC8iUyg8=
X-Google-Smtp-Source: ABdhPJwxZsBDj2g3gLA6p81rwxeZuPJpTDfsA/04BwXCKVHwGCrrRTsOIci3D55WHnEYjBtoZpqRzA==
X-Received: by 2002:a05:6638:32a5:: with SMTP id
 f37mr9733167jav.208.1643130771042; 
 Tue, 25 Jan 2022 09:12:51 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:50 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
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
Subject: [PATCH V4 11/11] arm64: dts: imx8mm: Enable Hantro G1 and G2 video
 decoders
Date: Tue, 25 Jan 2022 11:11:28 -0600
Message-Id: <20220125171129.472775-12-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091252_514536_6EE0183F 
X-CRM114-Status: UNSURE (   9.25  )
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
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

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
