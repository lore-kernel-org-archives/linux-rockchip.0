Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09795C73C66
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhD0Z38R7bGMsMYBUDtgZl+BnJfafFIqaKf0eVmgSW0=; b=E4Kl1uwIa9vUun
	6WYNjp4eIgoJ4Svc3zfO2dJr69VP+xXW9VUQrXPosG2Q/qGXrY1exRuUyCkYbN/Ie+4PpoK553sb/
	7ANWb7JLfZ7gkfttmomPfWLPgUMVCQQxx4mke9U8raEr22Vla0T05xZGqjzIS5b5/0KB+yqnsNewY
	m8xpnPcmVIV3QeRIG+ETiHpNJqebIel9qXeHxjfb5BgYHM8d3q4M3MJc3cUsHHAEfG38C+B7JAg+L
	lpRm5ANCNaaZ5rn7ZY1sEUUxeb+A0SzanqvOf8ga9HlVgHbF5qLJDrTPyJYGnphCsULZ4YAeFQj3l
	kyUFNnRO7w6ltZ2QLKrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB9r-0000000CXdN-097D;
	Thu, 19 Jun 2025 09:02:07 +0000
Received: from mail-wr1-f46.google.com ([209.85.221.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiF-0000000CRIu-064l
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:36 +0000
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a4fd1ba177so278435f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322013; x=1750926813; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8+GlKxeWL5Yw829/r0IFKSs2jp0Xuv75Z5VhmG/MTnU=;
        b=2OcCMnJ7v2dPITHOk1/SUFY7ZU0fy6AOMMtBkRFrX1heIeMp5MKp1e2z7jV9DLi3dV
         +8N4SDwGZL+d6sb58ph934vIwVs8kG56L9uZwG4fHr3I0sSi68CLNCZrUolekHcgp9Nx
         VX6Eb+36cpej87SkP+VmxnoCc2QaJfi2E3OpiS9ZHC7Q7ECGBpWW/WeYwZzd4PsLS5uo
         fx2rKpWeFL37+AQMsa2Whztr2WSVyfG9TO0J9Ez1LaMxQmkW/rvPfOt4sYYvAEDEdoqL
         0UjJMgBKpatZzkTmtB89N3JDe0q1MMQ/zCw8sEUaaNThVGpo9iL0UCxBmJkDdS+yzCyW
         EZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322013; x=1750926813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+GlKxeWL5Yw829/r0IFKSs2jp0Xuv75Z5VhmG/MTnU=;
        b=Zyzob2OPtnS7vb2H9n/tF6f8czOfpiEys52tIkmkUl87vCbsTipmefMMV6hxF4BZfe
         30dT1gisxz0EWnCPjgH9VG5fgsYIKRuC1Dz9tASZSupNYDX+13TePhQt1dWuR64uZkJm
         ZVDCJhuXK3So04EG1kHf16XU+10Me14vvtk5XpymxG9whObUW/iH8Wjc+2Or1GXMerUL
         4KqgMx6ZK4gKinDs2r2PuigtETvQxTX+3Dgyh2KdKj1CEcXqCDuR79GZTnkT7I0jv7HP
         HQtX5ac4ZGHIxdeGVyA0MwDwYBzore1TnB9wfEodLzC0mPdG+5Wkv0fF2ytBysmxLlL0
         D1Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWfhpfyBpzFi7wA0kyIIvMbfBTf1+39AueqOJj0wYfhBK5eBxKNRxDtIbFxhPSorAvY9J9nGDYn3792uO/KTw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeBBzcTbQFeQP8EqZQWdEmSaPcUI0dCF7d7CZYofDPPPmy09Tr
	CrwppMrGSCQfQ2Ji3cSporQnc3cBXI7sUfk0DgIMhA61Yog6+fasw1DImsYu9AlImAc=
X-Gm-Gg: ASbGnct73iEEx69eFJCPRb96OlBAXQEtboynaGrfrxKY06saS3Ye8l84BSdI2YkXZM+
	HP0G55TSbjqSiX2s0qGp5lQtQVqdY2eoVXfkG7j1wYc0lxjOzg/TWFUaR79QSf8WMO4PvktPUnO
	tLe+gvHXmIXfL8atKlVJddc3abivFAdNpUfCAHBRmPueshoJrNkmbhBgiExLbDCB47dMdaTQNyP
	CiIFQxue7lXjJbztevx1oJMbVt+HMPCdsdB5B4QB/AY5f0Gtc+cAaSmEBoF+V6teZYMHPBKXiP9
	pOoR0spZtDFzjjg5ukpE1O6zOk5bYXDK91kcJC6hAPhGDRyNBjx37iPw
X-Google-Smtp-Source: AGHT+IEYd8zh0M+GIxvzO+cbczfDdVgwEB9/rBo3uvdJxipNvbLdwuD0peBA9caOs/ahFdM6KsbEFw==
X-Received: by 2002:a05:6000:1448:b0:3a3:6478:e08 with SMTP id ffacd0b85a97d-3a6c96e5663mr1866539f8f.23.1750322013194;
        Thu, 19 Jun 2025 01:33:33 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:32 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:20 +0200
Subject: [PATCH v2 07/12] gpio: rc5t583: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-7-74abf689fbd8@linaro.org>
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2356;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=aSlqvGnhuSY1VlIGZB65GCCYVPKtjnadnIRxz6DCqho=;
 b=kA0DAAoBEacuoBRx13IByyZiAGhTy1KgqNjnmKmQLkXGxxWam8m1Wn84v8Mmm9k8q48PP1VEY
 4kCMwQAAQoAHRYhBBad62wLw8RgE9LHnxGnLqAUcddyBQJoU8tSAAoJEBGnLqAUcddyFFkP/3zl
 9RL/sxOpe2l7ZXx8muE1QdETZweVSf+QCakclyiBOlu9V+DX29m4PgdsLs7RKPBYR0bOoIDi37b
 cUxvgu1Db2DezcO6Hg/kISB1+kKTP1ra+mLibE2HkoRO0mGxEZUk5K7kWPfZxSjj0TkNOmIYb0u
 w0USK1lo+9vZbTXvUhMyxNzwP1oIzKV4EWICo7JXE3Yb25kPiera8eYaDQJmiGVzqsx2zlhOY4y
 7JpKNjCYk38N9bAJpcMTpRe6X0HRqLob3wwRAWArAqfiyx4pM391d/laNhzmaB1EXW1G4p3X//z
 kXkuOi4cLqMXpbFt975vL5Aio5buuqcB83ajhxzy3o4j9rx2josJqR9yLf6HyV/FrTjJPQNRHw8
 NFmhK39BfihcDsv2CStjI+rOhyR3whWppE+BvJi1H/Coa74Nsu1RblwOdUZzsvAY2NZMdgFXeE7
 X+5yOnzSdyGBGTPyO1Nmy9T/cPj8C0zokeHVrUU7+nsQuYPa5xy2UNrO8KoZoZytP5mmMTmmupL
 JHLECUgyjbL/duwYUzSsQGm3c8sEogb2FjvnpzeA0Ryk2j+tI7D0R03WcI9DpCgUNZSVWpGgk41
 TStG9T3DmCHn5cFwFUUV/EdG9woFsowNaioLk3P5F3nzAJk4sqhrc1Ge2ABs06g4AZ0JULQEtRY
 L7iFT
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013335_056291_4B17FC4A 
X-CRM114-Status: GOOD (  12.91  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

struct gpio_chip now has callbacks for setting line values that return
an integer, allowing to indicate failures. Convert the driver to using
them.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/gpio/gpio-rc5t583.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rc5t583.c b/drivers/gpio/gpio-rc5t583.c
index c34dcadaee36d5fb775d4aaa8c8f8b275f4e2382..cf3e91d235df2eefc7d0fc93a58824edd55e9aba 100644
--- a/drivers/gpio/gpio-rc5t583.c
+++ b/drivers/gpio/gpio-rc5t583.c
@@ -35,14 +35,20 @@ static int rc5t583_gpio_get(struct gpio_chip *gc, unsigned int offset)
 	return !!(val & BIT(offset));
 }
 
-static void rc5t583_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
+static int rc5t583_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
 {
 	struct rc5t583_gpio *rc5t583_gpio = gpiochip_get_data(gc);
 	struct device *parent = rc5t583_gpio->rc5t583->dev;
+	int ret;
+
 	if (val)
-		rc5t583_set_bits(parent, RC5T583_GPIO_IOOUT, BIT(offset));
+		ret = rc5t583_set_bits(parent, RC5T583_GPIO_IOOUT,
+				       BIT(offset));
 	else
-		rc5t583_clear_bits(parent, RC5T583_GPIO_IOOUT, BIT(offset));
+		ret = rc5t583_clear_bits(parent, RC5T583_GPIO_IOOUT,
+					 BIT(offset));
+
+	return ret;
 }
 
 static int rc5t583_gpio_dir_input(struct gpio_chip *gc, unsigned int offset)
@@ -66,7 +72,10 @@ static int rc5t583_gpio_dir_output(struct gpio_chip *gc, unsigned offset,
 	struct device *parent = rc5t583_gpio->rc5t583->dev;
 	int ret;
 
-	rc5t583_gpio_set(gc, offset, value);
+	ret = rc5t583_gpio_set(gc, offset, value);
+	if (ret)
+		return ret;
+
 	ret = rc5t583_set_bits(parent, RC5T583_GPIO_IOSEL, BIT(offset));
 	if (ret < 0)
 		return ret;
@@ -109,7 +118,7 @@ static int rc5t583_gpio_probe(struct platform_device *pdev)
 	rc5t583_gpio->gpio_chip.free = rc5t583_gpio_free,
 	rc5t583_gpio->gpio_chip.direction_input = rc5t583_gpio_dir_input,
 	rc5t583_gpio->gpio_chip.direction_output = rc5t583_gpio_dir_output,
-	rc5t583_gpio->gpio_chip.set = rc5t583_gpio_set,
+	rc5t583_gpio->gpio_chip.set_rv = rc5t583_gpio_set,
 	rc5t583_gpio->gpio_chip.get = rc5t583_gpio_get,
 	rc5t583_gpio->gpio_chip.to_irq = rc5t583_gpio_to_irq,
 	rc5t583_gpio->gpio_chip.ngpio = RC5T583_MAX_GPIO,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
