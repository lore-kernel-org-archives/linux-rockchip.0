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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05EAC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 689A460C3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:07:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 689A460C3F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O41hG6d8OcYqnq+G0oIdD3dKux0z07pqpANEwSHITgw=; b=a8KNg0MMnim5iA
	NQsPiXr6YqFjfRD1gwUk5h5VQTTmyoKWs206SnzyytvcUTC9A8gB0T4jg+qGdBsFMLIFxlidAaUgG
	XX+rIY/ZAiRsHQE7Z6skR5Jt/37kxjIyZvZ/SS2vydPPQDq7rOlTKFZxQrSTJAzIgNjoihxT9HIY/
	TBvE4OuvnP5LtAcHxW1JhzKz5eK0hs2LExLiJaLn9sv7SZskV606CVpMfqsYGCsmoyrQ+wGrlzJ0X
	DOnoXYsyeEV8M0kFzIbZ5UDNTZ472RCZXANoHtZOvz2i25AvRjhyCdBraqextEQtTnJgtmulneEYd
	VHxECLVsLN9zofVNlGag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kDD-000xJy-Ev; Wed, 28 Jul 2021 14:07:07 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2S-000rxT-Le; Wed, 28 Jul 2021 13:56:02 +0000
Received: by mail-qk1-x731.google.com with SMTP id 129so2249429qkg.4;
 Wed, 28 Jul 2021 06:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tcKay3c6C9hrMhtn74mlAVcFV1FvG+ErliMHy1IIxoY=;
 b=darC8OKOI71aM5dPQgy1vXucgnZu/mwcIs2CSjb0RuZr0zGTbHlKIt2BX7Is7PMrFX
 4UqWsvhV5M0BqYah3bvjZy0ZuvuFkYDBXv7pxFPY53fGdbZdsPS+l8WI1EaITn53EuKC
 YLP7OgGg/VlILxz0/jECX3dtntv3/3h/vww1k+6GnusLtR4PTzNk5lbW4jvtqSGDSU7g
 ReJ3c4koHvqZtVYTV5un+nPy+Dh6JSNQVRE39wkrGWZ6Ws7Th3hXSeyaMrjM1l80O4b0
 2rsICw2mYMIR4l+fFhVGi/SPmp19saEGzwNlZlgSGhwNzbFO/JuMbPXKGN+SEco0ph48
 5uUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tcKay3c6C9hrMhtn74mlAVcFV1FvG+ErliMHy1IIxoY=;
 b=VYC7ejImqWt2lsQKtmtKnNPXx6g79JblzHlQqWz+kkN5NPMRkw4BYe3KLao52i7vyW
 S7ON/uGCnbcFpok5YrgMirDjH0C006w5kGv62tiOPWjwsBL8KBDNWcRA/VaABplNm7Ht
 FGwY19aOJ6a8GjHdGSQSx1LjDI9G7L2sR6cz/9SKIikPinekfcuK3SPlYYifX7XpQ2n9
 BQJF1ac1+Hg5lIcP5APyBHeCiuUX8obTpvzZI6yFxpCNMoOkAgQZsHHps5AWG991d9+h
 z6F7n+8V8MWQY+q4BEm4TVDiJ36ZMo/MKPrUt8i4glndzt6W9o9KmfrnbYVsPSBCsKyT
 MAeg==
X-Gm-Message-State: AOAM531lEAXDTx9Hok5/csy5gK+ufZ5YMqtsfHtnpHNi4dChpkdNj1qC
 b7drVBERTRQ+dlT8I+nF6G0=
X-Google-Smtp-Source: ABdhPJw0z8ytX74Ph/kZ+j0zcEFNcYorj+QzIBa5GqZDctfXT7NmKz3XFmKk4Jg/YWnmekqjWstU6A==
X-Received: by 2002:a37:a04a:: with SMTP id j71mr2805363qke.424.1627480558957; 
 Wed, 28 Jul 2021 06:55:58 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:58 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 9/9] arm64: dts: rockchip: add thermal support to Quartz64
 Model A
Date: Wed, 28 Jul 2021 09:55:34 -0400
Message-Id: <20210728135534.703028-10-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065600_820800_650CEC48 
X-CRM114-Status: GOOD (  12.44  )
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
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 90cdabfac86b..eb311ea19f6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -26,6 +26,14 @@ gmac1_clkin: external-gmac1-clock {
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
 
@@ -123,6 +131,23 @@ &cpu3 {
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
@@ -432,6 +457,10 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&tsadc {
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
