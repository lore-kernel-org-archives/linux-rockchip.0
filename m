Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98196C71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnb8EugJ6WKsKjJnFlAVjhMDQfiHbIJ5VfzT4Rc8SNs=; b=pWx4U+2ZAK0cb9
	cj0Y6rDnnQaCIO3GNaZCnXrUYWyulAx34olGDTKyu1P/LxZBKa8qyrlsFU/fw7/QlYJDQS73/YrYc
	UqY50nlaJkXXFS8VblvtAfMVuI2Y3l1g5am0gO14aYsMQXQ77sdlT7ZB7eAdo4PPPtqtixBceuMaz
	oeirTbMK+Gsv8gD7sJlrtvr2iDImZWZ2Mp8sMsFM6/y+D6WGkk2yq764+7x8qqr7mEiGMjQ44oGKK
	cImquIclUwrQUtfgQ+aavjckJPa8q/qQNyRTMiThi1nBqdOZFqXNgZhU/Dq6lZ/izeo324ToUH+4C
	9c8hr1S1ZmApWW4ziOog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRW37-00000007I4d-1cSp;
	Tue, 17 Jun 2025 13:08:25 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVN0-00000007B3a-3xOQ
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:56 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3a50fc7ac4dso3293062f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163093; x=1750767893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXdEOuSE84y7KQ8YXqskQa8fEM4BBQcsKhAUrS+jouY=;
        b=SNRTthJqShAdUE7eTkz2CXsCioHC4nqsKp/kQ5FXdaDB9C9RqEI4PYOhEqXpOQiBwK
         uZIhRFE0nlOD4ort6TnXmGbkFGmjj+SBF85iTvCjsHn/e/is2WsCARoH9F2qX/G7Qb6E
         1ev3bInrUmTuJHvmslhcDtjXUKOjm7mjbuq6/MVZaASFnSXbUeVsv0nebrwiIbDOdi9a
         LNg77UBVdzSdX0g1IeSZWXnAlbbGfUOj1MngULJmCc3WfkN+AGLiXt738LCcOQcu8voP
         i4qEpW00GyxOy4X7Dqo3H4oDJmWL/jA+vrf7xCTdUHfPfKnrrvRAv48SydmQJzl9n8FJ
         ivAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163093; x=1750767893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kXdEOuSE84y7KQ8YXqskQa8fEM4BBQcsKhAUrS+jouY=;
        b=jBNlLE6yHdHJmiJQL6uQL5mIghGwMFB29hhzarQFW185iZpiiTFg+naXxpQclBZLZg
         dDgU4QRWTVxsEXiVNGwwKnfCM6DjUYePElkuB/LSsVjpLM+6zuFY+YOJp3bHH785HGaX
         dauULmBXQjP6LKIY0uuz9ECCocbgfWGupCQijQ6z3+JrsobRXgHsb0nf0yE6GIzxffjs
         5FBlNPbL9q0TaY1rSYQrt2EO7yrGupYBHwYXPynicw+hipJQ7rYGB3jqMtIQofa5szln
         fBAY+uBf/G13Q5PkuX2lTkabMWi3ZGR0/uAgRDnNlBaXjuq9UxQovc4z7af0nHcE4q3y
         V7Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUow72FKlaRVfmqd0W+YAqSlMhailtDAtR/9Gsre4OB/4uyBHFM1d+CFUv8CRWUEkUYeo6S2rnkXrgWCl4DbA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxSVk27oEbm1jVkAqauDMbBBW/I2CricKRXNQEgs+nxJnbjVa32
	i5KtmdkS5fwI8WTArW9C5MdPj4/+GqeAeD0M4u0NcalVj/8kKHNkOxxP10cZrA1bCHk=
X-Gm-Gg: ASbGncu7PnL6QeBvq8jBz1008S/zLI6VHXQRB8t+8hIsHhx/AcYGcHfdwcPhZS3nH0q
	BPbZwf8yCpFFyhPo1t+S/2Ri6H3+4cehC35hiY5xfomtvl1Fe/rPfECMALhefTU71nfKdo0CG+1
	FXaHOdzjaOz65wPxkX4VfbzY2fEUZt48qEKB0THkd4HbPPJh6M0ZZtbi5Z74dwk1gQ3jCaVungH
	HrL3CcqWO/sz/brTV1kefOw3XpPBqCYvNRFu7JhpL89zrmdjy5/ja08ltJKP7SJgjNtnXA0QFCL
	pXBFU5i9cDDfDyuR5y9sEgZpfxeD4vutGOOQEHNBVt8L/nRas+O1+1At
