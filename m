Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD19EC7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 08:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FU+593/iEQCmSUnuEqr5mRxlNTNNsg5mcOsGR9BHmE=; b=WJsxE1S8Dp0YJK
	jqxozKxQp4qeOCRiqfAdr5im0Nn8GPsNZzVrlpO95rPZ+xkfl1MZ4vOUvTBfpV/S6QlJ4XSdxw0kT
	ZaXFkmS7cRml2Eumv9iGmx9igPQzbVWfJTV6GCf6TjT1DC9NiEQnBmRVftXrL38istI0zBDJa+PBv
	1meCwPSDKInMt+SLIcASstWQAcnmD15PUeRR6LF5gT6/ZGP1mMYVlz/M8iXVRcQhRbn5R8Vg6MRAS
	kczQXs4qfoO9GU3BG8afYBkjYik3atP9zsKiP/ZIYu+kcUGeckldHIoE0r+b0UTg5+6kqljqibYcE
	aF9smhlODhP8l+YCWTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB3H-0000000CVe0-1YJI;
	Thu, 19 Jun 2025 08:55:19 +0000
Received: from mail-wr1-f54.google.com ([209.85.221.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiB-0000000CRHJ-39Nq
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:32 +0000
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a57ae5cb17so312607f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322010; x=1750926810; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QYBRyPsDGU996dnyWDGUWt7Y308dv2asqUkMv7/NV4k=;
        b=onj9jTbfRWcEQj1pFYS/Cc5lAfNtqFGbd1xwyQcrkg7IGmB//Zlvb2qit6S/K0p97I
         /bydmcqWAlpViFXqvzrj5E6n3y9Ut7D5AwtbTmT4xL35vXAEYy210V1GtyQT1UJpFLfY
         zXag6i2uImUDGCMLdqNFNarD01Wfx/U6mIfbK7gyGAOe0II/lOH5qWvl/SdsWGLEIhBF
         lXKQoubw6Jz0W3X7CXQa5/hRpW6uTiCTWoqCGwA7ytmzZ7lO3v9byA7rHvjVw0NQ/0yD
         px296R9FiP1wVpv9+P1clX5tDHznt1K6emxy9FwR9mNykIGYksHFBgd4ZZkhH/qTnvvv
         BVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322010; x=1750926810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QYBRyPsDGU996dnyWDGUWt7Y308dv2asqUkMv7/NV4k=;
        b=Q5T4ICC7Y4HtuCmCiEF7l5+DHNMZrJRfU97rBs2F6wQuo2AtoUUF4nSPqXNn/rgt+o
         yi1bJrelVmEGF0YpbFxV752ZIf61ODRapQoV5QIOU3uJQpU/zcO1pLEqwkgdrHObSJnn
         O5+p5He+IKO8LhLKA3CpEnurNd9DFBCVsaX91/xQ09E2tcDmewXjneMGdAoF5Y3GQ9jH
         ScmG716P861hsqDE5Vwhu0q91Y109V+WXhccNAyL5+p2rM6zhygLHeCsmb4KlWyhyU/B
         FYeRQqr53aygAfj1UbThxjk8eL9jtREOymudzJH2e03/ztTeDbiFIOCAudjLqDkZwoWp
         zQnw==
X-Forwarded-Encrypted: i=1; AJvYcCWPeJz+CtALCniGypx2NmL+vV6ytPSSqzdUpqrUjWpDN0v7a0+PPY8jd5z7Oa2pEvCPHNP2vLQggJ5YaLokfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwilIVk0P9FbTLLUgz1BGO7LNdXIIYIei0Ay5BVkBvoTl3GUj8n
	WB9QmLQtJ/bTHqAMZPPsNW1yo8w6OEInwpFtFvgk2Wnh2DtQfJVT4uuc5DUrTlBRbak=
X-Gm-Gg: ASbGnctWVoc9viwexmK18fJbTD8DvAwVjhYW+MSA7OSbgXndfiAXfLRQijzjzDyx588
	Ms1HVVh2NDndc0MDlOYxdUd4q+VE/tK9jIJgo9phe/xKZZIXoy+NgSGGb9P2xr1NDy6nOSMFbeU
	CVbvaQWhxEMNC0cz3sUd1xx167S+tarCFJ2L+F6gg+/KWQ4APToIgQ/3pP0VSTp18dCH+eNf8Kq
	pvjD6SOM4DmII6xH/06LB5whHA7QooFyjT8h2WypWOfSbLFZrMhWul0D/z2W6fHaKlzqqisGbMg
	Fv2AXj68Gg0t/1KQTKXloT6A1sYrn81zU/awHbyCtjD60Ae1Zg9GnQ0otTkCj+ZKIIs=
X-Google-Smtp-Source: AGHT+IEr0cQ3t4TpkTGvuVjGq7cZO5AQ6BZfBJ0TBysup1ZbbPr4xJbOqOBjen/dHiRJRCL3wPVhbA==
X-Received: by 2002:a05:6000:25f9:b0:3a4:f024:6717 with SMTP id ffacd0b85a97d-3a572e9a4a5mr15722608f8f.53.1750322009911;
        Thu, 19 Jun 2025 01:33:29 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:29 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:17 +0200
Subject: [PATCH v2 04/12] gpio: pl061: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-4-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1498;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=a1x5aRsn4kpz4DTuXQ3tdXS/YzbAV4e8kj3b/qk6D/4=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tRgkTy/UGYoAUmJiupC/RZztmRVGafnrAkg
 DK/05i+a6CJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUQAKCRARpy6gFHHX
 cnO5EACetBLUgnxHHE9jFOzifG/ThcrCv2NXqdEgAKT3Y5Vy7gTAQa9+76iIHz6/1YKVhIqBc8v
 VC9froCuMPH3X3wFZZ0j7qu3QM3lsGd6ZHQjMxwaKEYMK2dj/tPdMULBW/2meqofEw6L8ruo9K1
 KlTutcobE1KjZ576wI0Eb3no+rxcKiOw8lESyoxR6YqA2oQ9lPtNO7HZAboqGg9IORRpLBT2FzH
 mI39kRMp0Wkd2cMdsPbQRmVgNjtPrqCUpzCZReVR1JQuW5YZ8YAk0gB9foxpkPRPNz6HYqgEZT1
 kr9fDu3aUqpt6y8vP4iKtzPpj+ilsyCVFqe/2STYbwkhtYE393F1GOa2BpW6xBvQg0bxEeXm6yp
 QIZ8qzI9+FpX/6EZYWBeHFRhddA6K92F0EgjXP1MkBdCGB6I9pxm/5sGSOsH4sVNDVVmq2dUvqi
 FnElD2iPkDLGaH7QxmbmcuLFBMgGmJdIEjDVZQSY4MDDhA99yiqiQKdtvqHP0vgAYtZ0syLQTIs
 NmPcMRd4jOXZ8OxShxyr/oXyYY7H0Mk60UBAQiUb2XQ1ASEY81pagI+54BCYqW8eMPdf+4PtUPf
 EEoLDdOq/+VJ3kDxQr3C5KU1pxKPudgdhDjEZiEbK/I8HN6IkDYHov6F0Hb0u6P4HKt701hZl3n
 K8gv+VNOpIv6MiQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013331_783659_A85BBB3D 
X-CRM114-Status: GOOD (  12.20  )
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
 drivers/gpio/gpio-pl061.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index 1c273727ffa3ac54d0f1e66bd6efb784d2a8604e..98cfac4eac85295915b801a62d62c8d78f6cbc4a 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -115,11 +115,13 @@ static int pl061_get_value(struct gpio_chip *gc, unsigned offset)
 	return !!readb(pl061->base + (BIT(offset + 2)));
 }
 
-static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
+static int pl061_set_value(struct gpio_chip *gc, unsigned int offset, int value)
 {
 	struct pl061 *pl061 = gpiochip_get_data(gc);
 
 	writeb(!!value << offset, pl061->base + (BIT(offset + 2)));
+
+	return 0;
 }
 
 static int pl061_irq_type(struct irq_data *d, unsigned trigger)
@@ -328,7 +330,7 @@ static int pl061_probe(struct amba_device *adev, const struct amba_id *id)
 	pl061->gc.direction_input = pl061_direction_input;
 	pl061->gc.direction_output = pl061_direction_output;
 	pl061->gc.get = pl061_get_value;
-	pl061->gc.set = pl061_set_value;
+	pl061->gc.set_rv = pl061_set_value;
 	pl061->gc.ngpio = PL061_GPIO_NR;
 	pl061->gc.label = dev_name(dev);
 	pl061->gc.parent = dev;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
