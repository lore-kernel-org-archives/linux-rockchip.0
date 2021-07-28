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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21DCC432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89A8660EE2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 89A8660EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQrcylmXBC6Zs8sFNBP+KC6WU9FmG099hOn9lj0bC3M=; b=YE3u3212VCrw2t
	JXfA2P/2RQNesZ75hDy/wF6VCTP1SRYO7pzlssBdhO948W/Dpme2XunKsiuh4jtbuQ6TTUod+nJNi
	gYGb6mXGEFmgNuU0lX+pa6p+XJ54+mKF681jierUZFh22o5KDHljOq+/IEOTTv2yTknkif4NydZaw
	JLwKjAUWUbOl91NLy/v2GR/0RMcpCUDE3T+xUcwBY09EFOjVfDQn5l+GsoKymmwIty2wj2hKDOOG5
	PwvLSMBg4qKJiliWSm93ms+lmGDCzZc29EXoBBHcNpvtls7v3kJOsTu6b2SrHpOQ6oZ401WNs9G2r
	0c5hWJZkNDlbwCH7c9xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nwD-001zm0-Ay; Wed, 28 Jul 2021 18:05:49 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nre-001xrk-CG; Wed, 28 Jul 2021 18:01:08 +0000
Received: by mail-qk1-x72c.google.com with SMTP id t68so3085997qkf.8;
 Wed, 28 Jul 2021 11:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A7JOWTCTU3mD3oDw+k1gzAhKjoRm+3hquu6wc2UO4Yo=;
 b=NhfcLtyU22TcWSCOGXGgpZ+wknGxJBUJ5IiOpFCdLpmp46UYw742rMBwYjXqbZjzw1
 SdxLvYFtMWyj3r3NDGQiApGAVSArPmipjdGr7W7vnGvlZEYFkwguPDrommUZGF//UtGW
 0sbF2FhEItBqfeeoh+B+wC9+QKKaAxmot5SVomrGF4zhThnE2iXwvzvdDUbmdzpePTI3
 xS5dyhHaBV2oq0AT54Ti8A+g/T9BzEJxFqttkI3QnhOdKw4mQ5pb74XYLc2h3HdHsn9i
 5T/lISfJUU/zjOEA9lQiRHXkVZ36TUHUrewd0m/dtgLG2CD/SdgZxISNlGHfyPrp9cjP
 frTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A7JOWTCTU3mD3oDw+k1gzAhKjoRm+3hquu6wc2UO4Yo=;
 b=AyjFvaWKGz7EOy807Nm++Q/hMELacyyuv2OdpfckYdmwi1vvsvVnfqMRvDbcROea1B
 vfkqt3k2ztr5hLrA+SAVXUGVXa+aDPYV+Wk3HGT5rhCgCnHvcjhm4/vLjm4IqLA/kF+D
 75ReUFcgKPL1Phv+Hnhs9b2g3SVwm6UVIl72e2Z8EfkPjaD4/vD7B3NXofTv5ViNYWXW
 aBzyA/Z8eZgA0EWMgMdmZdrUs0rEVnlR9f8T+OzczkM9Y5VRpsYvegYVGT212MOsyZQk
 RuS9Awx6MQ4XPEbbnYYStMWuSMcjy6oAuno7qaWrjiWr1Q6R/A8M8GrdUHwrVpl9TYkE
 uB+g==
X-Gm-Message-State: AOAM531zehUH1RoI/LM8dVnyGon8N7y+55Wr8Ttk+WcYTO+Kro7TKFtx
 XtsAa/IiGdrROc3GZzC1g/c=
X-Google-Smtp-Source: ABdhPJwAeS8EcjSx8OOrubvq4e88OEay+SE8dd0bRnV9hpQSSmPWnW1xeHm+IBfMailcCNtrvqYvCQ==
X-Received: by 2002:a37:5d7:: with SMTP id 206mr969388qkf.170.1627495264946;
 Wed, 28 Jul 2021 11:01:04 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:01:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: rockchip: add thermal support to Quartz64
 Model A
Date: Wed, 28 Jul 2021 14:00:34 -0400
Message-Id: <20210728180034.717953-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110106_508299_3246EE09 
X-CRM114-Status: GOOD (  12.29  )
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

Add the thermal nodes for the Quartz64 Model A.
The Model A supports a single speed gpio fan.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index b239f314b38a..a244f7b87e38 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -27,6 +27,14 @@ gmac1_clkin: external-gmac1-clock {
 		#clock-cells = <0>;
 	};
 
+	fan: gpio_fan {
+		compatible = "gpio-fan";
+		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		gpio-fan,speed-map = <0    0
+				      4500 1>;
+		#cooling-cells = <2>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -124,6 +132,23 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_hot: cpu_hot {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
@@ -433,6 +458,14 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&tsadc {
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