X-Google-Smtp-Source: AGHT+IH8xpEepUrAKy/suev+AiSpI+HMEadcjXJn3KnGCfb1V3r97zqr4NOUkjvPw/0XSg0h1ArV8A==
X-Received: by 2002:a05:6000:1886:b0:3a4:d6ed:8df8 with SMTP id ffacd0b85a97d-3a5723af293mr10690095f8f.39.1750163093381;
        Tue, 17 Jun 2025 05:24:53 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:52 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:33 +0200
Subject: [PATCH 11/12] gpio: rtd: use new GPIO line value setter callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-11-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1662;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=v7M2Umlyn2cPSJSz3+M1vQ3MpPcGxR4ur24zUL3eZaA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6Ix+OY9qYUNs57XxRLpSefNPZMcuXRvrrwq
 in5+MyXCnGJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFeiAAKCRARpy6gFHHX
 cgUcD/9a/NMO23UBM1PKONinHkaDzFJv6rspeSt3zyUyirrJTSC+YG9L7KQAy6EP8I14UVcZKtA
 lNgBgl7hfpD+zkk1mp4AwrMXPBeVx8WSSjf0FmO+MrjsITnI4Z0fbz5o0jDFE+lDn7xD2cL2auU
 947xCBF9+Ttxmotpuw9ArSMMBdVwMeIEhjD535k2QDvlUfURzxixpuWKVDuW/kJtMFSOIjhirXR
 NyY5cM5Y6hZc1PlNZvVmKEVRYX2iblKuwvO6aTogzr+j8DsAv9hWmlSFzuRR9P+0aO2XmvgGXg8
 1n6R5ZC1zPol+Zn7IZ7P9bmtLwmCbhtwH52ceHQw7VwuxKj6XyyYS5Islx9pCInqsAyOKDDHc5w
 sBCDnSCr9KRnoYUgVU0FtZUccsCkeSs7u2WVJt4OXTN/vaW6+jyp25w9AcT5j70W4I/sXnJyA4C
 RqboO/HC6SFaenrazVmKfvN+w+LsKTyh2ubg6Q33Cvl8SUHSuJhXPmmYEVJtMBoh9sAgCbbhtZD
 VBokjCltqacYpkmvjoqoa4oGIWdwNjsmEjshSlpcJbQEjPOwSC8OT+L5DEF3DPTETFARiOApkFE
 DZl/rN6G8ha/5RdhURKiwc3HANM9XFITHEtdw4xybhabqYeL+fl5ZjADtbwN8Rh9jmgSrioWfJq
 BY0Nu9ZHfizUkJA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052454_987970_0F55E101 
X-CRM114-Status: GOOD (  12.24  )
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
 drivers/gpio/gpio-rtd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rtd.c b/drivers/gpio/gpio-rtd.c
index bf7f008f58d703347cba14f35c19f5798ee3a949..25bbd749b019bf8a272c173a3e7373a442f72350 100644
--- a/drivers/gpio/gpio-rtd.c
+++ b/drivers/gpio/gpio-rtd.c
@@ -275,7 +275,7 @@ static int rtd_gpio_set_config(struct gpio_chip *chip, unsigned int offset,
 	}
 }
 
-static void rtd_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
+static int rtd_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
 {
 	struct rtd_gpio *data = gpiochip_get_data(chip);
 	u32 mask = BIT(offset % 32);
@@ -292,6 +292,8 @@ static void rtd_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
 	else
 		val &= ~mask;
 	writel_relaxed(val, data->base + dato_reg_offset);
+
+	return 0;
 }
 
 static int rtd_gpio_get(struct gpio_chip *chip, unsigned int offset)
@@ -563,7 +565,7 @@ static int rtd_gpio_probe(struct platform_device *pdev)
 	data->gpio_chip.get_direction = rtd_gpio_get_direction;
 	data->gpio_chip.direction_input = rtd_gpio_direction_input;
 	data->gpio_chip.direction_output = rtd_gpio_direction_output;
-	data->gpio_chip.set = rtd_gpio_set;
+	data->gpio_chip.set_rv = rtd_gpio_set;
 	data->gpio_chip.get = rtd_gpio_get;
 	data->gpio_chip.set_config = rtd_gpio_set_config;
 	data->gpio_chip.parent = dev;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
