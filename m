Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E85AC432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:03:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 306C560E8B
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:03:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 306C560E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cych10DtjHzeRd0vba4CM2oEbytDZ0BvyEjTA6cf93g=; b=ho5gyhiAfWbr7c
	QgeLiYFcf4vcz8x9Jen/blQDnjBLeHSvvUZWkEZG3OhytH/OOfYe0fKK9ZR5Yq/12DuUsRZsMEpZJ
	4E7PnNW4ZWzsbOcYDlIz/pg5wHfJws9Dk2pm7w/R4/5vJFjt7nDFmHJp5tBjAZLg0D9fj6U52iynU
	5FzBJQqMjmjryVtDi4k7ZU9029UzqCpOsZ/P1SDiZdOf/VcTem9XbVSUdI98buyUkHZp3VN2dle1B
	ux2+fzgCdwQ5QNPcJ2y44nHHfRKLAlLieuW0/t04BdeC7e1Itvd6LLLCLC89B/G3WY40lzZpFh5X6
	feGYr2PXSVWag9pid4sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJyvq-00EJVW-9a; Sat, 28 Aug 2021 14:03:38 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJyux-00EJ20-Kp; Sat, 28 Aug 2021 14:02:45 +0000
Received: by mail-ej1-x641.google.com with SMTP id ia27so20303154ejc.10;
 Sat, 28 Aug 2021 07:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0ynkhuMfoq8DWmPzT9LpIH9te0RlyWltDsyURvZ4GFQ=;
 b=WXYsOBvNLvecil2uBWEWlJk7vK1PIV6a6v7sMtXpoaBBntJcsywk3oE3VCbRiV5TOF
 yj4BDYuZOHQUsCIRfXfCBKDfvyKe1PqTsGJtiaFOZvpaavjsKk/lCPCkhJCUiCh3KdzF
 wWwOxVM4pvzuhcTaqXxnCARr/7n/K0ZC+ZiGZyNapRC2FYT/0/lI4d9Ds2VVV5lJAKyE
 wjDCHjARZXw52quChOv0luNIYx7BgD0tGNCh3wqxo9zxAyqHVwJ5koLvYItKo3fjHjvW
 v6EXZNUyUQHpio7bN99lbzjpfyUyURksUirpAh2IZLTY+RCYQEIH1nAxnXAgEPgRimFH
 DYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0ynkhuMfoq8DWmPzT9LpIH9te0RlyWltDsyURvZ4GFQ=;
 b=o6GATCBoX3fxN9SdWb09kgr86yn65hj5cjuWBUOUZNZMLlMIVutYEBez3J+HAOXBd7
 VGHHwBW3usu/ZD+AhUukgqhqDSL6IjLwt/eYV2jbgxW2p+59QXopck7wWBmSMNooqybd
 o/HAkF69B6iKmuq14FGdmxB00GNFZSWDDwKB5Y07csjQlTA4a9wolfc34FgGLQOGmdhD
 5fFmBA83UiJNCHQU5SR88DMdr5laXmcPaSGL0MPsUbKPS9gS/68CXsnA21JuKlTeKoe1
 H6L+qGZ1Z3Y/u5F4OpXYKPG5r4vnl9Q33FUMTskO3PLsNRphzamw22wz4i+93uVtgowg
 SDoA==
X-Gm-Message-State: AOAM531c/6CFYC+DcM2YcWcI8UvvEbfXPe3BPAvsDNHHQUBxD4EFgV/C
 JePGhwLbhx1H77BYUiKi0I8ND3FOjLoR+zoi
X-Google-Smtp-Source: ABdhPJz9dW2L7uBwqDxr1u6iX12tYpKwwjG4sNxBoGqA//OYMDo3NzxVkobfVlc+80Ecfmm2cTWkmw==
X-Received: by 2002:a17:907:92c:: with SMTP id
 au12mr15634084ejc.523.1630159362125; 
 Sat, 28 Aug 2021 07:02:42 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id cn16sm4953982edb.87.2021.08.28.07.02.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 07:02:41 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Date: Sat, 28 Aug 2021 16:02:04 +0200
Message-Id: <20210828140205.21973-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
References: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_070243_743199_03492948 
X-CRM114-Status: GOOD (  13.65  )
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

On the Quartz64 Model A, the I2S1 TDM controller is connected
to the rk817 codec in I2S mode. Enabling it and adding the
necessary simple-sound-card and codec nodes allows for analog
audio output on the PINE64 Quartz64 Model A SBC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index b239f314b38a..c974b0e22ac0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -50,6 +50,20 @@ led-diy {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK817";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -174,8 +188,13 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
+		#sound-dai-cells = <0>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -364,9 +383,23 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+		};
+
 	};
 };
 
+&i2s1_8ch {
+	status = "okay";
+	rockchip,trcm-sync-tx-only;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
