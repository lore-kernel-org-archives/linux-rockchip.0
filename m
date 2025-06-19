Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF40C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2raXLLVtdPAYkIhYVnqye73CBfx5PSbWStvHtUfJes=; b=BcNCgzZvOKL0E1
	6DMankjZZRpaZ3dteXCKgYr0L1ZWy0k4RhxrGpOl7+HgiDAIv28AXembzpPtPIwoMu+CPXpW6h/zY
	87XJlbdfydy4pQeE0blNypKn/CtboaQKa0rWT9YMpCDdrMC3vuiHffK8PDJJhM4ZIomFVZEnHilGV
	J12oSwRlKh8PdmAhq8Q/oS+4ZhZkiGFhLXjZ6ntJN4ixjzVSIecZqflZTI+4CkWVt2pt7ykoxcy2a
	xSm6SYGMa/I5rhvDc1fJD7F5ixgoKYBwvnv/W8Qz4GjN8VHflcrlEHdomNGTfu3Xn6SPcy2/C8IB3
	nvp0P/SjT1A+AZBQm1yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBRM-0000000CbHr-3R1r;
	Thu, 19 Jun 2025 09:20:12 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiM-0000000CRMh-1rRt
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:43 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4535fbe0299so2068525e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322021; x=1750926821; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QlDtpw6smBpfIslmsuGCGMOBJqH80dy6aXMZgZ8Sqro=;
        b=tAwnZnv88P3cWI8Sswmly/PpvpxgnnqYLacEdB3ydD6vSRIvZHMGv0l3BVv97jVycR
         DS5BSbrExnKkThBAf3n2F0yWJ/UCP3QgWdnWCmIetEJf07TlreVaIsquvoOnUMbfTU6W
         V6pLNuOeBfWKjthU+27eF40P1HIhnw1INia22LdS05eM4rps2qxXXDiJN6ENq9alwYFU
         pUKrckuviQ3uTSOSYWBqC/2GnFVNcbk2JEIh7K/RTfMt/s9HK7BCluFKzLCr7ARn2SuO
         0nnTsX37F624PtJsYgFtKmnCt1Fg7wp5mT3Da8NaZiFYVCkGePdGS0xr/7og5sSgcuoc
         6skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322021; x=1750926821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QlDtpw6smBpfIslmsuGCGMOBJqH80dy6aXMZgZ8Sqro=;
        b=Or8LS/Z3CCprdtVZ2XStE5w/BC7AMAH+Ov5f6/Lz98zQ+ZQLnl139bkPHfY7zpMbwE
         H2SAYUB/b+VJwD3i8tqJYjpPu6Yin+BHUS9VYieqmXXEFBG1P2hp51JcvcO79Go4R8bQ
         x50tyBn3zh40pB1VZlpWCOCyDTBRVnxAQNDjKNdtGrZ1KJeq9gCHnYqZ7eaxnU62InA/
         aB1xIsu6wPOy8mFopHUC+gYBXmzUznS+/VexbQKv5LoPM24koQNkF7aYOMsF1esUgpv3
         4sFrnvlvnDpkSSuedV3QTwD+Bk53wDuDPxELYZ3X9m7WNNx4UfG5W9W8mboG1sUbsPOV
         W2bg==
X-Forwarded-Encrypted: i=1; AJvYcCVaU7JF085CTh7xQJeZoQ0R2PdalTxaTMJ4iSEZVZ0mcK3SIm62P9rIVPXGkP96a0CQZrjcCymUoT4t9hJKVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6A/M9GIPnDKWTV6G0Hd5cPLlQMJnqpZBtkF0Xg1rpOKiXv/pB
	ZvO134ii4v9nkbxx2PuG6pkl7hXtMKu4p54GBMWpiVSVTsmX7RD7oHe1SxBx9Dc0Moo=
X-Gm-Gg: ASbGnctgJsK7TyHnAd0jYOohKvvkaUG8xE1dFPreKI248WDVgUg98k+24o/XqdPJbZa
	ILIZIbs9lSdLJbI6P9MiYuJRvTR3y/hKSh9zYc5vltKs42QFDAUtGCNTFzjYhoCDsBDQ831Gi7r
	KbRhYWUv0On41kQA2VEG/e13mVcL2WYkKEtYjumBmQb3d3nnuqUDzq2uakxKg9X184mjFB6J1PI
	63C65i0OG7w2CxURjyVphj38Z73vDTBeTzJd4jVhzDXi62wsGhyJ3qswmYf70elvHSx1XbSJcgw
	RWB3c3cdVkRhkroyha3nm3lJzy0f1x7FDk6MZpBPMEhKA12nPuj8nSy1GoB5HxpZtw8=
