Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F8BAC71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsAUUefPf0xpR6/F0Mb3n4VdV93N4Ue/9jcUPu8D+oE=; b=KUeHJYT/D06B4e
	/Nqv7khhBvx4GEx4vNm+/IgC2y7hes1Da1VDyvXbwF3L8CpTz+U5Pi9tQHzVJkQtkiYKHhglI3PVi
	5z1VbT+P7IkRGVOjOKgloUpllZMiwOMRr8OWiCUKAm/rFa9XSaDxMydMyfSMvTGJYp0AQdsgOh8S+
	0Cy2OxzkgiFQc6TNjwUogbK7vqw4+wdwa6gCCqIfGAh0U5AQMDGkN89cY1s6+iJEesvt+8hTCSsTF
	d5H0om0LF0jdWNWB4KBzaq4RmAwZMdcH8vJAoHzEkhaJ8Ejgw3R6gPPmlfnn3zGD3EdV/iI9j80d8
	NVmXClYahUZ13sEjrl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVwY-00000007Gbx-3qBV;
	Tue, 17 Jun 2025 13:01:38 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMx-00000007B1J-2xIa
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:52 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-450ccda1a6eso50681275e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163090; x=1750767890; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AMHaAkSc/mi83kBCslhtD5+Hl3KktEIZpzS91Yh6h2M=;
        b=Lz5410cgpcSi273y7kRT9VHnE3KfAfOghk/bTTR91NJPyUKqPmL1cYqA5v0yQyjPKy
         hU9Ej5SfouE+3UVH1+jMADD7SYjw2DZD+fK3ad5/yee1SKqw566SyakogpubZ3FlWZDV
         GWWDFRilD3Id24FJp/heYuKlmmM+0efPGbJ/eGUDHvtmYO9O9YQjk8QUzXDQLY/BCDgH
         oK6RgSP2jUWi1MnnBWgGtyJ4x9/wu/wfyJt+mgudaL71ntQQPbSlhfAQUX8OvTAqlcQG
         yc5p+v35K0227OyqFeYLXaC3Cv7uRcyqbNVEnlvUpbqz2cHS6VNqF8EhdGr2OUhNos7J
         eWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163090; x=1750767890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMHaAkSc/mi83kBCslhtD5+Hl3KktEIZpzS91Yh6h2M=;
        b=WrlCnQ2hWqUndvqkPYYaEonMY1WjNzxWJIkF3ejpgpny+9QQqa5DPpvYxWiF2tut8N
         2r9NChY3Hpvl/ijO1KdPfWK63vIYB3kH3ZneazH1dvxHc0JlUq3xcwPNcHGESovbT2IB
         dCi0zHYnFvm51GX2fsKRNf1JvfzcB8fr0IepHw0qlgu5OXJ8j6I4lD6qIpy5jEFmjm43
         LTKwgmEszogmQ4NUobTqDt0MzvJp5laHyqh6o/tOj7Q1QhhnlGWhRMOTJNWV+KeAUFJU
         +p09sm9cKb3TNPOeY6k3tMN3Cnp042JdBEAJS7JuzoBEr0QP/Ta/B1fWv58w6fCPopLw
         IYNg==
X-Forwarded-Encrypted: i=1; AJvYcCXqAxvy92cGtk/l0fBfsAwsW9IHWx5pg+/Q6QVdJG0N8Tw7nJGZs3BwP3YyZH+OxRDLO+RfRIVTCxg3UVxb9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6Mc+QVkfWOEj/8TpxaUAgUd8AHOwLz1K1ReXFXWMCbU8QC/7X
	J4Vgs0WJLMP0fpd/JCfB+Fd3teuxwi5LD2pAbRsaGTSkMe6lFfPFRTFZ6MZZVMejxXA=
X-Gm-Gg: ASbGncvwmbIUM+PlEXaM7VPQZNxVTGxZAjW7RNKtJMcvubKvIQaCNin32+oDEvgGNdL
	dY9/YpTPFxOQo6BeNc+/hOn3CxIy3H8olWu4aixS9d0GK2PTtGgtuQOZbxpXHG2lExYzakTJ9/n
	hRhfMdelsYr/hUI5g68EZbzAzUKX9Yu7V5DDY6dywnRQewYg2n+bTkQP+qocmBa/PMtYS5bKAyQ
	J9NWwnH/Gy2R8dVn/T2b+b8tsQ4s6IXSOkngSOubW1dIao9axJi5D94Ewje+fGqTzYnA7eBtZix
	uerSMhWbjyCcmCs6lPw5WsEHziUI22pdmKv+HViMISvL48k4d+ZHqSev
