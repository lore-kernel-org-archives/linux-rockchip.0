Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68359C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnb8EugJ6WKsKjJnFlAVjhMDQfiHbIJ5VfzT4Rc8SNs=; b=gZ9Rk28sJm+asf
	2Y/qTCynwfLUk6/LBrLq1C2npJ2zZjbZ4oUL64iX5QREjEyam1QjGBJag6g3Wu3pwmSdTCJcJj8HV
	RkRPgLR/ANWQbuT59OKVTC0KT2pFb0j228p23lO/efQO+GuNtLPrGFFPXhadIRxi1EQxSru/bVhq9
	HI/9F+P3wH7dcQb/EW2My/OQ4YDHEbnyFM7AxODqsC8t7XqXiabxgoN6gAHV7hPlpl+h7eWM13O/v
	n9scsfNej207UDKM6u61M4HDuMJVaZS1cdPe0HGroIamn385JQz9vMOb4lRCNz5M+s7/QfMJ5Ha3A
	aR8DWIS/wBvQQ3g+Mylg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBPA-0000000Caya-2fpr;
	Thu, 19 Jun 2025 09:17:56 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiK-0000000CRLc-0cOS
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:41 +0000
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a525eee2e3so319177f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322018; x=1750926818; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXdEOuSE84y7KQ8YXqskQa8fEM4BBQcsKhAUrS+jouY=;
        b=eKwwpN7Uvf65YInETC9dLV9WUk40z2tXYzZm7y6Jrfrf21UURqzf2NVeCzvooc/Yaq
         jwpjKXqV10iV0mfdZNMK1+etm8SYgzJnW7rUPbfOBHmWmH5ZfeizgWTd2tbNGizEHiKs
         0/FLuUHN9HRcxwdSI9iBc5YN5m8s8HCRW2zqMHirhleZHQ6SMwThxU9nc6bjQpSPUAOL
         ASWVZageaO5fYxyXBjVAhHVmFS+pInJnkUIeQygLO1e1/sx8yiK/eeF+czSSx2qDFD0R
         Pa5jVE7K6aL7QJKq/yfYZiAITBrRC1UJIzf05Fm2RNpDTJncMv4/XHZCDkv+LSo7IYe9
         8TAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322018; x=1750926818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kXdEOuSE84y7KQ8YXqskQa8fEM4BBQcsKhAUrS+jouY=;
        b=jYYZ0CMTMJffgTxl7pyvfaD35BmPqTAvAG9ekfc1R1Mqhm+nNyYoTNRe+xqMXSc9I/
         MCMnSKKx0O7TgzusUqap3FaS+4YbUtiLCrweRHtApyV6mF+iCWaA5FFrfwRqYfYRx+9t
         TTA2o6m+bmRld2JWomXqWdylAzS8c9z4WqVgEcWmSwQBcyHy6wDFSJIcgY81wm0XYLQQ
         mBDcInxFFkOW9B/z1Kgtfbmk1FvQbBPHxYeWDXK+thpW5F8QwmaX0QyC/m8EspnRH1UI
         9EfGGYJpoM5qwONVM8CXYoGm6EBQtDSirzYu/eJyBM+zUufBw/Dsa6HvdTHSGvSumQL4
         C4pg==
X-Forwarded-Encrypted: i=1; AJvYcCVHRWbCKnFVhuBiRp3Pp5ohYU6SQbCMXvsftzQ3nsS/JisQPdcSCYxLPdRV0uqD2lzZ3aEsFBL5by78cujzZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmyTpKIYpT4C1DMpXgTZBWJp6hUN5785HgEdhdSM0L5fWtGS3W
	xkXbllREfgxYlQGOQDMQG4UUpBoSh0WLetby9o9gSM1ndi8L7frcc69M3SvkOXrMIo+r5Cdi8PD
	iCMhjNUU=
X-Gm-Gg: ASbGncuyyp/PFY9Z7KfLOtm2qHZpXqAr/0MG5pDEED3q3bDh0oV3eztkoEOQ3ETGXmh
	sIK13OChVDwlaWIfMy+r4VUZGmQCe3v0ymHV/yw5Bbj4mEwlRMD+jgPgOEUq3QRP+8GO50X5l5J
	KBQTzBB/Rp5dZM7C+YWQ+/SxbcM2IYPYVs2IoIXsyaXKC3ElS1RRzsZHw5ijI5OSDYiODHCbdM1
	W8swijtb00t07jGuyfLi1s0FmwoeRRs0KQZc0ylu6EwQgL2RwtW5izRGbSrBW49+E4O3DOGOEDR
	tVS1VtZPkRw4wf1dV3Ut6SMA6AiMvJesd0h0UNlyJW9hHk3plb165INu
X-Google-Smtp-Source: AGHT+IGYf6Ur9Ugv00BgKRd4oArCMUnqUFrWbDyyGQdN0NxdK6b+fGQpGmKSwn4EbOC14dV/Zz+MRA==
X-Received: by 2002:a05:6000:1a8e:b0:3a5:2208:41d9 with SMTP id ffacd0b85a97d-3a572e92134mr16408329f8f.40.1750322018388;
        Thu, 19 Jun 2025 01:33:38 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:37 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:24 +0200
Subject: [PATCH v2 11/12] gpio: rtd: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-11-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1662;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=v7M2Umlyn2cPSJSz3+M1vQ3MpPcGxR4ur24zUL3eZaA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tThgGdaruvFHruvGZ1lAgXO57/m24G9JZAH
 AZ0dHw+AMOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUwAKCRARpy6gFHHX
 cpX2D/4iJISKxtRrP48ODihJoiJODatcQMlQc7qJrlQLGfyqLACXHtKsWH3vo4ZYvHikNgYvQRJ
 D1nzxPRafhpjXoUNaE0TMiVgAlNKv9WTqPh8/ca2vopFGeG+12V4TJ0RolHwfeWF6rZlSlfU+CA
 FvT4uglIG4oz3YIndaFMKuiPqMomFTuZ0sz6nNr9S9WlWUhgXsNm9AKG8xL4IzkXqjtKBFiNu2+
 U3K7koUtZzrvTm8aKdtBVpr+Kh5fAyEqbjIUM8KOkoac5CfacDs5anNnBu9PKyrknB5dvjkw/Tj
 DfA5KyxsLMcEl5iT4UW5xS8NRuwrd2cXoVpY7NjLMeHOMKy8KE7LFp9uDxJUsiHuG2ANr+pNF+/
 Sp+rl+r5szqRedXKpvRobS9q+e3EP0vNDU/VDu1pZo/JXnoMuNM2qpx/nQVRU8Tsq8QcjUYl9ce
 lwj3Snv0N3vLx6DIj714XhH6wwZEaVKQhBofRj9acJG5pOKa6jB2WPRGvW125y1ztYvTMDeRfEv
 j2H2jU4CXmygo6ctNjELJGSJVJumx4KCPWqkrZtPbkWlOwMeO2fo29J+FLWIGoFhTsm+O8rMI3D
 Cl8TjTeMgJ2IZopO+r8CVVGpRCUAOrCeGhm4n04NxnSzuAKKqpB8gVhYIq4eL8fynV+EFkj49TV
 WjjMy+HzldWpe2w==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013340_184245_A0DC0220 
X-CRM114-Status: GOOD (  12.64  )
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
