Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA58C44500
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQjx7DYN8HMgdgS88L02ad5D90rzxlsJkliciz8dP9k=; b=VObUez9LeRSiUU
	6MWxyf8f7O2zGLC3X42s+dQfE1T473Pan9Dd2a5QY5I7CSOeZxTseIi2M8Bi6plD4kq1ESTI8pY/W
	Yf4Q6mLErMl0LKtviVLnyAV/kmpRjqJXjQXyGs6Tw5Dti+c3v5JWaYknAZamFyUA6lmukCWoCEaMU
	MDvtNMuGXZjXwdd3PQ63tSdeCxKXa1sDFdW1I9fva9dYuJP2ng/J+TlVVirQBDXRUjhWVQL9IMDUw
	uAjror5TJidIrRUDHslrurinOB5G5UMma4dslJpseUVg0okmRJni4LhNelHXE+L2yOzZi2ZYG2Awf
	MrZbAMckOLWG7n2yOcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQP-0000000ByzE-38kR;
	Mon, 06 Jul 2026 09:15:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQI-0000000Byw1-0SP5
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:15:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id d2e1a72fcca58-8423f236418so1651010b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783329329; x=1783934129; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sEbrn8nkx2n3q4opZ/ye+YyaLjCnYU6NuTNhw5Plk0U=;
        b=NsdokEi8gemljkR5jl2Q9Aacd+muYGxpU0UpfIYUdwq27kSzHHwoxpDVEumIlawpjF
         ZCCECLODQUIx78hba12hdDcof3XWYYwyFkQ6J8iDiU/tf30o+ukfpTnKjz8v2iI+RBua
         eflrsHq9j61CogUI8EyMgT0V28kd5BP9nhZdA38M15V0NvZUpZOn/FlcNl/ur5waYxYh
         MFY5Bzzw1nYNAQ9hxoxl30AH5DS/5G/p1TQ8DmpJbFHdGWJUnTHXkuH01ku2KOqLdQzl
         yJap5ORzAv/xAL68wbAZi4BgcvQW07+q7t5oYzuk6qs8lBUQpd/E+PYXzf5KXxkGLZZA
         xwiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783329329; x=1783934129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sEbrn8nkx2n3q4opZ/ye+YyaLjCnYU6NuTNhw5Plk0U=;
        b=bCCe/t4tQxPugtV9foBxNZ9QXgOkcp5XUf2uGBym74hCGf2trwWN8042L5AnW3umBs
         jikHrTf00Od34bXMDG2eoS4UEijeI0rKAvM7mhR4yhGPFxKzGhkcyMsCvIkYMoaae2n2
         6u8wkoDihpTby+Xs6T4nkEbM/6BWEx4yb6Tog2LpnrYszs18NpLaTwekh/hYlxjJkhH6
         1BnAcH12sDEzj1g4h16Mm7Fw+SmeaTd8fGziZQZp50/7jjvKpqbg4Ap7rXgZvah0RfrU
         8CDRpvEBN3jSSX0cJHT9Me4IZAIN2UVfDgzmS7FVVyVx0BS+GKkYQkBopSydGXeJv55L
         ZUOw==
X-Forwarded-Encrypted: i=1; AHgh+RoGU1AybSLznsXVeHad5H4efWjRLlmpECzmQxg/wqmZY/GF9UgM6nC07WAtZJtiBiOJ7g/PXhOAqbGcEdWbeg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVhxmmKxx7SoaWYsWpNcR02sc1xvdRT1y9p0PACoizoVcoyRJ2
	68EJTnIQS68h8sRrm78ZiFgzGGtxl7lZjSE57JS1Cj1fgsDpQ2sxqg5PQSPC42h8rZU=
X-Gm-Gg: AfdE7cmwcswoyZxLW0lS1wP0v1Uais+wGowAnJdhgmSf57UYzq20Mpyu2VHyhFizMZm
	qLyjWKjdXNAuYuvQ8Ho3qgRedrhKCeXyrQ9gJE8tFYtRpMoR/mzgz3Lit767opVJXhQNJqDDxxp
	Txl208LB6yaTUx1hhVk723h1Qqe0F58L/G/2tMwdGYu4z6wHCdsiEgFaw4FfYo7civxZ/J109Bj
	60Qp4APoN9QtsPJqMBcuAkV30RXqC0H4AZN6OeivJQ0wFTmRrc1kMiqyaMX7g9WN5ETofTe7c6y
	bkvxFqBO1Zb15whTpWcM6w1uWNriIvyqbZarYIKGszpvxrnWa7jmvi/GwkDvaLT4NRfoF+sHhNv
	oDKaZhTLoUsoK0OaGgLmejFeExK5xs3ag/Gu1V4JAlNV/XOsdRSkRWgK95ENbuv1jB3EhtRPk33
	/l35hj7NOzfuso08/jb11sZRqx
X-Received: by 2002:a05:6a00:32ce:b0:847:438f:500c with SMTP id d2e1a72fcca58-847f6fcd568mr8517078b3a.60.1783329329369;
        Mon, 06 Jul 2026 02:15:29 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm3445963b3a.53.2026.07.06.02.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:15:28 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Mon, 06 Jul 2026 17:14:44 +0800
Subject: [PATCH v2 4/5] ARM: dts: rockchip: Add RV1126 I2C5
MIME-Version: 1.0
Message-Id: <20260706-rv1126-alientek-dlrv1126-v2-4-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Frank <Frank.Sae@motor-comm.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783329287; l=2080;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=YYXBhszfUr1JhliGkjK/e/qiP2GmFVYlWneGxF8txDo=;
 b=YGf9TKEH3HthXKT99UhNu8l/oEBNF6pz0GwXaT72VY1OxJvp6qbSl8vzB/x98CgnlkQqZBtmd
 olvuTvIueVWBLVJh6ktacMSkePgvqDmIUYV1dVFhk9rWAWwM2WNlyT2
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_021534_884282_2B593EE3 
X-CRM114-Status: GOOD (  11.73  )
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

The controller is present in the SoC and can be used by boards for
external peripherals, such as an RTC on the Alientek DLRV1126 carrier
board.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 35ef6732281f..1d883b80aed4 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -123,6 +123,16 @@ i2c3m2_xfer: i2c3m2-xfer {
 				<1 RK_PD7 3 &pcfg_pull_none>;
 		};
 	};
+	i2c5 {
+		/omit-if-no-ref/
+		i2c5m0_xfer: i2c5m0-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m0 */
+				<2 RK_PA5 7 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c5_sda_m0 */
+				<2 RK_PB3 7 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
 	i2s0 {
 		i2s0m0_lrck_tx: i2s0m0-lrck-tx {
 			rockchip,pins =
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index d6e8b63daa42..d0cdc5f74212 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -23,6 +23,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		i2c5 = &i2c5;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -400,6 +401,20 @@ i2c3: i2c@ff520000 {
 		status = "disabled";
 	};
 
+	i2c5: i2c@ff540000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff540000 0x1000>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C5>, <&cru PCLK_I2C5>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c5m0_xfer>;
+		rockchip,grf = <&pmugrf>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	pwm8: pwm@ff550000 {
 		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
 		reg = <0xff550000 0x10>;

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