X-Google-Smtp-Source: AGHT+IFmKyHtiTnK3f0MnCL25OY403d6ySVCu8IrYmqOaI/BNa9QItLKGnF8DD4RrTrk/qX7jMZHBg==
X-Received: by 2002:a05:600c:6211:b0:43c:f8fe:dd82 with SMTP id 5b1f17b1804b1-4533cab86f3mr122978975e9.18.1750163090447;
        Tue, 17 Jun 2025 05:24:50 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:50 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:30 +0200
Subject: [PATCH 08/12] gpio: rdc321x: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-8-903703881fa2@linaro.org>
References: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org>
In-Reply-To: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1631;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=/FTgaK1cWGc0DF5sQuXKwdEauaSqv0NFqrELnWAzquo=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6HxI/Kng34JgzZDWKYQKf8SOY7GXUJq2cX/
 QrIk9Wh/OmJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehwAKCRARpy6gFHHX
 ckXGD/4/iUM3v0T5QVM5vI2RC3Ut9NdycYDtiCIwbZFmIIZxah5HGVAYFj4hHNnnDmHgbOPKpbJ
 fvfFgQvz45DeYQkCt4pQiGZv0Qd/SqIgbJyYhc5qEtrMsyae4rhudlBYsW1omeeWw3WKZbpYJZa
 H+ZxUmGbPpRYWJ00ByGxGN7U0XwLEnGzdN9MFBTbMF1l2Skr6JR5xW7GSYEd8W0DUF+cKhHGlkG
 tTM+8sTClgTZKEhTwPU4xRm5iPN7WOjcMk5DmY0mG1UEXbySHcesZPEJNmM21B1+92IRk2JNe2H
 /VAEi7V/WkptmnNksEJ69Il01MaFBxMz4pxCQitD1TitfnJFmPkLjrzKbdrn3TyYmUv1CS7Pwb5
 53BODlK5dE7lx4Aa7oalaaEuB9jUi95cbAT1NggaAMPcYGEtV4/osEVsgvFJgHmjqaNyMdGR2iM
 u/8qM+PA9O3kTmWneQ3nO2PYpET16aDMNTOLjSCwKd2tTxzIdjoyuANw12R51w7RQtzXyGNmcKm
 JK0IqnHKNBngn1OgNpXIZg/JEi/UpIzFhPzRsekoD4UsX/FCcFFWQCHncvwQ2OxaBBGY6qcMZll
 HdBrKU+g5SxgCmCazOJbDue5kkTg2eLpczzEwQyUiVYZqmBmf669E2jH+28FaLh6L+A5WIdC8L6
 E+2w4xVaUPZMexQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052451_757830_76668933 
X-CRM114-Status: GOOD (  11.97  )
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
 drivers/gpio/gpio-rdc321x.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rdc321x.c b/drivers/gpio/gpio-rdc321x.c
index ec7fb9220a4747fad5dfdb88e25e68d2a104e37a..a75ed8021de57db122938e4736c3ac994bcdd2d1 100644
--- a/drivers/gpio/gpio-rdc321x.c
+++ b/drivers/gpio/gpio-rdc321x.c
@@ -64,8 +64,8 @@ static void rdc_gpio_set_value_impl(struct gpio_chip *chip,
 }
 
 /* set GPIO pin to value */
-static void rdc_gpio_set_value(struct gpio_chip *chip,
-				unsigned gpio, int value)
+static int rdc_gpio_set_value(struct gpio_chip *chip, unsigned int gpio,
+			      int value)
 {
 	struct rdc321x_gpio *gpch;
 
@@ -73,6 +73,8 @@ static void rdc_gpio_set_value(struct gpio_chip *chip,
 	spin_lock(&gpch->lock);
 	rdc_gpio_set_value_impl(chip, gpio, value);
 	spin_unlock(&gpch->lock);
+
+	return 0;
 }
 
 static int rdc_gpio_config(struct gpio_chip *chip,
@@ -157,7 +159,7 @@ static int rdc321x_gpio_probe(struct platform_device *pdev)
 	rdc321x_gpio_dev->chip.direction_input = rdc_gpio_direction_input;
 	rdc321x_gpio_dev->chip.direction_output = rdc_gpio_config;
 	rdc321x_gpio_dev->chip.get = rdc_gpio_get_value;
-	rdc321x_gpio_dev->chip.set = rdc_gpio_set_value;
+	rdc321x_gpio_dev->chip.set_rv = rdc_gpio_set_value;
 	rdc321x_gpio_dev->chip.base = 0;
 	rdc321x_gpio_dev->chip.ngpio = pdata->max_gpios;
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
