Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB2AFC7115B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5//OoE5dGCxSH5ApKHxdAjiVmlboqTpQ/3B0G2+L0M=; b=3MXYdilwRqJayC
	+pe6p/gpK9JN/fnOptOtawFOQ4opsBzhzZhofv/7Ns1XEvXm+5XEbTZfYVPbuGx5WFxj4cQPei5+G
	02E/MW1x4Jtt91jUfJTYo/nZ3hh25QZE6WOiKVUwoiG0B1JO3q9HcWHtDSLbol3Cb+oxO/82HWC0v
	OufjaHZ26A4sBt9PJ7P+pC96BfMqI7ymJwiTd4XKi9O4My/Mt0zZoFIBu1SQch5nUrEvO+44w0AVP
	fftoYhNKYWefhYoo5vOAwYQaiiu54FilAzvMwajbRNHHD/AJeTtoRdVrD+s1XUrcREFUZWWpWm6C+
	F2H0cEVpDVn0IK+cY2Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWsZ-00000007Scb-2WLb;
	Tue, 17 Jun 2025 14:01:35 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMr-00000007AwI-1ybf
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:46 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-453066fad06so42495655e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163084; x=1750767884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aoNSIKbOdd485smFmBnHl/Mm0pNj2Y6zx1eXoO1wxPA=;
        b=DZhM6fsDT6Xv52ovSznKCXZjWJcDAdkY2M2IHlRJOOAE9tSxjJvunt52gb6mECBG5f
         yABbj95cPCb+WuqF/lHWKRjCDY3X6HcNsPu6pc7Xer/bOoxe2Zs41FYwZK/ZaLqzk3Zr
         y1Xu/omcSaPXOOP1NNyvrW/htqdS0InnGN2SHCVJveyla43MyRMPvGfKVDKvA9V4XOwH
         DEoEA8RND4ItPNffv2XUJ0+AjZa8/pfYkgGKWoAPxtN+5W3MFhjx+sJMUpdc8s9m6BaN
         yKzY85Cs8BPJWonfmTlTWX6hICpPpRmBv9P+pxsW2crwnpdDuScSfXjRvfzoMljbxBAJ
         jalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163084; x=1750767884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aoNSIKbOdd485smFmBnHl/Mm0pNj2Y6zx1eXoO1wxPA=;
        b=r/LSuBrxPEhxPnBBRFLkS9NFlHJVQ/YMO1RXbw/KaI1u+rfeJD84qOczCUhoOepUrT
         P632VDSv3nOMluUswHwGUD+HPk3tppySpEv7YNq1vHqsHSe2XLv58wVGufIdpRzO6Quq
         2cn8UMZhCcNSeH2oNa7zmiFYaTWd3An5ZW2sKowkAeOxnie7EvMYin0NhvF+Yt4LnS0h
         v7SWeO8hPJAEAwQpuxVFI2Ex/tKI7qhd77LYs6uObDOp/vZ+9Ua1CyVyeIwVM1S2ul2D
         MBIl5K/D49mZYuQKJab0ofZYZT8BXQJ/z7yfriinCpB88qUOUlj8Zr5NBVRlS0vyOu7e
         vbKw==
X-Forwarded-Encrypted: i=1; AJvYcCVDI7An0ppdmu+htPK0fhZ6QW4REDRFFexKDhQgTNKzvASx7srogWY0/u7SvylAoSw5OL2UuDy4DhIzvHiv/g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQnKyUhyBn3Q0+WziqI4pkBc57QImqq2H9gLwv7Kj3G3CAqfQ4
	90dYGk0ANeljWYj/EnkUyMx/dtYtw+tIwgGzQVYN2Nu6kCekOcb0VSuMXdyPoO8hc7A=
X-Gm-Gg: ASbGnct2ctVK/y45a9NOHtXHV2yuuke+5X7rdaqwn038PTdEM9CzUGKU/0EJIa9yk9r
	e4+IsOdWJhYkS07rwTb4gewOmgZXSKAJIwdOHI7XraK9wg26HbuJIEeRP2XmDSUnU/ICnzDszcV
	iL/0GAXmuB7zySl9hmJ/XV1aJpdp+6SNJQTIam3eOJJMIPC6iVQlZAHo0dIe14ZV1mtG8N0brp+
	E0CvG+Uu2PXlgI0Zjn+eo1aCQvERsZVC9e/zu/xfT2HNAw+J2RAOppDDO39VHFCEcsAg0aV7O3I
	HuZwLoVeC36qT3K2OJmqcyACpMQU26yTz3IYWerXBwuOcHjZOdMcENoH
X-Google-Smtp-Source: AGHT+IFjGWRgGD99OMAPMoLYwAIsTODZ+U2Af+jbgXlHRtQDLpU4RqEiIpXtgD7kFvIv8VVNBRGMcQ==
X-Received: by 2002:a05:600c:4e87:b0:442:d5dd:5b4b with SMTP id 5b1f17b1804b1-4533cac57efmr142885005e9.31.1750163083958;
        Tue, 17 Jun 2025 05:24:43 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:43 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:24 +0200
Subject: [PATCH 02/12] gpio: pcf857x: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-2-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2108;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=UjdVhHBdj/MT105x/Q2pFxBb2AP6k98PFv96j+C3ycI=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6GFFklv2v6R87MrAXNHZyNzFP4WjIs26eeM
 jaLuHbEIROJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehgAKCRARpy6gFHHX
 cp0pD/4jqSNOj2xQtdCVE8aUY/oYvVBdI0smTuI1wV5vjnOYk/XOkXPxvKf8cxCKJepJiLLS75O
 9uEpobTggd4GQR20kr2zy6RaQ1C/oR5/3lZ1XIMmdei4517WPUhe04bBOwP66+tx9x2+QCUOfxb
 OiDQPg7BqqU9Ze4mcCV6OzO2wd20MX85sbGuxWFYNnKNLPiJECCNX0MUGR6ktbXHJbtHmeoT+1S
 WeKPV3ZTVNqqeEpizUAc0KyDaquEVYil9JFsAr9MbXMwKtT/v95oJEaMoQe38czxMsnTmnhclZR
 PpVpK2jejmCrdCpG8IS55/a1qyLTuE3SNcfHnxBZeyEeHhStByjQ6V7xLyJlZGeyM20g+oojNAy
 d5Q9OHc7sWW19ebIZdW1MJtHbpv4FEQ+h4M2lyLVqVMs6G9YagQgkFrJgQI1VhVXqYJu4H5fjoe
 nBbzp8EnwzOoqu/qNJW8eL4Vov1WkldJYd7Rr0dHWxsESRABq9OEeqRL0MdnMEUJUmtQcsrG/kW
 f5aKK2U+oh9dXNTgl2ZydapCMP/mB8LSMlIwR4cxuFbdTE+W393h3xmAAcARFBX42BeiJszBJg8
 M4B52HDLRDWzhV7N9lrLgjf6FPQNmi4aM8vrs0vDtJLHo3t0dRpXziFICkKDKqTy+7NuyG8sBue
 U03dII3k8j0I+uA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052445_520400_AE56C94D 
X-CRM114-Status: GOOD (  11.03  )
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
