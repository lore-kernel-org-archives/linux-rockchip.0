Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708B9C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 06:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWwy4/TFU3NCldgOtxXF4nmAqdW5Ff85cWBfDxznoiQ=; b=NmJiUEfxsL5gGQ
	n1fA8Kr22VKA/GSciCNl0gBdTCKkWvUVAwIJb9zZrJLxczCZWRcTvkVKpDjteyEZQuiHu9J0J5LzB
	OwNzE2tulPjW7YH7WYRh4M/omoKMzV4Pa/ahc61r2Y8eK/SUkn0s0AqFcOkmdzXO45PJ/uKgdzCQ3
	g1StSpnkqN/zxQrnPTb0T9teg40riJbxsQsvKbyLbxm7JOZ9eRe+fsFEw1KOjm+4z7naTOe622hYf
	CCfqk425HgDPno+KnTaCWA3W/8jwwg2OMUB+RJNUrLyVPs1Vbz8TiAGRzZRUEJGAXyp6LPvg1t+sg
	KprP4RidqhrHtZA0Tmyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzv09-00BjZM-57; Sat, 11 Jun 2022 06:53:41 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzuzw-00BjUy-EU; Sat, 11 Jun 2022 06:53:29 +0000
Received: by mail-ed1-x533.google.com with SMTP id w27so1361362edl.7;
        Fri, 10 Jun 2022 23:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wN1RtBcP0tZreOj0xnYy6ghrnHUaccRwTp8/xCskyk0=;
        b=drXJ2Nnp1HsY9uMRMmhBW43v8r/PuTtIdKdbLIpof4gruMkvSO9pUpCknH8Xze7s5i
         ezfcg00I+GMnbUtXVO0iog9WBGxasTz6/b/C0OOQppbbrCuDsflzsHsmyjAYz/TVRdsg
         SlFUjt6k7bFygzYHTHEczu1gfBmtU/FnDFRrZUOBRK0JCfyJ0dSBW3tKtb5U4sw22a76
         3yd6vG2OwqY3MMgCUdCAoiic1bZa4+lwzies/FmLyQXKXC/F/bFsEI1xAod70+5Etp7J
         /9fJx9Ufx65RoNhSNmmYJvpNLU5e3OxEH0WkW/k1GDfA5g67POyzP9sY7fbkkf2gu8Hj
         PNtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wN1RtBcP0tZreOj0xnYy6ghrnHUaccRwTp8/xCskyk0=;
        b=6h4IeksW6Cu6o+B59sEM2Rsuzrt2ceKtWOfQTR1kXLHK5d8AG11VFITzPvEalzqe2a
         zlJcXspnLAzLRhAHWq+6kYu4ANlbWVnhRgwc78W7Z3OodR4T85+i0KWuCFyxyIJUGu98
         CQViN2pr5bo1I9Vbpf4BwdouuM+e04lrUmxzIh2jj4+7D8uxM2t5DLJL+Fri7PR60x6Q
         LFmGYgR+J6vFW+B4hFMZbwSLI7pDE7aphyr3G7Sx15vFtV4WBFtsqYMPLMiHP/NJhipI
         7sQTESsAxe5GOt9zs+Caj5dSKyUw0Vb6J/QlDW+ypMP875P6t171qvPo4xLm6CNpcWjh
         50pg==
X-Gm-Message-State: AOAM5321ZiS6CSxfSYHvsjQ2kGRtvuRpPkX96xrgYWrxF4vET2olFCJh
	ohZWTMmgfWfnI1jU9NZSBAw=
X-Google-Smtp-Source: ABdhPJzW988HLxC7qcZIhf2eFxRPIiplwpsgoZieAq+H2ABUYvgz0HpnzySBj0UsaABVKLR1pcC4Ww==
X-Received: by 2002:a05:6402:ca5:b0:42d:dba5:b2a0 with SMTP id cn5-20020a0564020ca500b0042ddba5b2a0mr55402932edb.197.1654930406307;
        Fri, 10 Jun 2022 23:53:26 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v14-20020a056402348e00b0042dc25fdf5bsm874261edc.29.2022.06.10.23.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 23:53:25 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] arm64: dts: rockchip: rk356x: Add HDMI audio nodes
Date: Sat, 11 Jun 2022 08:52:59 +0200
Message-Id: <20220611065300.885212-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
References: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_235328_524207_63346655 
X-CRM114-Status: GOOD (  12.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

This adds the i2s0 node and an hdmi-sound sound device to the
rk356x device tree. On the rk356[68], the i2s0 controller is
connected to HDMI audio.

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index cc1c5a65c5e5..319981c3e9f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -183,6 +183,22 @@ opp-800000000 {
 		};
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,cortex-a55-pmu";
 		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>,
@@ -951,6 +967,23 @@ spdif: spdif@fe460000 {
 		status = "disabled";
 	};
 
+	i2s0_8ch: i2s@fe400000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe400000 0x0 0x1000>;
+		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S0_8CH_TX_SRC>, <&cru CLK_I2S0_8CH_RX_SRC>;
+		assigned-clock-rates = <1188000000>, <1188000000>;
+		clocks = <&cru MCLK_I2S0_8CH_TX>, <&cru MCLK_I2S0_8CH_RX>, <&cru HCLK_I2S0_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 0>;
+		dma-names = "tx";
+		resets = <&cru SRST_M_I2S0_8CH_TX>, <&cru SRST_M_I2S0_8CH_RX>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s1_8ch: i2s@fe410000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe410000 0x0 0x1000>;
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
