Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09137C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8E1E60EE2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8E1E60EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYlHk/nXgzpS94xUO0XCHh31F0gz49bK26LbJCVrNmQ=; b=pL2nCGX04l6VVO
	dsQBNYCEZMKzyA4gpXT3Ten8WfPw9L7VKCBJfrKAIUIsR22scfjWwM8dKCGyPyYCwuGlnE/D4qL9L
	0S7XQdOS8L1K44k6ORCCvDMwG4xM0soIWGym2NgVDWuSQRJz1G9baRpFkpYiImKvTXlORpXVcDEB6
	zHAWQPJAJNeCvfji/MAftorEev2gJKPZWYf3mSigytE9Ibhv5KB+W6pq8F5ByL6PYq5lKBd2RSYll
	lTHJQ8MyVAbplc9q4TB62DqpxT/iHVRreUCP9sak+h5BqcKsyKIOVqqR4p3OCfPqhC692sTBealXr
	eXDwS1RRtf+F0tuiDMdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nwB-001zkv-1h; Wed, 28 Jul 2021 18:05:47 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrc-001xpz-PZ; Wed, 28 Jul 2021 18:01:08 +0000
Received: by mail-qk1-x72b.google.com with SMTP id 129so3101190qkg.4;
 Wed, 28 Jul 2021 11:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OkK6x6zm6GWAYlSexAP9I420ulpovKLeZWcigiEH4qE=;
 b=rfa/0mI5PgYXeAiHADQGinO4cVfzsm2WrTDv0/QZj8NgCuAWcQaxNYTB5alyA4Dw+j
 qJLSw4gdjZ8yoZXH18o5NuSyG0N3G+sulL4Zj5HW8Ldvkf1x41jpi/jD2ravFQbCrPTb
 3FUz+iO9FO9fNzctfNas7AsGyZpa0386kPqk8SHToxTJkZMGW+nrzJVlr++zxSdUQ5uE
 jwsM00xrqXmjfIvBTZeAs5HG15EW7U6kCUBEGpZpu46NipWZbDdZ9KjogLsBFmkP5o8O
 7GC0Yq88iilX8Xn7epXTqF0ML6XMlb4cQFLf7NGxRNGoHSA/S1OXvcmtRCNpURHIOdAR
 aXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OkK6x6zm6GWAYlSexAP9I420ulpovKLeZWcigiEH4qE=;
 b=c9TYckDMUYHUwQg/SPbq9SOg30kY4VOP5FiJPneSBVXvl3TTyA7+kI9bYYMkIY05tX
 LWH+GY6Uji/6dZeP8wM3nfGhwTeRnbrXfDDt59jp/EnM2iUEiEjox0kfVacLsRL3e612
 avrdkmjKURLojYwMeCEyVlexQc1Jxs99Qx4ctmqZmpCO+yNleQAuaXBPKmYxtaggDC6X
 4g2XDH9AsmzczkXhHVTxDU9kPzCYKrPmdQjUTE7rG/mIBrn9QNj523eHxn+1rFUGjXu1
 tPNeA0t0S7lue7ruv0zxCRpyvghfHNZMBTN6a46nt9dXD/tSQ9C6oHQ78hn5w7gmSiSP
 Ze7g==
X-Gm-Message-State: AOAM532lL9fa/xBYTWcppBCoGDTqEmoon/NOHT8WZ5OM4IJpXFZui54t
 NTCsGDBlzSzFO9s+EbklmgPOa6Ly8JhPyWcK
X-Google-Smtp-Source: ABdhPJweete4r2BIayV6eiYOYWBt8ZtcIm0PWhCwh6+YQZB/vt+uFHtHFfdC+CjMTubMKuVK3Pileg==
X-Received: by 2002:a37:7141:: with SMTP id m62mr922459qkc.496.1627495263435; 
 Wed, 28 Jul 2021 11:01:03 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:01:02 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/8] arm64: dts: rockchip: enable gmac node on quartz64-a
Date: Wed, 28 Jul 2021 14:00:33 -0400
Message-Id: <20210728180034.717953-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110104_926700_D1A00858 
X-CRM114-Status: GOOD (  12.21  )
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

Enable the gmac controller on the Pine64 Quartz64 Model A.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a3cdb6c2bec6..b239f314b38a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "pine64,quartz64-a", "rockchip,rk3566";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 	};
@@ -19,6 +20,13 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -116,6 +124,29 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_3v3>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m0_miim
+		     &gmac1m0_tx_bus2
+		     &gmac1m0_rx_bus2
+		     &gmac1m0_rgmii_clk
+		     &gmac1m0_clkinout
+		     &gmac1m0_rgmii_bus>;
+	snps,reset-gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x30>;
+	rx_delay = <0x10>;
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -336,6 +367,13 @@ regulator-state-mem {
 	};
 };
 
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
