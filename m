Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 908E6C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHH7gCKGqm1puOVev6sx+wqcWv9wHlVdkvHZv8evdtc=; b=YdSlQ+2WzH+QHO
	wrEiLJzH0uqXrvxoOvAqBn11r/e0LXAWMD8swOV6xM9YaY9aXpT/Sh1oYsKnnzS3GGd0yYkz3MGEp
	gZuihW27DDLNQWnfMsem9tnDbrTRo4GPg/5hZF8JrvOKnSBaBrU/XR4rJYp6nZusLMpg5RvT1S/2S
	oC8lRMKEs3rm3DQcUL2EUWiBdLQUAcCHnIME7yTTfoQ3t2CNIakIAzo1BnebMT1oJfhqsQe5L/SSE
	ZHOS67V92mGk11lXrrEfnCdnswKwYu5fBUHsiq5Dd/DxDLuqZC6STcv4AwHleDRUJ7QaIDtcYMLIX
	rJFnzdBiisBvy7VxqOSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWsZ-00000007Scf-3wso;
	Tue, 17 Jun 2025 14:01:35 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMq-00000007AvT-2EyR
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:46 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-453398e90e9so30310175e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163083; x=1750767883; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UN053MZ+yEo6A92AhgjaJPUWZr1Vpzz6RE1Bqia1tO8=;
        b=Se8oMDnbTODZns9oPxVf08AqWNlT5wPSCf+DOnlmt3MI/JQskKFrl9+UaLQcjeUNpH
         lZBawRenuaEuZcoEpPcgAx8RZn0JhOCinQMX9A5GUlOTQXHHOTIbGUCLFJGVeR8R/mki
         +RH7wY2la75gpci3xmhZWxBk4xATqfTaeFsrudt3h0kEdiOshabns3HWRYytUtMqo3Ji
         Q1QcUI9e8G0uVMMW/GSdb4nLV+OKmAfDiGg4zG0fIyD79kwTmMfzXXck52VAuwYVYhnz
         /ub8vEw5SU0W4QZB1pfXv2hxR9wnkBjG699oEORxu//bKS+noK3TVawzav57ej6zaFXs
         +cFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163083; x=1750767883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UN053MZ+yEo6A92AhgjaJPUWZr1Vpzz6RE1Bqia1tO8=;
        b=SCm04b6NFRxfizOQkxZfLhdYgiGoHlQ7VbCDcDEekDqmyyDKrSoW8aYq0lSyzgtdtr
         /l/KZhsm2ves84iBxf9xoy8hV5ywgxMzN/ucDotS9GPYtI0TTpg3v02kgPdUvNGpGfGX
         duHHoIVDJLyJ3zlJPkP7IVEWGowNhPOHFnHesSm0NIA+IlGutXGpFKHmIZ/im+XO+/t/
         Njo7aZNSoVpfR6IqsMJL8eNfzhX4MQZ4iYsari5/xhA3RgIFMA9Tj0VIYl7plzexe2iy
         1E3MRum9dRAHDR+mX3ByAu5SauyPYL4srFRkD2BEitFWimvEloS8LlXT+FdeVSF3kEOa
         c1SQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7RaNPX4bn/fXt4C+s0XgBb9Cuf62NblBd6QkDKbLTz3Nu9wBemTcqnQxdmVOdbAHB3cktlQMKVgLi3zg6uw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQM0c/B6D8UafZla+qICSYqmR48ZWC/h9jXc2hiETwuKrmJvjp
	910uXavMaIX72XjdVzccvfXTV+ycW4kxJkGec7BqR6z/28OBUAVtcCgc7NeA4Ww6eqM=
X-Gm-Gg: ASbGncvFDvHmwUu/USGun1uFy9JwLYOfW+bKULyYaB3DKPJofrvpfYsduFODonVbHot
	AoCC2d3xl17l0ghpagiO3Rz17dXVEMylmF0p7yFY97I2lPzs9uaX6SADSOUZh/wcQx4G/kwr5OC
	pSkj8hGD9s1muiF13ezqmoPMyxMvXKzM2tcz0x0ABYvAtbQfgCO+XzM+y2dro0Q2dHfiuAa/dLf
	x47gZCDiqkk2k28DUAXA2LMtFSKN58lTUZu6IhgvuoMC/txRk0G1k8Gx+jTYz4WGNVBuVGq+Ezg
	URrwNM02FDRF7xJj5Z4DG7MmSosb8yrjyc7imC5Ai4JIyUNzZxI9iGtAt/9B9I+J93k=
