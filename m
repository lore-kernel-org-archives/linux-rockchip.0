Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C11BC54E67
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeoBAIwdDLdHE7O0OpdtJMawOH42TIVrlJ7ZvFhQIbo=; b=vCdSO7cHHXzRlL
	C2fe7t/jOBcVOXuBdaLS3CAszTZOvCd3h5rr2Phgj0jBDN1K44Fx0lwHCI9cPqmA6LeCv6inycLpP
	QioDbSaDZOTzMDoDlazxxCxIJWIzbnQ3jgC8kr63NfOqW8rS2avmudHxDpEdZoNdyclpk0IzqKHgG
	AFy8zOm1ZVKT91lUQmW/oN6Qp+uB65D2ajRtJjfO/LrOzRpPZYYfnNg69MfkOW08neLAoCHuK+PFz
	UzKv+bXrlBeCmn2ImsxJ9A+SOgCxffRCA+kwFWqSftt8QadjP8QXO2teEojdlTK4WM33XlxyzTl7w
	F3QUFM9MJcoaqv9Fci5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDh-0000000A0vw-1xMd;
	Sat, 23 Mar 2024 08:59:17 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDb-0000000A0s4-2YlH;
	Sat, 23 Mar 2024 08:59:13 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4147e3e4d3cso6708495e9.2;
        Sat, 23 Mar 2024 01:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711184350; x=1711789150; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xV1VuZ10gS4qJcYFgEhCdbniTU6gffWU2OmNmdkZVDU=;
        b=KzcbDOa8wURY61k8gjUt8hlaHn6gQoOAgnkU3sjBqPfHOCP+TV+Uj2TWO2lJUjAcEj
         L2yus0Ta/8lPns7u2a7I9X7juHMsSmaA0P32jUsWD0NXZqvj2lv11Gim6Oh+41E2JC6d
         o8dU80CUfCBk06R0xzn3y0YIg/LeTGAtIcdpQ8k0WFWZxhgnvJcZ6VvqXe5Tcb9Etl6x
         mowVHhud3/I4q1ra9wkNEKe8/aApnroHTfTdd5VwdMNfMliXg0CPApXHkafcJFjwraaV
         HoTmHrGakpFDHXSa1m/MrYv1YtHeyUh6Kts3kRDzn7ZgXL+q0/jMXHFOd1Jg1KDogHg8
         25mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711184350; x=1711789150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xV1VuZ10gS4qJcYFgEhCdbniTU6gffWU2OmNmdkZVDU=;
        b=RzEa6hWQZWJpRE9eCR2PpMrQ+LZYpCHRFJO82/0vseaGewQJxZ8x69+2hBdfQ1ShGB
         dE/WEaPe0EhPFt9aNUSxMEsv5bzZJ0bvoSZubTUhoTCeeuQmsGEovmy/+sg4xomWqgY5
         hc93cQtrHbNmBatIIccGsJjXzx1SRhCFt+/OCl0c9UIAMgQboTM6vBicDIuZS/GvFK9g
         jO8eZMi1o3rR0QA7PhFRzF5KEbyWU//jipKPh1tBBIXTmALPXUdp74shu4VLYecZXqDd
         gACceniwrwazjql5Vdh+WONp6bVAlmUJJ1LgWQl512HzTq+gtFMLWkCN2XQnvldZcLI7
         Z/0g==
X-Forwarded-Encrypted: i=1; AJvYcCU8jd8UEIdNI1bULJudxdaLZpKsEr6igxifJdrbQsl9iT451zAvtm1vCM86nbxiTuSHI5dv0jWEX3eiJG5Fth0KKlqBMyad/eLcBY3dtG24jL8ahf71ygqBoVrvudhN+fw+/Mp9/DYGO9+oyqJLnOxe7+vrGD6s7lw=
X-Gm-Message-State: AOJu0YwuBRO+xbHVdV9XFtqKtYPpim2oKk1LE/MVWELNwZJiS1oigAAY
	VHR6gjsJd5XQFlb+CzfL9q16UZDjTpc31ZLj+yu3irbtyxsNvj8=
X-Google-Smtp-Source: AGHT+IGSsj40L8O6zR6axVninZLB0SV4Jm46LZmvjcTSUMgL19iMEnVTgoVYDPYeZxt1XkNVU9vYMg==
X-Received: by 2002:adf:ec48:0:b0:33e:64f3:65a5 with SMTP id w8-20020adfec48000000b0033e64f365a5mr996318wrn.52.1711184349824;
        Sat, 23 Mar 2024 01:59:09 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d6b50000000b0033e93e00f68sm3965031wrw.61.2024.03.23.01.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 01:59:09 -0700 (PDT)
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
Subject: [PATCH v2 3/5] pinctrl: rk805: Add rk816 pinctrl support
Date: Sat, 23 Mar 2024 09:58:50 +0100
Message-ID: <20240323085852.116756-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323085852.116756-1-knaerzche@gmail.com>
References: <20240323085852.116756-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_015911_722887_CA29956E 
X-CRM114-Status: GOOD (  15.83  )
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

 drivers/pinctrl/pinctrl-rk805.c | 69 +++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rk805.c b/drivers/pinctrl/pinctrl-rk805.c
index 56d916f2cee6..4f1a6d8fcda0 100644
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
+		.name = "pin_fun_gpio",
+		.groups = rk816_gpio_groups,
+		.ngroups = ARRAY_SIZE(rk816_gpio_groups),
+		.mux_option = RK816_PINMUX_GPIO,
+	},
+	{
+		.name = "pin_fun_thermistor",
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
