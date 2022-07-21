Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5137C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 08:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cDH/5x3ngWYlm0VrrOKjogeH8e0sqxbcXVeoKG+edVE=; b=VFxfOhW5NMijUk
	fiPIcstgeMnmttS0Gm7/+sYFcxfs0rM4nalcWgfBB4pBjYOstpFaYrThIFHwUlna9mU1hr30OmvwN
	0g3emau5JVGpyWc1yGFG/bTpnmLiqgGQksU7TlfhPWOYys93lkDUJexLo07Hf4OA6a3LPYTr3zSEy
	sQUW8Md2zl+VL53LS8hoKFFw1/5WInb4zwEstTSeGifvdmX47EYYh606/h70HD8ATpknYwDNGUCeQ
	FygzBV96QwNTMIrBP83yuLlYrH58r3JcRM7/zYhbFhWYEwqOzx+LhxIT3KVFRahxLXC8NsZeKAqFs
	fSljLYTLQwhhhB47sjTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oERca-002ZLc-Gj; Thu, 21 Jul 2022 08:33:24 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oERcP-002ZF3-Cy; Thu, 21 Jul 2022 08:33:14 +0000
Received: by mail-ej1-x62b.google.com with SMTP id bp15so1913520ejb.6;
        Thu, 21 Jul 2022 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6/ZzFcfNXq3FJXVmp131vQ08suTfBEJgqdvlvCUqagg=;
        b=fUW992UR56l7WdJLfb9SyQEjVC5L/8Eo6Nt2OaDp0tKrGDUSHL81BTaID//izNAGoN
         F/S33qqLYfo8TkE9+9ylLiZPVibzSm3gocSkepuoCW9lCpZ6hl6pJhZ/W37MWNYxM5G5
         ynX7JmuFURmDatrMSq+bmMiYskW7Vag4JS56v2zHeSwCq8z4jzz0wgfDVF5CcWg75BEs
         HakItCvr+Hn3/0Desi71EpvdIrnhZXk98I72hI7CF2iZVyFvgSn7SuvlgV75K7OElvPq
         Zl4XtI+oPoDnocDrzPju6w8dLpG04uEC2RlxdTIXfdYneDmpTfKnJ5gIjHD1B+6c/nEt
         7yfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6/ZzFcfNXq3FJXVmp131vQ08suTfBEJgqdvlvCUqagg=;
        b=Gyn78stHwS2XAGT8r8QfdgwKbcEhetK9ldiZOPfn5gM+STfKwHX56aisdnVYQ7Bm9I
         x3zRCHYnmo+u3uJ8gr/cBUjRAk+wWA/u0hkMkZi2sgHUdgYMbzOIrzsMblS5WI6r2fSR
         bQaX1XXRhes7ciCAjHuYpme23D84gRiK1pRTSDHKfQRhaUuplJyxeV5owkOOL+BP9Sdl
         EUuaNMJJbErAilSuXsyRfktDuiRwI854UzWVyGrkGz7lbw+LdQa7rJtB39Yh9/04QI3d
         4nEXRuBcKK8uV7Tgjd/ouFAU5DBcZ+Ovd7h8bbAvrmI7F8C5Uivb1pHwgRuHqFn34Bux
         CbwQ==
X-Gm-Message-State: AJIora9fGqeg54FmAcDojAf07d32erB2B4bsmagfvp8B8jWghitPhxRh
	hFS8eKn49vOmW+WOU33C38U=
X-Google-Smtp-Source: AGRyM1sLJgetIf5jJsZaQjxquQ8BPC/F8f52bROyoHmk+eqALowCo76e1HkIc7utmda6/lJMQuFF3Q==
X-Received: by 2002:a17:906:84f7:b0:72b:57c2:5e13 with SMTP id zp23-20020a17090684f700b0072b57c25e13mr40568129ejb.702.1658392390546;
        Thu, 21 Jul 2022 01:33:10 -0700 (PDT)
Received: from localhost.localdomain (ict-networks-195-176-112-012.fwd-v4.ethz.ch. [195.176.112.12])
        by smtp.gmail.com with ESMTPSA id m18-20020aa7c492000000b0043ba45cec41sm615485edq.36.2022.07.21.01.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 01:33:10 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Add analog audio output on quartz64-b
Date: Thu, 21 Jul 2022 10:33:00 +0200
Message-Id: <20220721083301.3711-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_013313_489512_6C7D3894 
X-CRM114-Status: GOOD (  14.49  )
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

This adds the necessary device tree changes to enable analog
audio output on the PINE64 Quartz64 Model B with its RK809
codec.

The headphone detection pin is left out for now because I couldn't
get it to work and am not sure if it even matters, but for future
reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
schematic.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
Changes since v1:
 - use generic node name for the simple-audio-card node

---
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 02d5f5a8ca03..3897980d69d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -42,6 +42,21 @@ led-user {
 		};
 	};
 
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		status = "okay";
 		compatible = "mmc-pwrseq-simple";
@@ -177,11 +192,16 @@ rk809: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
 		wakeup-source;
 		#clock-cells = <1>;
 
@@ -420,6 +440,16 @@ &i2c5 {
 	status = "disabled";
 };
 
+&i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
