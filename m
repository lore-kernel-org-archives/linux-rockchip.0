Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71830C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:02:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A6DE60EB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:02:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3A6DE60EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM/NfKc0LrELkqjHMNtuggyMDUcgSYj8JBQxI9lT80I=; b=LRL37vTug9OkGY
	4KiS9VkFEg7eiN44xEUR5Z6tDK82bfbS4Hr0ZfOy1O5O4Q4l/Ngb9sScboRIxK3HFPpkpXey0rIu7
	f4KooqGkVjA1KROtY0WMq0+Vu9Bfu8Rp/irR4HqVaLphFv4tgsFyU/LET39AR8J0Z+uRatOkHXf1A
	ff45HtuJrN6d8Xx1z5TPp7rsd2u1k5lGsmsIfZKHvuncBz+ozDW2ok+P7QKiIOtl8ZX4IneZoM6ad
	+fq20z5a1HcPX2V85nPi9lqdz3F6MBm+gqFh5QjESGZKhI0QAGuk7lfF03mbJAedznXMlugU5oHZZ
	DRCHbVHg0Hel/8QQMAtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nt7-001yKk-07; Wed, 28 Jul 2021 18:02:37 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrZ-001xog-H6; Wed, 28 Jul 2021 18:01:03 +0000
Received: by mail-qv1-xf29.google.com with SMTP id s11so1990550qvz.7;
 Wed, 28 Jul 2021 11:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EK6nzEkguohvBwXyakdiH/QJLGvW91jjn3gEUQ1x4MM=;
 b=Mu8W82VYfuKO/sPs6CaFtxNPJxGUIXY4jRnrfbwEZdJ9HL6WuGewBegPXmAplt+7tZ
 he4KGNfrl+69Z0BlosYNmNkRZAk63sbgZi6ZWr8uFaU+ibqPW+5FfDNXf6fBdt1eWSNx
 yNhd2kQVGJK4Bv4NkAYon2c8kFK7o8fcVMBcx5v2MLG1RgghDp0a2gUKajhCcp8uiSuw
 fxzn99ZIQpnKOXrK9eKLNLN85Cz3JMY1zzr+Jw2OsP/TsI7E6IrMN0uOQIEKl37QjMRR
 M8HX94Xb5HV0bBSeVP1FBJNI0xyN+f3+Rcej901RnmTVrG8G479cnhPI9wEhWT59nvg/
 XX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EK6nzEkguohvBwXyakdiH/QJLGvW91jjn3gEUQ1x4MM=;
 b=tZ3JJk9CTHjLWtQiBWMAwvraAERSCLGt4dBQlfp6DC8/uS9JVnB8gj8G0Mnz0q4OpF
 nJF7sY/nazfWfwATaRNQ0jr1goX3qCpKNATlE17imfxAuBhQ3Kqdx364PeWe32MRpl5w
 6VVXD/b+4DR5z/iXXsTwASe2ET9NdOHfTuqMf8pXgnO2UmPJJl3jCenOoohdyCUnauwm
 DoumGWSB6hf3rVfEb1HPH/yFJ5dE4YfiRSbUZpjOwLxu2EHICW9aLTAfuflMm710sfNe
 BMMcU76J40WDSam9pQvo9vEAvaQi/CXOmEV8syUwGOSCmfsEHjJS8BC+N9QorJEDwd09
 Qivg==
X-Gm-Message-State: AOAM533qsk81AOPWrp0GvOq/mw9FP5YMPpwK3sFVjPh9njuD2ZFV79Tt
 y3kN5T2Zyratp9VWf7+P9KU=
X-Google-Smtp-Source: ABdhPJwCXPPiJQZuLfP1ol4AjxtHB4IjrlQ1qXsD7VJt/scQ7ewVpgFAFdDzeAs4Fdhh/pOjWLLAjg==
X-Received: by 2002:a05:6214:1cb:: with SMTP id
 c11mr1225044qvt.47.1627495260103; 
 Wed, 28 Jul 2021 11:01:00 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:00:59 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] arm64: dts: rockchip: add rk356x gmac1 node
Date: Wed, 28 Jul 2021 14:00:30 -0400
Message-Id: <20210728180034.717953-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110101_615429_B4CF0384 
X-CRM114-Status: GOOD (  11.42  )
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

Add the gmac1 controller to the rk356x device tree.
This is the controller common to both the rk3568 and rk3566.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c2aa7aeec58d..fbd9f1c366ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -344,6 +344,53 @@ sdmmc2: mmc@fe000000 {
 		status = "disabled";
 	};
 
+	gmac1: ethernet@fe010000 {
+		compatible = "rockchip,rk3568-gmac", "snps,dwmac-4.20a";
+		reg = <0x0 0xfe010000 0x0 0x10000>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		clocks = <&cru SCLK_GMAC1>, <&cru SCLK_GMAC1_RX_TX>,
+			 <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_MAC1_REFOUT>,
+			 <&cru ACLK_GMAC1>, <&cru PCLK_GMAC1>,
+			 <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_GMAC1_PTP_REF>;
+		clock-names = "stmmaceth", "mac_clk_rx",
+			      "mac_clk_tx", "clk_mac_refout",
+			      "aclk_mac", "pclk_mac",
+			      "clk_mac_speed", "ptp_ref";
+		resets = <&cru SRST_A_GMAC1>;
+		reset-names = "stmmaceth";
+		rockchip,grf = <&grf>;
+		snps,mixed-burst;
+		snps,tso;
+		snps,axi-config = <&gmac1_stmmac_axi_setup>;
+		snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
+		snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
+		status = "disabled";
+
+		mdio1: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+
+		gmac1_stmmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <4>;
+			snps,rd_osr_lmt = <8>;
+			snps,blen = <0 0 0 0 16 8 4>;
+		};
+
+		gmac1_mtl_rx_setup: rx-queues-config {
+			snps,rx-queues-to-use = <1>;
+			queue0 {};
+		};
+
+		gmac1_mtl_tx_setup: tx-queues-config {
+			snps,tx-queues-to-use = <1>;
+			queue0 {};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
