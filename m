Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5388EC7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 10:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5//OoE5dGCxSH5ApKHxdAjiVmlboqTpQ/3B0G2+L0M=; b=0OMHK9beixBxHj
	qNai5R9VlXYfbnEsDp0Yxf+DdsByBJ//OGbufNJuGETFoieftOkupl06ZaUU+GuPA395gngf1kSD2
	jUgK0c9CikpKbKba906VhkcajTHC/68i7w1CKM0RleY8i1mg9plCiKMvFw/5HEEa8udF5HQ97Htjg
	J/CzUaIf31IR9NkHUjKsVk8NBDulEb0CNdd7e9VI4TLPAteqgB444azvPnP+k5pnnOaid1q3rP/m6
	B5NWDcrcga9SmkgcT5swHjcWCcN0+kMbTU0IyLiUlxaR7PIJSHpW2/oWCVLDykCJeB/ixHNhMdYJ3
	Rvx1NVf2Ybt+xH7dKvBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSC5n-0000000ChGL-35xq;
	Thu, 19 Jun 2025 10:01:59 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAi9-0000000CRGQ-0Pqg
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso460892f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322008; x=1750926808; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aoNSIKbOdd485smFmBnHl/Mm0pNj2Y6zx1eXoO1wxPA=;
        b=vv3oyMY9QwcJrnniYpQUoyAN15OK4TZZkVFgKN7XljaQ92IlU14KxJ183KMvTKEIDc
         6RtqQ0OmQDjqyshSSkNNwTZHAe6w7lXFFLnQhFU7rR/7pofu1dHoHpjz0lyYv0TXN92h
         trKnNgeSsL1Y/FjHk22HAxNbZCj7gftO5JMvXIIfWIkx1ErNYZWCZjAltDceGRmEgmWS
         w1j3rr+6MVwHdGZT8dp26l9w9xVgwFcpxMx/Mrn1SffWJSzES6Fda1OGgJSFg0cm5gNN
         +boLNNkm9E772nWePYJdlQg6njHK8C4TWRmP6GU+UmrGOrC6kFWHZTvgdwMFMkC8ANQg
         1gLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322008; x=1750926808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aoNSIKbOdd485smFmBnHl/Mm0pNj2Y6zx1eXoO1wxPA=;
        b=PKKpi4rwhKWB4dvO+hcrMbkMWbs8iIv6NR2rBFn3XFL7HVBootqg7Dt3/0ix1rUjEK
         ZoSgZ0o61yuN56Ob0cnjj3u8y3K8dLg2WtlYxE681o0FUpiI/uSohlQMYFdEEykCiL4i
         7NkheVfhInUuQZlK90WPWrAIAeTB3+ZlsxpP52KMSTvQ2CmyN8864ThYz/ccLe62o4RR
         PZgCFCCT+raYzyMKiAIl80i7M8pWVGDVj3+SI4SGABNJBppbZlRZ6EnD/dhp2xA2W7So
         qjkiEp21zQKjN4JwZO3SgqUCDWxXvq2lmzblm7xn3nEOwCEGcPHKUruKbS6X17G/0pKz
         Z0ow==
X-Forwarded-Encrypted: i=1; AJvYcCX9UjMNdBIF+HbtxBMOhlbFEXroce2odk5p4wS6IwOtSgmpmvwE8+oBv+dDAF26oibVntTjey8eP6egB5j9kg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7BEslChr1JmZCGJpzqNakXeE11FMaNwPaChInKyiwkHfyUG/B
	ux3wV0FxL1ugdr6XDfu6vnqjfiolBGtEQQUH+U4GAONV3WVX51coEKhRji/budJ5oTYzUmuUO7c
	drDXfzWw=
X-Gm-Gg: ASbGnctSaUjJ0soZEy8SW6WjXqInu1mDIvQ6jXqFpsALWpwTjd4vp2kDu2tJLqBLXIC
	KGuDykSk7fuGCND5mYmSgm9VpcBtQg2/RidE4ZvruhZ3ICcBlzeN64Pj8pWkKM57nRJ9qvZLY5W
	B+KHnUaSzT64MIPOeCBQsZ0bKAebnjT1ZTAHSTM0M2VqIptxiTYQvEqNN5+Cm8bqCO7EklhDlUV
	PPOAgXwtHs+m2JEvVhArXc7laCxghDipdn/h4vHXIY8IBJbDPIowSz7lHhaQLdTDxOOfGgWYn6X
	LUdGnZI9ilgUpSNMd7kEnuUmRalAnDA1NETFUCuD/qTLZ/5laHYJD1+Q
