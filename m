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
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC470C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEBC660F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BEBC660F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W4NpS/eE3tS14aShdyaSHyphnWGIKEWWRF0+VKWWOo=; b=NmyRtjq34o+0Mk
	D4NszRQjfnRgKk07QNWfKgk2/KYv5KSYXP6iPgzU+FmAYdRQ1j7ch6/lGMsRPqpjNP258+N/Ja7Xc
	OxO4uMY1KOFbzweL3z9d3NRFvICkawBSnobRrrOTNW4aA9bLSBaA5jRcQ359ZJhYxFO3Sj0Arstkr
	HHfdGcHvlSnnFLYedzG66b+rdINFCMJ7C1MBYZwXo46LC3HGk2geGuRxGeIJ02aP1ihRaDf460GX6
	DGXUruZDzOlCX0HgL4eeE3af8s+1Jvte+FMzQza1U7Le690616/13Qw1LbAlJgxpPXnA65QgGJPJ5
	tp7nEIqH1fUUI0mMMALw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kDA-000xIA-JJ; Wed, 28 Jul 2021 14:07:04 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2R-000rx1-Oo; Wed, 28 Jul 2021 13:56:01 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id x12so1524711qvo.12;
 Wed, 28 Jul 2021 06:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rg5BgE/uGT7G9Q0TLIac/vS9ZXh8BbNch3GcxmLfwSM=;
 b=KCMf4446wjqkcLAvYc/vbvupqGYrOHZZ1b02HVjhPcRI1c6i7NsQaGzfkq1QnfTT31
 2YKT54nBCT6qx31A1U62D7cYJLst9iGtgFl6GlTWuuJeR31jSGibVdt0akxtzC+WvfKk
 UMzycK+q3Oj2QCgKtVMCysTOssh9c5XXnbQq4HLgtZpDl80b2IVvGdJ2lYIqMUSA8ijP
 A2owYG8DvECR7B6mux0+ZiX+whWSAm9poS7pQp0++qrg5bXJYdJzIPjMCfI2ChemRP/n
 wQ+0ggx1uDKhckqHt2AT+eXPbFLR9UmMM7MwD8g7ES8/ZHw97N+Y4VMhteaeRBZ+BiW9
 Sd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rg5BgE/uGT7G9Q0TLIac/vS9ZXh8BbNch3GcxmLfwSM=;
 b=tFbCExYuNgiEzqCJRWqQmxSEzLBJ+NRpHfUkfEnLGlTOEYXyLNrG67vGMXT4+9IJ+7
 k6L6fEpLieL7N2fckwhfQKZ8DhdhcBZe4HMsOohv8DOn4bxBNvtGNadXk+9qCk0tFJG/
 Inrb11uNVGuUytMvqnXePpqrF4ISWZD8W+EXwNk8CQfQZDPWg5l2HsOqm2/ZGTx+AedL
 2nTXhT09vK1Id/9QMAdZ6W/fo1CDw8QwbUKLFUfoPgPEJ4kC8WrtGIhH0TQ0oix6N+cq
 gWNw5UX84doyIILUoH9Z2jiv2tSMIGx9dPv5lPYnktfkTY8z83veUtfrG6qUjDgmAFxP
 dWaQ==
X-Gm-Message-State: AOAM531D1WHGMhCkPWO9FrK0xZAGdESWieFAoEFNAOt6LqG0OKmwM/fS
 wb/50fPm7nNEll001rA92C4=
X-Google-Smtp-Source: ABdhPJx8XWhJEjfq2Fvj726/Hw5wJ13Qv7bdtDwqT3fTu3+dsAeyAiYP3xpg2dW5kECYjUuFPVmy1w==
X-Received: by 2002:a05:6214:188c:: with SMTP id
 cx12mr30649qvb.7.1627480558176; 
 Wed, 28 Jul 2021 06:55:58 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:57 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 8/9] arm64: dts: rockchip: enable gmac node on quartz64-a
Date: Wed, 28 Jul 2021 09:55:33 -0400
Message-Id: <20210728135534.703028-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065559_902129_A985ECCA 
X-CRM114-Status: GOOD (  12.27  )
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
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a3cdb6c2bec6..90cdabfac86b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -19,6 +19,13 @@ chosen: chosen {
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
 
@@ -116,6 +123,29 @@ &cpu3 {
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
 
@@ -336,6 +366,13 @@ regulator-state-mem {
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
