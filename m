Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62940C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mae9UrEyRFy/f/IE4YoASA/DX4ChUQj/BfmmslC1wwY=; b=D/n1cPbZRxPiOF
	Qk62qTW35xUaWP+9LiGX+7nqbSLxc4TrIlBU2HLNPchB2R3rwvOHDtqAAjb6RkRgTwvH79CS9Yxik
	cg1u+cT/7F8pOrgAMEcm4SyJSB2OoETr2beECkRCnLB/5ADpaWtbXJS7HWsUmEtkWnoStypSkqs2y
	dBiW3Qk2GscqzFOKqbUWa0Kxvg4WZI2cb9XBgn2X68/YeMBr5fgF893ODpd7XPZZjb6aF2GYDR00+
	M247cD0WxarDMFAqZMKxgrp9D16oLXIXmQVTnGXGuMDG0ZnDPPIMSSJco7l+ZAGy1Pm9x3uFdlcZb
	XGyPVUtgxcsFiXxCT+ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB9r-0000000CXdb-1eO5;
	Thu, 19 Jun 2025 09:02:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiG-0000000CRJd-0MDb
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=rBA3kzrSkCDXqL/qmFtpqMrbH8iiG3hu1F80uNaFdYQ=; b=YpJY2Mos6+pDW9H5vKnVWCGlCx
	zk/Jglhzwuj9XS7SeSOXVXn1dmAvvnuqoGc6bPUnXVrxmxF8YdwWrnLyU9qPQeRNclWJL6aj0xdOM
	BU2vA0b42OQ9YZ1lIxpkuEqmcm0J5pQijaJIbVQeIMAD5acjAAMcR11CP6B+2Ch80TULCEDAbEtTu
	iui8vsa76zMCYfYT78f/PoSDRAsgoHQYwTjQQarGQp/24/xUktKZtEtb4K59z92TP7X/wW9entm7b
	Je5wR3GC/+ZikbeNU4fssYXAG6pBAO20QV7HBJ+kKuH/OyepXax34BbKmz7MAD2F/UaWtZpNo10+t
	/2Aup59g==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiD-00000004NpK-3hgn
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:35 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3a54690d369so551832f8f.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322012; x=1750926812; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rBA3kzrSkCDXqL/qmFtpqMrbH8iiG3hu1F80uNaFdYQ=;
        b=qZrxE6mYBkCPtqLUtURzakpg44cmXhtVn5XIxKvPSfzNIkD654uJyhIeRcUstLVXT8
         yuj8WWZwR0EjucvcKXmrTU4K8TXBcTpGUJiutvf4Y9lCOUPrgRAzq/PLOS/cWC/wjw1k
         xJetTm1kxNg9BauNzL0flfhEUdwjhnkb51ERu7bS8hBRtaLdjg+SJGXS9qEzSJj2m51P
         mi0TWd+NHkLOykZ+6+DxyCRzFuYTqP8ALT3EheU6Q/tk4nlCYAXfoAbdtbmoeYbAkWEI
         baSPNavTvThPE2f4OxS8jLCHN4y2d7ksDfGE3qDbpl2rRWSA0ye/yAIzSxpgWxDYF4nb
         7VZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322012; x=1750926812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBA3kzrSkCDXqL/qmFtpqMrbH8iiG3hu1F80uNaFdYQ=;
        b=JtqIODsuRJeEMSzhZed/1vSbH2osbU+JkkzhC8SJTxshPz4G2KyXuCSBS8flFOgIL5
         GKPDuhkHHhs84/5Jm6aoqyq5jNlRHLaCfeU+OrQ2oXsLFN+7MW5CjQ0Kp93O1JNMI9Bi
         R3qykIbAMzAYrAJfdYoeX0sUjvjM1yA7gUgkedrRN2zzButZBb17234qFowjXCrw3KGL
         GpgsSqImrKNhFOq0BD2TnmJXdZEmsEN7XcfkEcsE3H/sJDej8+gyj/83z4BHUnqQptyj
         YuEM3UVEpMx6CaNts/5w6sowot/sZSj8ZuoU6lQy6FZYX5MXiyp2gnqhtn5l1Ic4Bwjt
         qcgw==
X-Forwarded-Encrypted: i=1; AJvYcCUAeCiqjX/1t/Sg9bibYSSKV9DY6QxaqiV4FzV8UzZst6Rh5cv7czCVIeiPO7q78AWOExnyz5e30NuzUjZghQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNEewSKnoaoI/p98ULIOtt60AVap3ShU0IVfzQeGz/EHu5TiW4
	XqOPHGmfrH9pKSBZTCzirO4u+JqJWwUFGfoQ2SlNcZSe7v5/u2KUa9v1pfC1dwmE0ts=
