Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3F65C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9Em1rN68ICNnvb7iUnfwbMYMyjFnt++Z6hPVRHmsIY=; b=43sBDYBvEZzGF7
	r9e3DIB65fRA6gKq4mYpkv706oOQhd22cf2vGYmEj0zZJTFqzjcLdyqW/R5uj5r1NZS+Xu5t4UtNb
	d3pzhQObCXmex5q9vaeQzKAKTtTIxMFXPdT/i40a/OIdFptk99ZEafCM2n71eZ3neNwI4YhDf4qQs
	pOLrFthBkNPdZXtZ8d6AOHm8RSzgg9jWyIFfFS2Ob7SIDtCmc0Cj+3MIeBfEel1mmRiCmamG4asQV
	Go5BctTMGYEYEoeCDqk0+GgVL76WeRA3c0gmF+69T8YqJSIcVmrFcKyKD24jUW35lOJ20sStt1a+v
	PzfNoETvZT0wNnN+abjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1N-0000000GKVt-0Jub;
	Mon, 03 Aug 2026 05:15:29 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1K-0000000GKSY-0MSk
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:27 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7e9f1f24cbcso2864736a34.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734125; x=1786338925; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gb4LPnphqc1DtduXOsyl640sXOpfiOxS2LbjD6EtoY4=;
        b=haX1psl3J1nIR+9iw8MvAqjaAu2YtfVRj2Hv2zjwIdw01ufKSjWotmEYo7ji6zCkuj
         s61NCUllHu+l+TgY5xH+C82K7Erf+fWnb6ySIcudYkaWfnO7z01oG+04ohF59Gf+QQ9d
         30xmag/7Cow8dwvrlIyh5k0BiEtfHF/vqjyO168+djXeR2PCmg6lIuE21fCCTzPSRF+F
         LkYoPVP26fB6DlKV7/76/7bGBfIU/xlMCefYX5p0G60N9w1OuXE/vOSNz61d3Ulm0qZW
         tclt2moA+7N05w6nurJb9y2fi+9Ifgh2Lgtslw37nPo/Hp+r+tZlqM8RZCG1NxMcannx
         ppMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734125; x=1786338925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gb4LPnphqc1DtduXOsyl640sXOpfiOxS2LbjD6EtoY4=;
        b=ZxP9rNNXclZzjBHJXIiMJEvLtQh7WwS8JSrB1rjVxiGWaAGxzfDDFGLnrl5LIguz/y
         c4mlO1o5TgJXv0rDD4Yl4UOFFxDbwWFvyN7rFrBN5G0YsSoj7PFgyRKTP51RCiW+4ujx
         Cd7v5n33wR6La3W8CiMW8pyF6tW4PrcH8PHVPK0dwZ1dFNWpq/S/YWrPck7WgHkpzIX0
         nKGzf/LsTvJx8+pa98UotR1mLpkpSvNQEjk+cpfEVeQ3iVC8D2VzA6puVYjNf3+ph9dy
         3mtl2AWiIw+S9rgPylNGsvM0iKqmxOI8phNjbtBcMUjIMjUzigYPoX9TK8H3RZTdiBXU
         eqWw==
X-Forwarded-Encrypted: i=1; AHgh+RqJQQF8SwBwH7NVu7mWEGQuyFmrMqKQJ1UDnXBs5x7A98p4IWMxYOnvi7RJerRyoorf1F74BSmEWHZneP2tgg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5KKw79s8WYn2AGR/A/OkySBOvIHPEkBToOQq0fqWwyMjmcRLb
	SzAgUBysjj9PtK2lbt6T3LQRiSWtvrz4f7LEtHFWELfFmUSarRrSl8oN
X-Gm-Gg: AR+sD10dtLoIY3iHCYHbApX3LU86QVlR/OUtgfiKcng6TmrBSB8+WPvcX4uPALOhJ20
	5mkwl0mD5T3hadAbMYbU5/4BHwnbV5XGzVPHmLZOWFGb6oMJEzMC1XklkfPbCvWVkNBZ9ZL8el0
	6nNNgL7RdIj7FERq1BCgsNnXzpkwZnNy+arrfJgufPv7Qakp09pYRz40RpeXBsmirEQaWcnwKws
	GGIMjlKV7MsRV2vXJZHimEwN2lsJi5Ks4TNGfOwZpZV2ErVAv8Xs10vJ/180h8Khr1309PzmI69
	3wr7AmEVGhq4W9i2tRD9oWnbN9QRR6rvGVdK2crI9jsvfnRhUsvBqNaDsnmJOjljeHrUMTlRuJf
	I1RpltqfCV4A/vUQC4a/3zgIKyzH5uxdm+qlYjlv0EO3w6LA2KJhbCZhlod3S0z22RAA/punN+f
	nmyN3appw/t9nKojDI4Xj8IYqQn+94hEdMPETFEg48POiqX+t+mmxL/OGdWgX0/O6lASvxg6UEm
	uE3ii057R3QqSBzoS1Ns7ELxxG4iGM1gQ0SwSonzL47sES1rsklrAcBpFj9uETcUX50yy69ac3b
	E3euD49gpQELkK024oEJf4LM/r5fu/Fd6i2s0sUbxEPst1B802YplsSZp+DTd/5blai/J9wf8hE
	wz0SMIDpHOkmLCgiigi+hVm34iw==
X-Received: by 2002:a05:6830:7086:10b0:7db:a297:9e62 with SMTP id 46e09a7af769-7f1892c8017mr4283606a34.8.1785734124209;
        Sun, 02 Aug 2026 22:15:24 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:23 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:13 -0600
Subject: [PATCH 03/21] arm64: dts: allwinner: h616: add EMAC1 controller
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-3-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221526_139375_66C34021 
X-CRM114-Status: GOOD (  10.89  )
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

From: Richard Genoud <richard.genoud@bootlin.com>

The H616 has a secondary EMAC controller that supports only RMII at
10/100 Mbps. It connects through PA0-PA9 to an EPHY in a companion
AC200 or AC300 package.

Add the EMAC1 controller and RMII pin group. Leave the controller
disabled for boards to enable when the companion Ethernet hardware
is present.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 30 ++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 90fe56a1d3cd..6879f27c2b2b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -432,6 +432,14 @@ pwm5_pin: pwm5-pin {
 				function = "pwm5";
 			};
 
+			/omit-if-no-ref/
+			rmii_emac1_pins: rmii-emac1-pins {
+				pins = "PA0", "PA1", "PA2", "PA3", "PA4",
+					"PA5", "PA6", "PA7", "PA8", "PA9";
+				function = "emac1";
+				drive-strength = <40>;
+			};
+
 			/omit-if-no-ref/
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC2", "PC4";
@@ -789,6 +797,28 @@ mdio0: mdio {
 			};
 		};
 
+		emac1: ethernet@5030000 {
+			compatible = "allwinner,sun50i-h616-emac1";
+			reg = <0x05030000 0x10000>;
+			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&ccu CLK_BUS_EMAC1>;
+			clock-names = "stmmaceth";
+			resets = <&ccu RST_BUS_EMAC1>;
+			reset-names = "stmmaceth";
+			syscon = <&syscon>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&rmii_emac1_pins>;
+			phy-mode = "rmii";
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		gpadc: adc@5070000 {
 			compatible = "allwinner,sun50i-h616-gpadc",
 				     "allwinner,sun20i-d1-gpadc";

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
