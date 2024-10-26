Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A1CD10BF5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1W3qda5ZPqKkQwttMGlDzLje3unG5mKc8BQXBzEegE=; b=0rS1jnraZ0jcCY
	rREkR8jVROVggXaqOqcigP4Ab9P5KDDYlx+3mPNjH2zewJJC0S5UBUvFblF8Kn0oKxfIHav79EFxm
	LJXOKyC0maIHyuqoZk6zff7uVII2Z8rroFWbwJWyY7ae65GMKZOVij0xGTUp+FHiqZpS+WGhpBb9o
	K3P30WpxNQD6Xb2W1/KfEqcYomyf1kn63pbnOYSE/Zu9qIhDGgl02+5l8LDhc9b4ajr0iY78JSdXP
	OOZzIs8HjXeYTgNz5LypVB58eI3pPurfPkvu4NAhXWqA2MutvdVcshR+a0g1bHCf8N818XTknAode
	Uh+b2yCnariNfTeejCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deO-00000006L8h-3c2P;
	Sat, 26 Oct 2024 10:04:04 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deI-00000006L3f-0n6y
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:04:00 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e605ffe10cso1663832b6e.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937037; x=1730541837; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L6NoHFPIFs3PIFOi1h5re+of84q7O6NmybcEySOfaLs=;
        b=WHNtoofpDcGWia7H6UTwtTxj1/S0B/NHxRmQvfji8vrt7pLQf9VeIMBL6IU9ODY8ae
         5DsiGUAi7eiZmpXUcyYslwuG945NaryKHiBuTxiMgVIriGcpAcIfB22VgPiWzbSB8VFl
         o2z8zWRDQcMsIMTnDsbFIo1WnClkA+I8bo1ol8uWCjTK/NwV+efsGaX1ESxorY66Qqdw
         DQ512hz8H0WM9c9zQgN2CTcS2eHGAxc6BjL/vpa+XNMU8EQLDZFQ2xgt6FpAZbWtwdJV
         UBNp20p46FlUCFDA82Oca4smo38DMQm8OfXkA0cBcuFIh9RHzF7f5IvyX4ujq2pCsF6l
         e+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937037; x=1730541837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L6NoHFPIFs3PIFOi1h5re+of84q7O6NmybcEySOfaLs=;
        b=M4uHIj4a2QPy4RnLlaRgiJkF4qpqfFe5hgS5S4LgNpUpJHYlsVJdf+obLmOQF8FuAE
         9W9Bn6oYzgI4MLW/x/r6+E9rX561tp8gjir/yik4RX73BHosYfgK1Y5X2L/U5SVhy+4a
         r6xZofqgKC9mXE793u3Z5mwuPBtUPWE1eqa30bMKUi38H19rpW2s6tlbrLXZfluAGsQh
         dzdf3CngAhC63SOvDUO1tBnirjauMrdMfo+rYBbeaf7FXgifRVCirxP/Yec/bPE3sSy/
         bRJYur+B2FTnDzxZ01jT4zMCmhNJ5A5oJJpylaHB2rTRWn920aKW3O7MUBbcO6IChzij
         8fYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWTM+vlDRrkG2i7rSBblLyU6JiCDS6C1q2n34cNnefCSfCcs69HiVyGfK6BdFm+QAIFYEjA2mBjLCJUH05/g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn77qaDWvpzJKG3Ba0zyii9o+0PeMWPXIJOnCpzaiL3AySUbZA
	+ARQNf0yRPXlBf5GHBa7XvjwuMd7kGnNpn0d3nuXa8zhaqP39B6KXHBFhP2M
X-Google-Smtp-Source: AGHT+IEb/F7juQx531sdwLj61E8uPZx6UXoHt2xsQH/E+ZcJCVB1KVnU+043eOSLuWvfBzz5SLdNWw==
X-Received: by 2002:a05:6830:6382:b0:718:162e:7712 with SMTP id 46e09a7af769-7186811b273mr2269120a34.14.1729937037048;
        Sat, 26 Oct 2024 03:03:57 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:56 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 14/15] arm64: dts: rockchip: analog audio on opi5max
Date: Sat, 26 Oct 2024 04:48:30 -0500
Message-ID: <20241026100310.52679-15-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030358_555989_DC3C7EBD 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

Analog audio using es8388 codec via the headset jack and onboard mic for
the Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index dc5de21cddd1..b98514ea62d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -36,6 +36,47 @@ button-maskrom {
 		};
 	};
 
+	amp_audio: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		/* PHONE_CTL */
+		enable-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "rockchip,es8388";
+		simple-audio-card,aux-devs = <&amp_audio>;
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio3 RK_PD2 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		/*TODO: SARADC_VIN3_HP_HOOK is used as MIC detection / key input */
+
+		simple-audio-card,routing =
+			"Headphones", "LOUT1",
+			"Headphones", "ROUT1",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
 	fan: pwm-fan {
 		compatible = "pwm-fan";
 		cooling-levels = <0 70 75 80 100>;
@@ -259,6 +300,33 @@ hym8563: rtc@51 {
 	};
 };
 
+&i2c7 {
+	status = "okay";
+
+	es8388: audio-codec@11 {
+		compatible = "everest,es8388";
+		reg = <0x11>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		AVDD-supply = <&vcc_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_1v8_s0>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+};
+
 /* phy2 */
 &pcie2x1l1 {
 	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
@@ -283,6 +351,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <3 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren: usb-host-pwren {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
