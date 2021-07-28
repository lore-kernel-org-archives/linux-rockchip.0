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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F291C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:06:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 325DD60F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:06:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 325DD60F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++qGcNsSkIPNNmlBGmWA8f0xhGwOxD0Ghv+zVj0RZfk=; b=rl8WjrWuMx2oO/
	vee7drnDI/sZh29C+p/ngYv6iJ1qBJBBDBtg3R0PTLXEM5qQKxud3Ew/8IUNtOMpyJREc7IjtcviJ
	eAmL4+6l1PV+d/xPGpq4lgFB8nsj12HDz0xnmrT5CKyfBztDeHI0T3d8/G82t84Z6/Y+kJ5aiYa4I
	amx3FmUvgppQ3KMIXjiC6IpJ6OM9STCZZxVJ6m9TvMEP53/wz05P8gRgWU2DrceH/jfGRxqGvCiH9
	tmbx/K25GQfCDzX+GOewK5dlUWcANRF8SfitEZK0xg0cMRSg6Nly0weOBzlZWBrgvRmxKw7KF94KU
	x50+GMKQEzICiaR3g5KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kCz-000xB6-CM; Wed, 28 Jul 2021 14:06:53 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2O-000ruE-Kq; Wed, 28 Jul 2021 13:55:58 +0000
Received: by mail-qk1-x72b.google.com with SMTP id o13so2224146qkk.9;
 Wed, 28 Jul 2021 06:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GgO3gM/qgV5j5bSek0cT3huCLqsL7htsJRkhag9gcPQ=;
 b=nUonId8Ux9H+Q1PLhPVCcvVhhM2ufdC1ixNx/TtrNFGyrsPxlqL5nbT78pupBjE41z
 5PVaMChvHpl8pjp/nSotW01U3CGoPjozNv0lVpi/fXVOmhaNWAnQpJkMa41tqGzqmvXp
 NM+//0YGIsel7Dhg6AA5Gz47xgZisq86xNW8trsMJ6uMD0G2Z4WgeYbTyK0hOQBoIw5U
 JXBAjinAoPxWxgZ7uzszDrpPxvPaZvT0GWqI/HtAWuPnMOqPHdCYTTCqR4SFa12IevCT
 3l8BAbpKIdyya0jd451Zuq3E6Fr4egz09EanhOoyNpHBB48JL5wq/9XSBabD7ns+PY/9
 dvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GgO3gM/qgV5j5bSek0cT3huCLqsL7htsJRkhag9gcPQ=;
 b=BWUthaaZck3eIf1f820LiG5f0qxkUQwAlL6ccdgA2uZofpwGC1/rVq3Fe1Fyid7flx
 wLhyvEekfEi9zASBAFX15kTvqnNhihlHC3GprjVJO2epUswxUfAtlfUb33oYvUcqQK4Q
 CaBgEhSXDemr0ldNB4k5dxKd7BOw7lpVUYwbA0kltoc0Pw01PLovvf8ikLBi9s+DmwCI
 582s38eBiQILSGy7FoKr332/YDUcoAMamoYYVBmngvr3nZTkIGHMpmOySuPCtrSefuL4
 rlcuV2zacghRxpK1n6UpCjIFyRCNUGU174UhJWyW1DK6i3+auLt3M9tCMfN/5Cfb7Bu5
 e12Q==
X-Gm-Message-State: AOAM532/FYxQrf3UBDIwPSTjev0MGKuYXi5T1LU7CzgBxIlEPtBRWo7F
 16cxhHZZTWxc1AEzPhVL5NQ=
X-Google-Smtp-Source: ABdhPJy2oT201nlumhEghSYmup93Xi96Yjn/wFnGRnKG9n1L0wCYEgxK0QLaj120CZ2Df3+Bo14ooA==
X-Received: by 2002:a37:a413:: with SMTP id n19mr27085612qke.462.1627480555518; 
 Wed, 28 Jul 2021 06:55:55 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:55 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 4/9] arm64: dts: rockchip: add rk356x gmac1 node
Date: Wed, 28 Jul 2021 09:55:29 -0400
Message-Id: <20210728135534.703028-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065556_743569_316C4912 
X-CRM114-Status: GOOD (  12.39  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c2aa7aeec58d..77c679304916 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -18,6 +18,7 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		ethernet1 = &gmac1;
 		gpio0 = &gpio0;
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
@@ -344,6 +345,53 @@ sdmmc2: mmc@fe000000 {
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
