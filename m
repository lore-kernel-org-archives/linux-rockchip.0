Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95AE6C43602
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jul 2026 18:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhQXE6WvDac0NszsZbD1ryWatnNzX9TrGID0VQcIYds=; b=Og1GreUx2UdXt8
	feP2chexZbaUfezWhUh+/aUAkzswANkhACKsQOPKORSEDruxwyQebpyi29pBH+fXQqReNw/8Pk7jp
	b1CPYyW2XhIrDMyCogxtUfiT0LtREHySv+rt9oXD76Wp93uHckxCdJbBz0olW7rACJFXMW+JPVBCN
	hYUiLkxFTEThZUbYLWERiaFGDFQoNZconf7ANHZoaMA9lGn3bSRNdM0Aa5JHN7PK3XXCKIaH/l03w
	vYQBZP0H0ZW/z1v3yhO1H43XcPFdud+gGyLEFaSIPU1/tbDugQ0YixCkAAS4Pr+6Jpl2WJT4V1qIc
	GlPND9hk+TaMUxatOD/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgRSH-00000009Yih-3jPa;
	Sun, 05 Jul 2026 18:20:37 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgRSE-00000009Yhy-2pIP
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jul 2026 18:20:35 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2cc61541f8cso13976255ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Jul 2026 11:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783275633; x=1783880433; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGtsisFYQ3ZsoB2jg7Gl9tLznZoCpOpVvTrcNSu1WWg=;
        b=iCT2m3165GzEB0jS88GDd+PCEKKnCFN19NADHjtEq2OQVaM6nyUpngN1xf20pi9oQ7
         4ThUqubj7sNVMv2P2m76rzCfj6VGX1YkGTy0/fsk0gT3LYrKfwBQVizzzWLv8DYXl0XQ
         9fftjVGCXtZ1lbFLV5CYpVGvdNzB5DKE1QMKmvxLMHUSkWIH4H4u0xGAGWrGDoSCDf3w
         OGdsIk+HSOHQFbXYnnLcDERX2JrEZ564cGU3xcuvT5DwDAnnrVTp4Qg5O0CN183All+x
         EDNXcVIfNDtLQvoqWWFK5sIs0Wrryilh2Y9R5fM+0pxCShAgvvvrpsQEYAa1KnaVsyDx
         r5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783275633; x=1783880433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uGtsisFYQ3ZsoB2jg7Gl9tLznZoCpOpVvTrcNSu1WWg=;
        b=PQysRxVlq9Oafk/cIrfqZFWdcF9rxuz5MeL8hk2cbYYKV+M67Zpv3bVYG026t/hIaQ
         4x3rpea5hzubQuN/HVgfdbvccGuzANXVrn517PQAQjFDjK1F3wk5E5RheR4tUqhjFRyK
         XGj3I2eh1Wp8j5tfgJz17h5JbnINPVnV6rCmy73MaesL/rGJQIFWJ0WbK6jP13y5sx8C
         v4HZhLdXLWedUBisttJGSOJF/RmdhCdflVzNNe1aZoPwIPZiihuiTi/b+Mc/z1DEgnwz
         A11627RvZlbMrAEWPa69kfbqFJokc2+M9h1SYjT+v1u0KlMyOAud56cMqj2YRYGX6UcD
         czDQ==
X-Gm-Message-State: AOJu0YyEwxFfyIpqYiqRL0FL++mHl0GqZ6ma34+G0Kfji61BSwdl4aul
	Zys6A1lCa9UgjlUK4OvB5fmL6uYepyvVJse6sikbuXV2vmQVYliL83rkYPbRjg==