X-Google-Smtp-Source: AGHT+IHe4d+B/hxUOK2bnJFDnHeb97EwrHtnkLvTycjD/SAz+yoFSaaQYQmyOZJ3t+SenurZC+RZOA==
X-Received: by 2002:a5d:64c2:0:b0:3a4:e6c6:b8bf with SMTP id ffacd0b85a97d-3a572e562abmr17981536f8f.52.1750322007770;
        Thu, 19 Jun 2025 01:33:27 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:15 +0200
Subject: [PATCH v2 02/12] gpio: pcf857x: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-2-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2108;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=UjdVhHBdj/MT105x/Q2pFxBb2AP6k98PFv96j+C3ycI=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tRUaVjYB8TCH13E8mcMXqkCPZfRtBR4qqWH
 /WUoQsvQ8iJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUQAKCRARpy6gFHHX
 coGSEACHErXifEnqqKpybQk8gmcrD11FOI6ZnQC3xR1I1k7gBjHsTrsAjYbi1LE8fZKHMWwo0/k
 lnk2USAJIOjDaSZNWlaynNQIEUCVwXFmrWv59D2ceVNX+veJh+sri3z66LQYoKQu1Ay9Vno4ujR
 VqBQm3VrVuWWhfTqPgaHS0nk9tAd1ABJZBTnpfvvG8JQVLmkW6HRnuIdmSpjFZb9XdQyZS4rNhz
 I3C4BGnGt0/X5kBcVbQcYJCRZw4A4iHOXR+U/BWhAsULDAiSSNISKyziUj/v9zOUi1qEQYqGXer
 WtKHJgZbLTB/DTZF+KEPI7MU2cDMDO5qfMzLCHqmLwZmdbCM5m/LAAjJ1281UDkrQbuThv883ow
 9AppTsR/koSlX8YaZX09dkZW3HE9U8YRRAZmV7xkMCG67CW7l2K/viC6O+umZlgTwFN0YWjpKxN
 EKEJeL4rZrJqT41/WsCmnPE3e7xoZIEDNf1viV2O2QgapMzLmKLhCbZL3tAgVGRGaGvJFPE75I6
 nfyEebW2KfZU1XPbwL84kSd2+iAXvmOMmj23Z/rpcsmFPXZqHelBfIra2Ei4bs2JEXaMmxHxjbI
 W+rgA+Y+lzcjQyj45sI19sIvRzuPUr3OyAdpVYyiXD6DISVH0BUL86iT7yIkuoReDqqdohECXIL
 d7uhlxLNix+8Agw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013329_148679_8B8F8742 
X-CRM114-Status: GOOD (  11.43  )
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
 drivers/gpio/gpio-pcf857x.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 2e5f5d7f886598318b753304e7e0efca54ff8b69..a042036803336439d8e164fcfbd0263b0e84f3a4 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -171,21 +171,24 @@ static int pcf857x_output(struct gpio_chip *chip, unsigned int offset, int value
 	return status;
 }
 
-static void pcf857x_set(struct gpio_chip *chip, unsigned int offset, int value)
+static int pcf857x_set(struct gpio_chip *chip, unsigned int offset, int value)
 {
-	pcf857x_output(chip, offset, value);
+	return pcf857x_output(chip, offset, value);
 }
 
-static void pcf857x_set_multiple(struct gpio_chip *chip, unsigned long *mask,
-				 unsigned long *bits)
+static int pcf857x_set_multiple(struct gpio_chip *chip, unsigned long *mask,
+				unsigned long *bits)
 {
 	struct pcf857x *gpio = gpiochip_get_data(chip);
+	int status;
 
 	mutex_lock(&gpio->lock);
 	gpio->out &= ~*mask;
 	gpio->out |= *bits & *mask;
-	gpio->write(gpio->client, gpio->out);
+	status = gpio->write(gpio->client, gpio->out);
 	mutex_unlock(&gpio->lock);
+
+	return status;
 }
 
 /*-------------------------------------------------------------------------*/
@@ -292,8 +295,8 @@ static int pcf857x_probe(struct i2c_client *client)
 	gpio->chip.owner		= THIS_MODULE;
 	gpio->chip.get			= pcf857x_get;
 	gpio->chip.get_multiple		= pcf857x_get_multiple;
-	gpio->chip.set			= pcf857x_set;
-	gpio->chip.set_multiple		= pcf857x_set_multiple;
+	gpio->chip.set_rv		= pcf857x_set;
+	gpio->chip.set_multiple_rv	= pcf857x_set_multiple;
 	gpio->chip.direction_input	= pcf857x_input;
 	gpio->chip.direction_output	= pcf857x_output;
 	gpio->chip.ngpio		= (uintptr_t)i2c_get_match_data(client);

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
