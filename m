Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD0D2CD11C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoADq6PZeHmUs/hpF7SZjUpGyOlOzd7khcarQmv27c8=; b=tEuC7xXAoLeUW0
	Sv2Mm+/fuW1HNajtMnxrGlQEumZDmoFmdplC44e/VVb4SRxsHS4Nph3CBKFoN7BnTBNDeW0nlOvCR
	Uqz1yL+wGZWtojO04Z99kLKhLvmzX3S01h/ElUTX+d1j0YXUpOAONmBYlEyQXD4aKE6SBf8AWHEyr
	jqpREgGYND3PVLhewydtkxgEcW93XRua+DeKCmI334MqhxNQHVJMagljmfWKsJuPfKPWQ84DS6Hq8
	H219VAnSzC1Tcl0zM0RfB3p03s5p1PMq52LNWEXdYWt9sq0OhV7KLgYkKrqvFPM0uMNqezXM7o8Ro
	fDhgkp3xmN1kPd7xLjxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJaN-00000003J7W-43WM;
	Thu, 21 Mar 2024 14:40:03 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJa4-00000003Isx-3zAY;
	Thu, 21 Mar 2024 14:39:46 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a46f0da1b4fso140398866b.2;
        Thu, 21 Mar 2024 07:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711031983; x=1711636783; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=twALFnMM+Yr/AtveAMdUdW9D1Ib6MBFOTxAn/sC1EOM=;
        b=ZMyCyI0I11i4dPllzlnGijQ57bzbsBiEmo4jWbbslTOCDvAtq2xK1/BsJsQrmNbzia
         m11UbNJ+JKvfUx93XXd2F9Xfk/raIFolM6PWJqAA3tTFg0L/ZoTuMdLlEcCfRzaH8YcK
         KIJjloCVLyX3nhT/vyXOXuPWlnD72Mbhnn1Kg/LVTEpYUMShwtSnKs2KYLEf5Or0mdt5
         ajA36dv5hB07nOiniFiC/ToD6KN5WjGMXo82fTJMHCDaGjNVDSEaxMyRgsciTIv/oHLc
         c6p6ar+iQwCmxDt9gAf9ZE+bovS2nKVSpPhgSdoeR9vQ0/9nfmdiO5Eq/v+m3s7Ll/B3
         +X/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711031983; x=1711636783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=twALFnMM+Yr/AtveAMdUdW9D1Ib6MBFOTxAn/sC1EOM=;
        b=eP0helYe8ZHAGWl7fqCknr3UhODUWJa/xzEpasNII/6XPrJNAIjZifiaouZma5ygtf
         jmRGw60wY6EOQffGOLLME2H1+xMQHHB1K/3ed7zzOcjTw9zSMnmD2QCoBhCEtMyfQv+H
         SQ7WsAm6s67qgzublSMU4wawTGmBJ41nHofxN9tavFoXzhtYTTg7Xjv7O+DAYMqiX/09
         99BjZije3rsbeUopXe/2S1dg8qpafKAte4cn0vONA17BsZLr6bhKSg5IYHL05c2cHcxe
         5rPo1KY9GBVThILXxnHM23tolZw8KrCAsHhYrvKplise9KGXekzea5jkyBJfD4FGbmj7
         bL5A==
X-Forwarded-Encrypted: i=1; AJvYcCVYInFxKyxMo38f3pUoZ9cY3GWixEkOW0F7uQlbtRIMZCAP+bxsk7nPTsJnYxJgCA7merIpTl2KB86Ub6j4sTBWZMOyV0ZDCbn3s8edNaY5cGxN+rky9YUh5ZSryTSigDR6EqOlA3HFEYULXcNoXNTPhr/vjm/EzGo=
X-Gm-Message-State: AOJu0YwQSBaXm1zbUUIZpP98htySvo1GiMSqWuqprCPx7ylsyZ6Vk9+H
	TCspGLkM/fDHUxyIoGEdXyU+mRkZvkYlT5gs6f+WraM29Mn7mxA=
X-Google-Smtp-Source: AGHT+IHHA5j+8Uv6vMC1shrAnIAOqjVLHuTxodIzbNrCfwgHuprghUuMvhHuxk7nkEZPu7NmVb//+A==
X-Received: by 2002:a17:906:ca54:b0:a46:f564:ff80 with SMTP id jx20-20020a170906ca5400b00a46f564ff80mr1568277ejb.68.1711031982941;
        Thu, 21 Mar 2024 07:39:42 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b39:dab4:8e20:e918])
        by smtp.gmail.com with ESMTPSA id e3-20020a170906248300b00a46abaeeb1csm6147923ejb.104.2024.03.21.07.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 07:39:42 -0700 (PDT)
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
Subject: [PATCH 3/5] pinctrl: rk805: Add rk816 pinctrl support
Date: Thu, 21 Mar 2024 15:39:11 +0100
Message-ID: <20240321143911.90210-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240321143911.90210-2-knaerzche@gmail.com>
References: <20240321143911.90210-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_073945_146923_58723A29 
X-CRM114-Status: GOOD (  15.71  )
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
 drivers/pinctrl/pinctrl-rk805.c | 68 +++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rk805.c b/drivers/pinctrl/pinctrl-rk805.c
index 56d916f2cee6..cf0305477e7a 100644
--- a/drivers/pinctrl/pinctrl-rk805.c
+++ b/drivers/pinctrl/pinctrl-rk805.c
@@ -93,6 +93,11 @@ enum rk806_pinmux_option {
 	RK806_PINMUX_FUN5,
 };
 
+enum rk816_pinmux_option {
+	RK816_PINMUX_GPIO,
+	RK816_PINMUX_TS,
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
+		.name = "ts",
+		.groups = rk816_gpio_groups,
+		.ngroups = ARRAY_SIZE(rk816_gpio_groups),
+		.mux_option = RK816_PINMUX_TS,
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
 
@@ -255,6 +296,19 @@ static struct rk805_pin_config rk806_gpio_cfgs[] = {
 	}
 };
 
+#define RK816_FUN_MASK		BIT(2)
+#define RK816_VAL_MASK		BIT(3)
+#define RK816_DIR_MASK		BIT(4)
+
+static struct rk805_pin_config rk816_gpio_cfgs[] = {
+	{
+		.reg = RK818_IO_POL_REG,
+		.val_msk = RK816_VAL_MASK,
+		.fun_msk = RK816_FUN_MASK,
+		.dir_msk = RK816_DIR_MASK,
+	},
+};
+
 /* generic gpio chip */
 static int rk805_gpio_get(struct gpio_chip *chip, unsigned int offset)
 {
@@ -439,6 +493,8 @@ static int rk805_pinctrl_gpio_request_enable(struct pinctrl_dev *pctldev,
 		return _rk805_pinctrl_set_mux(pctldev, offset, RK805_PINMUX_GPIO);
 	case RK806_ID:
 		return _rk805_pinctrl_set_mux(pctldev, offset, RK806_PINMUX_FUN5);
+	case RK816_ID:
+		return _rk805_pinctrl_set_mux(pctldev, offset, RK816_PINMUX_GPIO);
 	}
 
 	return -ENOTSUPP;
@@ -588,6 +644,18 @@ static int rk805_pinctrl_probe(struct platform_device *pdev)
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