X-Google-Smtp-Source: AGHT+IHGQZUCpU4EKwN0pDb1PR+66z4H2pK14lR6dL/m7pgvVM5j9STX22YLKDyKpdUEu3zyNckJVA==
X-Received: by 2002:a05:600c:a218:b0:44a:b9e4:4e6f with SMTP id 5b1f17b1804b1-4533cb3bd5dmr123193585e9.16.1750322020849;
        Thu, 19 Jun 2025 01:33:40 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:25 +0200
Subject: [PATCH v2 12/12] gpio: sa1100: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-12-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1424;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=c4Isjx61IsXwy1L10lydMFlqZBELu3z3ba+yBwH+QRc=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tTJRS7HeQsESgIvXXZ0x6YdiYTKomdEfEZK
 n1HshL3jCCJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUwAKCRARpy6gFHHX
 cuxYD/wKuuPZarmVQqOx/roO55GiDf7bp8izUkbVjw6CzO6my9TiQR/eHWWX48I0yMgBKqPffnx
 zz1IrAto5nMAQ9A6KTBIzHaSpr4xG1/HW2hsgFHfyyLQNlPaBpCoN/Hkew24KLU0l0XtlRFPCv+
 jLqU/XGI4V8cnRhpA6BT3W0PdIUNbubJn9Kui8m80DQH7IIHbqm7dOQQUrqdVLPXIfgdxk+oHKh
 bB/X5SGihn+BTWJANOm2/1GLHx3nR/5yj1RqN7W7JQt2QpLWy3Q1YBphABxr1vmYFrK9SiPq0c6
 ONeePjzonJ+6ypaoelJfD2fitGseIAKwp5B6mgBAuOFtZcCbO7viJLjnYgvI46LZkMGuoBbaJJm
 TXeNli/gceQzcOM2wUGI9XcjSet8NGq1ix+8QCot5tPEXRmbecZ4iuoA4c/OY9JTvXhzpv1MLw0
 kFo9CUCEY48J4FsizkRXgqW8IiOlaxqwD/duhHiOjeu7uMFnVkab2kppAP7UiF4K1tNBKxbsM5N
 y5kihu7nycPMXAWE64hLLk87yc1BirJvMOxwsWg/d6kHOIUgxUs+JIG2R7v+2Cvp1Ms+20pdKG2
 MmRu61iKy9tJmqKBqX+5x2zmfjfNiqX8c4jV/THDywyPZ160KYDr1iHXefZdq3yYKRZftPLFamQ
 jqh0yd0/V0Gc56g==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013342_485784_3FC35C24 
X-CRM114-Status: GOOD (  12.04  )
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
 drivers/gpio/gpio-sa1100.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-sa1100.c b/drivers/gpio/gpio-sa1100.c
index 3f3ee36bc3cb19a7baf530def0575d2ff09dd3c5..e9d054d78ccb8485b9f662fcec385fe0d0edc0d7 100644
--- a/drivers/gpio/gpio-sa1100.c
+++ b/drivers/gpio/gpio-sa1100.c
@@ -43,11 +43,14 @@ static int sa1100_gpio_get(struct gpio_chip *chip, unsigned offset)
 		BIT(offset);
 }
 
-static void sa1100_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+static int sa1100_gpio_set(struct gpio_chip *chip, unsigned int offset,
+			   int value)
 {
 	int reg = value ? R_GPSR : R_GPCR;
 
 	writel_relaxed(BIT(offset), sa1100_gpio_chip(chip)->membase + reg);
+
+	return 0;
 }
 
 static int sa1100_get_direction(struct gpio_chip *chip, unsigned offset)
@@ -96,7 +99,7 @@ static struct sa1100_gpio_chip sa1100_gpio_chip = {
 		.get_direction		= sa1100_get_direction,
 		.direction_input	= sa1100_direction_input,
 		.direction_output	= sa1100_direction_output,
-		.set			= sa1100_gpio_set,
+		.set_rv			= sa1100_gpio_set,
 		.get			= sa1100_gpio_get,
 		.to_irq			= sa1100_to_irq,
 		.base			= 0,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
