Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB497C7115A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 14:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B66leqR1RbFzhT39ifca9fXrFWuAorLKWJk/9Tivcj4=; b=GDyv9nkoSvccjs
	1vdHa38iALiJJY71m9I8vzwXK7eMLLF+BiHo/Jwc9szAlfFlBCa2QAuVQCjZqweRyr+bH4FMUi0iT
	j3dENha2MVdTO7yreNYSKaneUreXGM1AGDhHkm96YpvRgHFHZJgIZBfNQiIG6NAEjlNOWXlwmv310
	nVz1kaOoUAwwozleVGdzUltjK3C/g9xjr2hZIcrj964yp7ko+4Of1IQDy4y2Q5GbFL51FShtMTR2P
	mJUv/lthbwXcdqf3UBaS/uUG5MqPNZlj6ObFrF4dPJ+u6gy3vwwvS76lSBsiYeEMDISC2erY67cWA
	QcWOguOl/Ok+IVanCh8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWsa-00000007Scv-1HVI;
	Tue, 17 Jun 2025 14:01:36 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMs-00000007Ax2-13tg
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:47 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so41872115e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163085; x=1750767885; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BunBstoheAwjjbUHp5liz9ofrsXDKVHtZqsL4Aji7Bo=;
        b=n0FNP+9j/AHNDIB/Fak5At9qSUjINTxTxuFBnV2EqsVV9s3ggjHWfmaErAw4nNjQvy
         uBTHVSdPuP5VaYOWl/rmAq2WP0vbUIa0UoVhTujdJDObkZ/RgaTW7GOd8JE6JEHztlu7
         dUEKKvDlXWnkayHGdL/e2Hux9n2RnJcQWZ6K6v2GfSB1W12ZIxU7zEdsW6/iV2L9OVNN
         +8ljbf6TySE4SxSU/oevlm0HWij5+dCP2bgYe8YyosUS87lECvCO+XdbcRVvqxhHUQiJ
         cUilPXGX85HXwAsg6lUhl6Y/R20Ts9hpSKPDFvTvCwLgpvbfj3snC+agi+r9dDP9svjv
         898g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163085; x=1750767885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BunBstoheAwjjbUHp5liz9ofrsXDKVHtZqsL4Aji7Bo=;
        b=NCcsN3aHTfGMLt9lRm9qWmJAGs6iRbku6GCoM5Wd/6JlxRqx53KvRQrNXFvaVhqwLE
         PWJ6mMG1ze4/fg+qINYqxDZrRN7UiJA6smAQrZ8QqTuODjlQBuZVIxamG2vlBB3xv+92
         aDCc4cr9EiXbUemn32FcMkIcMQGYMZkkScyeFJo2OXiQDhfYiz7m8qZz44nPMdYoEfu4
         Gdfme8+4+i5De5gbW2L9hZbljAZBIctKVoPCcAUl6TNCYgF7le4E541nBYtvMKekFQ7k
         Gc+18KCZpUyBxV8Hl3xPd5CteJnFOEB07Lv3j2XYj3/xh+mHSxCW0cihqUmY9iywfzD2
         deXg==
X-Forwarded-Encrypted: i=1; AJvYcCUqsBx59786NuEofYvAQtsfGkrk2PteDwWHxE8nFC/mJoD77M71ebJPDkw8Dk/q9ejwblmGnQKktzeau1T78A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwXm/1tfY9kbhScnACrLsu+bSmqdKBjabVn4ot7mCKJmJY1E5nk
	SmtwVQWKfAfCQ8lEbfzOqeVIAMU4Y+N40xg8LvUbdgWEeyP7O+nYjZyGIBpatBgSmqA=
X-Gm-Gg: ASbGnct77Nv//3+X7AHMGF4y9qJ0uAMm986W7zf6hwPof5wmRVEJ8h08SyFr0c9H2Ta
	xgvOVObb9sLdky9zLg4QKYpXkd71kv46dBlKzzIFk2mKmXw/XMaWuvE8y70kTYnWsPZrd1E3bH0
	vOyJBsYEiWFwR9lTI2PLV0ty6a2w4Z597MzfzLLYGOxb/iZk1cTK8cgZofde8DEyfBolZbRAE/K
	/ybEHM8/7yFygQUbe6C0h3VPNUMSXJB/Dk+Sq0nMMFNMD4fdmFKmYkVY4EoAcwH/YFWjsscJH3o
	QEW83cc3n4pyF5OmUwwpDnGCY0m7XQszsDz5iTke2OCMaQ6g1Bg05oS1LFtVoULZtgc=
