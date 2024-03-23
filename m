Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E90CD11BF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 13:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS+5pPfZdqZoK95WC92mAB3WaPIpxiyloJcVy+cGs9M=; b=lJNC1nnnZh+9ja
	Dwh1bNMfYahwYFFcgk41FjPNK4SaARzyIXWNwBXVvNDs3xHTtCFNk8HdEEHie2Vksq6aDISjEqGAQ
	GqO5ULwYBj9WNqKN9yK7a5f7BsyOVeHVuqqXSqUGmbys0GJRn5sQS7enOCEm4n4HrFEbaHlkELIU9
	IgPQmXBx4mU6JCw/rOkrMxlt5q3n9pNZFQxzW8osMMi8FArl3IxpmKsZjc8d4DYQeQDRccb+zELZ3
	rfllRgLXVu7h8AalD8HdxBwlHnhlGI6Vf/cdw5+ZldXmXa0ZOSXGH8OUHW4rNwB54IxBC18M1Mwso
	ybTv3X06zhJhi8eFUnqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1Qn-0000000ASm5-0Kuu;
	Sat, 23 Mar 2024 13:29:05 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1Qa-0000000ASeM-1CJJ;
	Sat, 23 Mar 2024 13:28:54 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41484f67d07so1162535e9.2;
        Sat, 23 Mar 2024 06:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711200530; x=1711805330; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUiCR1svhxxRL5lsxc2pQcGa6DHnWjaA4pAZ506382o=;
        b=Ii6ZEt1dwPuOBYFiu7eOLP3Zf5ZMqvso/oEXdmbn3SRP1+l6vR0onnLEhN/zxFFULo
         0XJL3b/kxF75Yx08IU+xTb9P9RwHifIiGut8ODKE3YL+FPd2IlErqQH4Qd3Qjt8AuqzG
         fnhCBMiR1vLOs0xVOcgBvkrAy7l6gVWZ4/c16/zUieqdajyEer9TXPURO1FfPPhYc1xD
         Me++cavC1yVnI3cu4mrwlsYSUud239btm0Tq7cquj8vmzHa0J9dqqjLNfIVv25DNkDjk
         xY7JFmrsWKSq2lzwRRtRSAuCAKH+YOBBWtoLDEvazKSOW3eyfN+p75thaeN17kfGgZpo
         RWEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711200530; x=1711805330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aUiCR1svhxxRL5lsxc2pQcGa6DHnWjaA4pAZ506382o=;
        b=cu9rSPpBqpf6r8FSJa4LPQO3SXuab8fQVbne8//qR2tmj7fzGn3K6AGdIiMZDw8TcU
         A4Q7mCU/S28kfZ683tshc/fmog0lt/6TOQpfwV1W7B260i+TnSNKAVMirk62TpGwEI+Z
         7frmEhircQyxWRnivHwYa+7pfOPEufIAUPATQeRXFIPu0tHWYigHGCgAfBJyJ0c+omjY
         6k7OKqK1B9Gnc93dfnTIgdkF2cLVPlaWau9WRCoIBU45zmryRRcMASgePRG1Fa/NzPRF
         pR/BUfaZeyraqmCv5dB4YI2JBkrtf9NsnW0NIe+jc8eArKrO01u/xVfWgCTAzzTHM2En
         ubqw==
X-Forwarded-Encrypted: i=1; AJvYcCUb7LxjuKg3fFstZO3FqrQM5sumiB0NIm3JCb1LfJYvpb6Z4JTJZn51qH7vd/BiWsQ7Pz2GMnXJ358o+bMgADRiCiAQVgTfmB8R4G6Mxau/RsIIJy6/hrIhbINYmka/MWxA+OtKpjNA+dWAZtoi3Xht4V12bi0mcbU=
X-Gm-Message-State: AOJu0Yy9SOllJXx5u0bUlGgM//6qPzf7d1O/Hse01F9iFoGuqoK/KvlI
	GAEybLxDis8Jd2wm15yhkrjCIw9iJ9VHje0MWzsutqZNfKZhH9E=
X-Google-Smtp-Source: AGHT+IHzQSMFL9RPxcJ9QjzOAZc3/V8flkS2jnnKJRQJaTuRc4ShAzjt4kpGZ1Lo0ud05wW1Xfo0SQ==
X-Received: by 2002:a05:600c:1554:b0:414:63c2:23cc with SMTP id f20-20020a05600c155400b0041463c223ccmr1881222wmg.2.1711200529952;
        Sat, 23 Mar 2024 06:28:49 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x17-20020adfffd1000000b00341babb8af0sm3076061wrs.7.2024.03.23.06.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 06:28:49 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 3/5] pinctrl: rk805: Add rk816 pinctrl support
Date: Sat, 23 Mar 2024 14:27:59 +0100
Message-ID: <20240323132757.141861-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323132757.141861-2-knaerzche@gmail.com>
References: <20240323132757.141861-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_062852_828202_6F03F263 
X-CRM114-Status: GOOD (  15.50  )
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

This adds support for RK816 to the exising rk805 pinctrl driver

It has a single pin which can be configured as input from a thermistor (for
instance in an attached battery) or as a gpio.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
  - rename pin-function names according to the updated binding
  - added missing fun_reg for rk816_gpio_cfgs

changes since v2:
  - aligned pin-function names with binding (dropped "pin_fun"-prefix)

 drivers/pinctrl/pinctrl-rk805.c | 69 +++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rk805.c b/drivers/pinctrl/pinctrl-rk805.c