X-Gm-Gg: ASbGncuiXxzKzjJh+RBhPRHraoMuVBtO98wkVSrFLOGVnJeAcTzSAbD9oL6CAM68vr2
	/ERRbL0Vxj5ZmWQ2ejcHorJdJZcqyXN2uQbEsWLyFHU/qi555IjP/uXxsxNEEBMV6CCbnUs3SeB
	gQrjw32OcCmQ9RSwZ+AYZnmA0nZTw0oMzM7ZH36/aLuT/IdyMNStqbRdFRkS6NJmjskSG6zZQMI
	wwex+KQ5lwSYGFAtn2mPko1J9P1+EnXibxcd6PGMVVfWLm2WuVOFqvfRHsd+tWn0hjO0/1vQMpF
	JDfL0jzLjDSnY/8q7gcG6EdjENf42cQ4jmpWUNcAS+g7yqJM+nSOkDko
X-Google-Smtp-Source: AGHT+IExSetU+H/G46+A+Kv2pCw5w5XlUszs48CCHuzCg/K6f+lzMaSm5DYdy7QwosUzPYCH8ueY9Q==
X-Received: by 2002:a05:6000:1a88:b0:3a4:f41d:696e with SMTP id ffacd0b85a97d-3a5723a397bmr18021776f8f.27.1750322012064;
        Thu, 19 Jun 2025 01:33:32 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:31 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:19 +0200
Subject: [PATCH v2 06/12] gpio: pxa: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-6-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1502;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=B+Qz2OspKJ91xFNTEdAqgmxdOA/mnHzp8sm3HNk30eo=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tSTMyIqQjS6A96KtIVo+22ennHEyY/653Ay
 ufgFq0L+7eJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUgAKCRARpy6gFHHX
 cllAEACcTO62jc9A4KHYc55XCch/hQhSLs8RmhzwqrMdUvC1ddw8nhH0A5xoRW7xEWXvE+sXZ4y
 UvEwwrLPzhzblUr1IHw8dpgT/Mj1pueQnCqvymJOCanv6KzE3uOVN0/wf7n4hxuxsnu980DcDNz
 zmKel/hACORSUcnaBH6uyxM8KoSSNFbSd20XvTomvekETxI1Fto5MQw5RnP3gFE64fIgREer+Ov
 W0DMQdlYgzmmzTc2r+8hc8qLmSuFbQGteSRIjwC2Ij8NvACWdhAXzDyePkew6+3h3m5MMl30mA7
 oBtzhuNgW6iBNQlQAvYHEj+9B8w1sHe1dfD72vX7/Xc4GJsBAGKVAoIRQsspQup0+3NeorznGaW
 SDfYRh24udQ44UNa7JRqMsdcb6NXbX7AWgN0XKNj+U0X6GCgAuBQKnh5nt1hrqSPYwv44ZmceKC
 AZ+QsImPGESHhsHf0p62cKZmi/eyOJUewON8F8Gt7Sb3MrK5fRBn/jxJZ3zlhTEIJjPqVs4mUd9
 GTOWmqFnR8FecCfio/EwJA/lOrk9VT1ZnC8dFGR12c7HkarYXRxHg7FOidsL5lsUlCuUiVQI1O3
 r9RNAta3xi01R2CPUSH/VPytL8EZSavtDAfQSW3GcMxshABy92XhhIEPh0i5Iqf0ZvSX2tw4wH+
 HkgTHlO2fFlRi8Q==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_093334_032126_2226D685 
X-CRM114-Status: GOOD (  11.40  )
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
 drivers/gpio/gpio-pxa.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-pxa.c b/drivers/gpio/gpio-pxa.c
index 131ab79ebce7555313fd93b3ebd80582d1b9327d..13f7da2a9486428bb8d1d44d2caf9f21f82cbca5 100644
--- a/drivers/gpio/gpio-pxa.c
+++ b/drivers/gpio/gpio-pxa.c
@@ -315,12 +315,14 @@ static int pxa_gpio_get(struct gpio_chip *chip, unsigned offset)
 	return !!(gplr & GPIO_bit(offset));
 }
 
-static void pxa_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+static int pxa_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
 {
 	void __iomem *base = gpio_bank_base(chip, offset);
 
 	writel_relaxed(GPIO_bit(offset),
 		       base + (value ? GPSR_OFFSET : GPCR_OFFSET));
+
+	return 0;
 }
 
 #ifdef CONFIG_OF_GPIO
@@ -353,7 +355,7 @@ static int pxa_init_gpio_chip(struct pxa_gpio_chip *pchip, int ngpio, void __iom
 	pchip->chip.direction_input  = pxa_gpio_direction_input;
 	pchip->chip.direction_output = pxa_gpio_direction_output;
 	pchip->chip.get = pxa_gpio_get;
-	pchip->chip.set = pxa_gpio_set;
+	pchip->chip.set_rv = pxa_gpio_set;
 	pchip->chip.to_irq = pxa_gpio_to_irq;
 	pchip->chip.ngpio = ngpio;
 	pchip->chip.request = gpiochip_generic_request;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