X-Gm-Gg: AfdE7cnRsNncvbL4OycZE4Vo6yf57AYD/f3lVhVxkIUeSAGOlHDmpUWD9ETa0y0jN6m
	Z+xT0fEHOe4jcY4633ZGxvefTw4dyRmoDxk+bRtULw0bj6CQkTRd9IdbqzbEm6t0jtVYcIBrpjT
	xxNLmx3QrjfkRt9fXFKZUMGelJzR3by4wUvx1qCkCympanjsA44tuSYtamnM/81fGJZ2eubSxWx
	Jqt6HzewXheJnO6Tg7YNudzBgStLars5OnT0ZSICICixgjGnOyYThL/gLexCsJrrNFI0iz/oXjH
	uzphent8jM6sROWEW7VXTrR2V1M7yhEPf2OrYBadvRiLvr2rA7QqhFoskxn1rtCdV9iblh0I92f
	9lcE92N4t6eVpOflO/QARTpcHe5sY6vDEAPdvHB5EbdO28nQ7AfHZxwc3bBKpV+gb+F3QuXdZQo
	Gw5EcBmIJQ3tuI70T4PKhCZ+5ftFbCAVPfGYk5PCurpxoSLjRtQevSBoynLaFL0FLZwDZC35lvf
	OAbGfMywJWa0IOI
X-Received: by 2002:a17:90b:528e:b0:380:9699:ae98 with SMTP id 98e67ed59e1d1-381120f7aeamr13586199a91.8.1783275633209;
        Sun, 05 Jul 2026 11:20:33 -0700 (PDT)
Received: from MacBookPro.tail6abcb.ts.net ([2804:7f0:460:b8cc:e161:f046:ac0f:f27f])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30f0bb7fe46sm51230319eec.14.2026.07.05.11.20.30
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 05 Jul 2026 11:20:32 -0700 (PDT)
From: Brian Mayer <bleemayer@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: add HYM8563 RTC to Radxa CM5 IO board
Date: Sun,  5 Jul 2026 15:19:19 -0300
Message-ID: <20260705181920.8633-1-bleemayer@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <2960762.AiC22s8V5E@diego>
References: <2960762.AiC22s8V5E@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_112034_713177_710F1AA8 
X-CRM114-Status: GOOD (  13.29  )
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

Hello again, to clarify: I tested the v1 patch in my radxa cm5, but since
this v2 only contains name changes I didn't test. I added the missing
agent tag and am sending the patch inline. Thanks.

The Radxa CM5 IO carrier has a Haoyu HYM8563 real-time clock on I2C6 at
address 0x51, with its interrupt line on GPIO0_B0 and a CR1220 backup
battery holder. Without a device tree node, no /dev/rtc* appears even
when CONFIG_RTC_DRV_HYM8563 is enabled.

Describe the RTC, wire the interrupt pin with a pull-up, mark it as a
wakeup source, and point the rtc0 alias at it so RTC_HCTOSYS/SYSTOHC use
the external clock. Wiring matches Radxa's downstream board support and
uses schematic names for the rtc_int_l pinctrl entry.

Assisted-by: Grok:grok-build
Signed-off-by: Brian Mayer <bleemayer@gmail.com>
---
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

Changes in v2:
- Rename pinctrl to rtc_int_l / rtc-int-l to match schematics
- Drop Tested-by (covered by Signed-off-by)
- Add Assisted-by: Grok:grok-build
- Send inline with git send-email (not as attachment)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
index af4a9bc01..d22db4d18 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
@@ -19,6 +19,7 @@ / {
 	aliases {
 		ethernet0 = &gmac1;
 		mmc1 = &sdmmc;
+		rtc0 = &hym8563;
 	};
 
 	chosen {
@@ -198,6 +199,18 @@ usbc0_dp_altmode_mux: endpoint {
 			};
 		};
 	};
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int_l>;
+		wakeup-source;
+	};
 };
 
 &i2s5_8ch {
@@ -221,6 +234,12 @@ usbc0_int: usbc0-int {
 		};
 	};
 
+	hym8563 {
+		rtc_int_l: rtc-int-l {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hdmi {
 		hdmi0_tx_on_h: hdmi0-tx-on-h {
 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;

base-commit: 87320be9f0d24fce67631b7eef919f0b79c3e45c
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