X-Google-Smtp-Source: AGHT+IHdDJq3gvA4sfWiaOxd+XFP/XNqtrP+XE6lxG6A2/HHHT+4Da+4G92+pmD+3HshQ5Xg9wkLvg==
X-Received: by 2002:a05:600c:37c4:b0:43c:f6c6:578c with SMTP id 5b1f17b1804b1-4533d5a03a9mr141189635e9.15.1750163082843;
        Tue, 17 Jun 2025 05:24:42 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:42 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:23 +0200
Subject: [PATCH 01/12] gpio: pca9570: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-1-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1532;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=t5r7nMPMOl/Fqhu7blFrjnyYOcc5SoneVJWT0UVvyG4=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6GexaPCP0OCCCwFHuQx75j/9CG0GCDLgAZ+
 KSrqpESNoeJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehgAKCRARpy6gFHHX
 crYWD/9ppC5aJkPOyjWUhC/39fpEYawzV1oo4LA3Ztz2IaHRnTre6rmnHt0RWCnXb3Ogft50bJz
 3OfxYoBxk7sT23zhDEayJMLa7f+yRxlrGtMkvvbajg7FnK6dG0ZLDivOjPjg+3j6E3Csa63xB2j
 8NHdCO9JCcXS993dXW2c3g1qsqyUR9jz8rDcpExWFZ/dpsvD1IhAW1s9pxCuuE6tkO4fK2zT0e/
 di9CWR4RhrAK430nIY3rf009lMITmd/RqKVwZqF5Ao7QVyT1xkeE2tyi8+SLYebXQrHJCOGir6z
 HvkMvSkvjZx58Vh587NJQmVKxXh+hfbpfjoifEL1TAG/u4umxKzvGrtWB/6GM6Ea702rIGaK379
 y0A3uyAYwtTOlKyB+AtIdxG2ydQWpo0NXYdH9Yh+RVNveDOALdEVGPqf7USkh/PIEJJRDPpXe0r
 s3bdRpJem+8LjEB3NEZWVlWEpdPiHVZB8YN+CImGcs2ZDCvS0plVUK0AOTDix+TymPsvXzmJGLR
 ha7VhjmPrxB8on4mkXhIm89HpjTC2Ifn15yc7tNP8ewrAgJ0CWo1V5xAgKX0hB/oUjIbBWWJDzo
 TEzXU+kxQqmGT1ktMvoWFMbHuwI2JIJHPv3eMDKPjty/8ZQqsn83VFR6GZ+oAtqFAQzfujICE4J
 zyK6vI1OeVADF8A==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052444_570084_08C72980 
X-CRM114-Status: GOOD (  11.55  )
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
 drivers/gpio/gpio-pca9570.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-pca9570.c b/drivers/gpio/gpio-pca9570.c
index d37ba404936835bca160822ee361604827976e9b..a33246f20fd838a57abeedbbd7e58259bf073a86 100644
--- a/drivers/gpio/gpio-pca9570.c
+++ b/drivers/gpio/gpio-pca9570.c
@@ -88,7 +88,7 @@ static int pca9570_get(struct gpio_chip *chip, unsigned offset)
 	return !!(buffer & BIT(offset));
 }
 
-static void pca9570_set(struct gpio_chip *chip, unsigned offset, int value)
+static int pca9570_set(struct gpio_chip *chip, unsigned int offset, int value)
 {
 	struct pca9570 *gpio = gpiochip_get_data(chip);
 	u8 buffer;
@@ -110,6 +110,7 @@ static void pca9570_set(struct gpio_chip *chip, unsigned offset, int value)
 
 out:
 	mutex_unlock(&gpio->lock);
+	return ret;
 }
 
 static int pca9570_probe(struct i2c_client *client)
@@ -125,7 +126,7 @@ static int pca9570_probe(struct i2c_client *client)
 	gpio->chip.owner = THIS_MODULE;
 	gpio->chip.get_direction = pca9570_get_direction;
 	gpio->chip.get = pca9570_get;
-	gpio->chip.set = pca9570_set;
+	gpio->chip.set_rv = pca9570_set;
 	gpio->chip.base = -1;
 	gpio->chip_data = device_get_match_data(&client->dev);
 	gpio->chip.ngpio = gpio->chip_data->ngpio;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