index 56d916f2cee6..c42f1bf93404 100644
--- a/drivers/pinctrl/pinctrl-rk805.c
+++ b/drivers/pinctrl/pinctrl-rk805.c
@@ -93,6 +93,11 @@ enum rk806_pinmux_option {
 	RK806_PINMUX_FUN5,
 };
 
+enum rk816_pinmux_option {
+	RK816_PINMUX_THERMISTOR,
+	RK816_PINMUX_GPIO,
+};
+
 enum {
 	RK805_GPIO0,
 	RK805_GPIO1,
@@ -104,6 +109,10 @@ enum {
 	RK806_GPIO_DVS3
 };
 
+enum {
+	RK816_GPIO0,
+};
+
 static const char *const rk805_gpio_groups[] = {
 	"gpio0",
 	"gpio1",
@@ -115,6 +124,10 @@ static const char *const rk806_gpio_groups[] = {
 	"gpio_pwrctrl3",
 };
 
+static const char *const rk816_gpio_groups[] = {
+	"gpio0",
+};
+
 /* RK805: 2 output only GPIOs */
 static const struct pinctrl_pin_desc rk805_pins_desc[] = {
 	PINCTRL_PIN(RK805_GPIO0, "gpio0"),
@@ -128,6 +141,11 @@ static const struct pinctrl_pin_desc rk806_pins_desc[] = {
 	PINCTRL_PIN(RK806_GPIO_DVS3, "gpio_pwrctrl3"),
 };
 
+/* RK816 */
+static const struct pinctrl_pin_desc rk816_pins_desc[] = {
+	PINCTRL_PIN(RK816_GPIO0, "gpio0"),
+};
+
 static const struct rk805_pin_function rk805_pin_functions[] = {
 	{
 		.name = "gpio",
@@ -176,6 +194,21 @@ static const struct rk805_pin_function rk806_pin_functions[] = {
 	},
 };
 
+static const struct rk805_pin_function rk816_pin_functions[] = {
+	{
+		.name = "gpio",
+		.groups = rk816_gpio_groups,
+		.ngroups = ARRAY_SIZE(rk816_gpio_groups),
+		.mux_option = RK816_PINMUX_GPIO,
+	},
+	{
+		.name = "thermistor",
+		.groups = rk816_gpio_groups,
+		.ngroups = ARRAY_SIZE(rk816_gpio_groups),
+		.mux_option = RK816_PINMUX_THERMISTOR,
+	},
+};
+
 static const struct rk805_pin_group rk805_pin_groups[] = {
 	{
 		.name = "gpio0",
@@ -207,6 +240,14 @@ static const struct rk805_pin_group rk806_pin_groups[] = {
 	}
 };
 
+static const struct rk805_pin_group rk816_pin_groups[] = {
+	{
+		.name = "gpio0",
+		.pins = { RK816_GPIO0 },
+		.npins = 1,
+	},
+};
+
 #define RK805_GPIO0_VAL_MSK	BIT(0)
 #define RK805_GPIO1_VAL_MSK	BIT(1)
 
@@ -255,6 +296,20 @@ static struct rk805_pin_config rk806_gpio_cfgs[] = {
 	}
 };
 
+#define RK816_FUN_MASK		BIT(2)
+#define RK816_VAL_MASK		BIT(3)
+#define RK816_DIR_MASK		BIT(4)
+
+static struct rk805_pin_config rk816_gpio_cfgs[] = {
+	{
+		.fun_reg = RK818_IO_POL_REG,
+		.fun_msk = RK816_FUN_MASK,
+		.reg = RK818_IO_POL_REG,
+		.val_msk = RK816_VAL_MASK,
+		.dir_msk = RK816_DIR_MASK,
+	},
+};
+
 /* generic gpio chip */
 static int rk805_gpio_get(struct gpio_chip *chip, unsigned int offset)
 {
@@ -439,6 +494,8 @@ static int rk805_pinctrl_gpio_request_enable(struct pinctrl_dev *pctldev,
 		return _rk805_pinctrl_set_mux(pctldev, offset, RK805_PINMUX_GPIO);
 	case RK806_ID:
 		return _rk805_pinctrl_set_mux(pctldev, offset, RK806_PINMUX_FUN5);
+	case RK816_ID:
+		return _rk805_pinctrl_set_mux(pctldev, offset, RK816_PINMUX_GPIO);
 	}
 
 	return -ENOTSUPP;
@@ -588,6 +645,18 @@ static int rk805_pinctrl_probe(struct platform_device *pdev)
 		pci->pin_cfg = rk806_gpio_cfgs;
 		pci->gpio_chip.ngpio = ARRAY_SIZE(rk806_gpio_cfgs);
 		break;
+	case RK816_ID:
+		pci->pins = rk816_pins_desc;
+		pci->num_pins = ARRAY_SIZE(rk816_pins_desc);
+		pci->functions = rk816_pin_functions;
+		pci->num_functions = ARRAY_SIZE(rk816_pin_functions);
+		pci->groups = rk816_pin_groups;
+		pci->num_pin_groups = ARRAY_SIZE(rk816_pin_groups);
+		pci->pinctrl_desc.pins = rk816_pins_desc;
+		pci->pinctrl_desc.npins = ARRAY_SIZE(rk816_pins_desc);
+		pci->pin_cfg = rk816_gpio_cfgs;
+		pci->gpio_chip.ngpio = ARRAY_SIZE(rk816_gpio_cfgs);
+		break;
 	default:
 		dev_err(&pdev->dev, "unsupported RK805 ID %lu\n",
 			pci->rk808->variant);
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