X-Google-Smtp-Source: AGHT+IG38n8yT+e1ncHPeSEVdH68o2T3Sec5cbPfOxOX3fgfc6HVuUUwfA/G8YafCEi55IS/XLmI7Q==
X-Received: by 2002:a05:600c:b95:b0:450:d012:df85 with SMTP id 5b1f17b1804b1-4534b4d8ad2mr71541235e9.18.1750163084982;
        Tue, 17 Jun 2025 05:24:44 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:44 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:25 +0200
Subject: [PATCH 03/12] gpio: pch: use new GPIO line value setter callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-3-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1483;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=mZa8mgQmqtI4o68XMiXnsHjV4blkeihaJT265+ul6Aw=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6GBgn584BsrCfQRzkIjI/k7X2K32+hBm8cd
 O+tckc9Rs+JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehgAKCRARpy6gFHHX
 cjbdEACbzA8JpfrD7XUVbbPk6TErktnsgMRnasgtasnTq35ZQ7HTTM56J8h/KEe46L725xvuI88
 VuGInJdMnPsCIINM2YsdxaBMunDAu3WvbcjoFDvQI0fYBmUpwfKouTrWsAL6gT4R/4PHH+DwaiB
 X3xZE2T9O1Coo94LvdLCNRg8C8V8QcfPttoO8tkKhDx8TSmOpBm8USV3IWbEwaQtxg61tGSuHrR
 xqYJGCe9WHkzvi/HN6Jk7z6E4ZXeqDKb19RnFaVjuz8rOMHfsjluKQENenMk2bvC4Cys5xKEuWh
 U1c+BPAPmK9AeO1byW1GlSYvqhxH2h6/uPs9P3e84RMlESHHR23QrJU388WSaJgIijeFcs4dFYm
 d7sWvPXNahCRoQZ4foUQbd2FsjPBWi78q8ZdG8rglnJYuetBj/5YGaESAn+Fc7sALIJrbLVgZHU
 k08mlvs0JGIuVvO+5mNHxROprqmNCR3CvQ/h0PrKzgg+B6j5SC7gDCjqGew481k0A96cYuU+50u
 0+1F2SkqTVVjfOSV/czlhcWuv/5MdprAvks21HPS3vRN45BvMDvcr1DaAlkMvslrxVo+n1Kqy44
 IAd9NmvSk1D/Yl9Npe3DgTVDHRuQGo4yD2n3P5wGzVXMpo12sFtubyoyJT5k9tn5rTZpd5Mb96j
 SaNb6luqvXivClQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052446_305556_6BA340F4 
X-CRM114-Status: GOOD (  11.41  )
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
 drivers/gpio/gpio-pch.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-pch.c b/drivers/gpio/gpio-pch.c
index 63f25c72eac2fb98156eb7682e780247a893d7e7..c6f313342ba06a1386d8ff8a882c9344a9e809e7 100644
--- a/drivers/gpio/gpio-pch.c
+++ b/drivers/gpio/gpio-pch.c
@@ -99,7 +99,7 @@ struct pch_gpio {
 	spinlock_t spinlock;
 };
 
-static void pch_gpio_set(struct gpio_chip *gpio, unsigned int nr, int val)
+static int pch_gpio_set(struct gpio_chip *gpio, unsigned int nr, int val)
 {
 	u32 reg_val;
 	struct pch_gpio *chip =	gpiochip_get_data(gpio);
@@ -114,6 +114,8 @@ static void pch_gpio_set(struct gpio_chip *gpio, unsigned int nr, int val)
 
 	iowrite32(reg_val, &chip->reg->po);
 	spin_unlock_irqrestore(&chip->spinlock, flags);
+
+	return 0;
 }
 
 static int pch_gpio_get(struct gpio_chip *gpio, unsigned int nr)
@@ -217,7 +219,7 @@ static void pch_gpio_setup(struct pch_gpio *chip)
 	gpio->direction_input = pch_gpio_direction_input;
 	gpio->get = pch_gpio_get;
 	gpio->direction_output = pch_gpio_direction_output;
-	gpio->set = pch_gpio_set;
+	gpio->set_rv = pch_gpio_set;
 	gpio->base = -1;
 	gpio->ngpio = gpio_pins[chip->ioh];
 	gpio->can_sleep = false;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
