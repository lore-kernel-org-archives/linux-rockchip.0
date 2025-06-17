Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83904C71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhD0Z38R7bGMsMYBUDtgZl+BnJfafFIqaKf0eVmgSW0=; b=j2j0ybltjBB6y6
	7+weK2Nqq2IfvYVh+0zkIlWtVdEP7mD9qh0+U8Kv9KyCFONLtXpbrZlCGnT8C87zqfXKI5c/0qvS4
	Pm5kAneWSvDr3WEIXf+A7p4qZ64bY6UKkr3bM1x+c1+yZAsfKDUzPtfOznSRtS1i5PoQLDtw/UWvq
	t5xLJhWXmljM3pIIeTMmFp8IOCnO4vvb3iuPVGBwPln8/gfRmGaztmp0QbljEsyVDNEjT2aq9a2Hz
	UcETrntzx/0kRNsVaGs016JpQSHkTI8mA+AecPmECdBrdTo5SXCDsWAJ2+e+TLJaO9cQIcwIzqioa
	LobfSmiWFAu+zjUFbeRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVwY-00000007Gbt-2QT2;
	Tue, 17 Jun 2025 13:01:38 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMw-00000007B0Q-3UgK
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-450cf0120cdso46423555e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163089; x=1750767889; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8+GlKxeWL5Yw829/r0IFKSs2jp0Xuv75Z5VhmG/MTnU=;
        b=DJlh6iXrRsbX7eh5R9M2TiJTzyHGDj/AX72X5bPnxjaan6E3VBRUUe/pyRTA2psyta
         xt1d8gGScYNSKwXOPDRkDO81erQQm1NDFISikyWI3gSfuO8xbq4Ji37OGrjEjBIOUqJ/
         M3zhOg0ZZQEejDRYlSgIr+HlrAjRD3uQ5CEQLEpfJJ+5nzqYwgPcGFBbMHQqg2pMP19m
         Jz/1fa5NWLDpzEPgsXWysIC+w7Usy3+Fib+oXJiVy0o5AqlNLgH1//Q6+UtbtRnhd+nu
         dNz1VvTqEDuF+yKpevR7F/ir1EHIRaDCJmpyVElNXzTucnkiIWVPeCbR8r4c7ZaXYa8k
         Ssvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163089; x=1750767889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+GlKxeWL5Yw829/r0IFKSs2jp0Xuv75Z5VhmG/MTnU=;
        b=Lc/g2e8l2IBYaPnOZdcqnLa99hDuNxwMhVI7Gofy4zh5J4FhuITw5bvhQee+xqCLb/
         YLKwl1hFl4bsHLeO83FMr4/EoTUwATKqKHnoM4l2A+iAV1kD5K2wAaf5cNyW0qJPO1Uf
         CPefZjLc6WhwMytDfQRoZXfDwWTgGEIVzQqjNYihhNEdrY2iqOxAdNyEjqIV62UelnD3
         ev5+qW+zae7BUMCOMSASmPsxe66gdMwlpn/k0/cYV7JqkfyI0PJiEZdCJqiLHUm0TuRW
         ZDRPcrh1NODi/Cn4jmX/2QnL9W78pEUW9v/NCSEHgrJUzn0HXz4YkFRUfM557mXUipCj
         ZUDA==
X-Forwarded-Encrypted: i=1; AJvYcCVrIuU7exCoSxa2/hgLuf772fMElQcXVpjZmJ5Sm+h8igAomhcsr7P7n/dt1j6mh8RQmo1IC4CDhuBNhnWYzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsTSBygq3IgKN5vo3f4t/gmL18oyAtl655gSlS+3veKtlQNj1m
	ERgyoTflCke2oPoFhs/hu0MG3BBo++cXDECtUvZUwHymyGnQDDXNQrg949QFEqzMmD8=
X-Gm-Gg: ASbGncv4goXmwzG/feuqucmyAJshq7X7ZeqJY4TpC5af7zDt3B3Ixsz/Wanx7KOJABf
	wnxNOW2Ywy2FA1Zyc3P8bBH4LTt3wrogR/MlkFGvGliTyhIL5H2slqUW+Qtli5+lmNBHiXbQvaR
	MsPj2mxTAcUq9PTWEN4WXk8SRljl7apWW3iCE7qqWb2FdndVTu5YugcwbxqFYQcncP7hynEPlCO
	vADlFU+DXvpJTv0kn353q59IH2hYNj+kBwymcqClGDD1E53ZGcf69qLz3+Bj3pDd0FtMZU52N8r
	KISX1ORPocxTj5K7rlxhSgvPjDqQ/sMLMXo5Sa6maoIq5VDoYskbhe3p
X-Google-Smtp-Source: AGHT+IFwpjSz/VHM1KyhKvNfDih6/s2ZuW+4Piw/6pIGHipA31KSBXaVEaKGZPgbplZCT6m1zd4LdA==
X-Received: by 2002:a05:600c:5287:b0:453:81a:2f3f with SMTP id 5b1f17b1804b1-4533cad0f12mr125521595e9.30.1750163089462;
        Tue, 17 Jun 2025 05:24:49 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:29 +0200
Subject: [PATCH 07/12] gpio: rc5t583: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-7-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2356;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=aSlqvGnhuSY1VlIGZB65GCCYVPKtjnadnIRxz6DCqho=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6HstBkB2gby7ddB5ZLVgfxa78tJTCxq4I8J
 JXEAxgt+RmJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehwAKCRARpy6gFHHX
 cnWHEADXLgTBO1s9GscEdPh3i4ocjK3Fa/8SahQJlDGg7IYd/EOFZsQB9lPfRFp1AmdlmS7Hyfv
 wGE5ENDEW385rm628aDZa1kkpglOzfjnYMKvsWysH/pBILnzwVxnNE4SF12vwSHkFjg0FN9MGLq
 Iibrg3tGBwjti1unsrky3likoeNWePQQCY/bjxBqIi4iaLMzHJFHZxNSRAAsmDiAbQqnrFVtDjY
 WH5QxkOAK/XBl/gNy+G8iBDGPIDqg1SRVQ26Lubw2pr7hxNP5e0dKF5xK4U9RM2yITwhJEDDCsZ
 D26jI2LV1B3QH6PdxJole1tENQRwDtL7XBgKx8cge9PwP+chO0J8WORAj6Mq07foZAnpLhgum63
 8fP39So4JYKqREjjgCgLJhdI/miZC+oTjHD+FRg+5puOVly96N3THIJ1Qg99d9Tdeb229ub7p7l
 xdFj2tti/aRhg5u6l/KFUttQMuS/QG/t5EPcIVfTYloM/GkfcitgFwLSxjLdT2e6qwYTyvMN/YW
 vegXsOBOMbpvEbX2FHamQUKwfV4eV8gcsThCxpamwhjZvd4WaYQLJinQgTectos4gxBgHa2i5TT
 1FoQlOY6pdq8zj/npDGDSKcwWyDBywH0KXAx7UR+/D1+AIcFMM7uHzUMrvQM3C71524LbPY2HAd
 aQ6m6DlGZp2r1SA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052450_933853_BFFBAF79 
X-CRM114-Status: GOOD (  12.40  )
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
 drivers/gpio/gpio-rc5t583.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rc5t583.c b/drivers/gpio/gpio-rc5t583.c
index c34dcadaee36d5fb775d4aaa8c8f8b275f4e2382..cf3e91d235df2eefc7d0fc93a58824edd55e9aba 100644
--- a/drivers/gpio/gpio-rc5t583.c
+++ b/drivers/gpio/gpio-rc5t583.c
@@ -35,14 +35,20 @@ static int rc5t583_gpio_get(struct gpio_chip *gc, unsigned int offset)
 	return !!(val & BIT(offset));
 }
 
-static void rc5t583_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
+static int rc5t583_gpio_set(struct gpio_chip *gc, unsigned int offset, int val)
 {
 	struct rc5t583_gpio *rc5t583_gpio = gpiochip_get_data(gc);
 	struct device *parent = rc5t583_gpio->rc5t583->dev;
+	int ret;
+
 	if (val)
-		rc5t583_set_bits(parent, RC5T583_GPIO_IOOUT, BIT(offset));
+		ret = rc5t583_set_bits(parent, RC5T583_GPIO_IOOUT,
+				       BIT(offset));
 	else
-		rc5t583_clear_bits(parent, RC5T583_GPIO_IOOUT, BIT(offset));
+		ret = rc5t583_clear_bits(parent, RC5T583_GPIO_IOOUT,
+					 BIT(offset));
+
+	return ret;
 }
 
 static int rc5t583_gpio_dir_input(struct gpio_chip *gc, unsigned int offset)
@@ -66,7 +72,10 @@ static int rc5t583_gpio_dir_output(struct gpio_chip *gc, unsigned offset,
 	struct device *parent = rc5t583_gpio->rc5t583->dev;
 	int ret;
 
-	rc5t583_gpio_set(gc, offset, value);
+	ret = rc5t583_gpio_set(gc, offset, value);
+	if (ret)
+		return ret;
+
 	ret = rc5t583_set_bits(parent, RC5T583_GPIO_IOSEL, BIT(offset));
 	if (ret < 0)
 		return ret;
@@ -109,7 +118,7 @@ static int rc5t583_gpio_probe(struct platform_device *pdev)
 	rc5t583_gpio->gpio_chip.free = rc5t583_gpio_free,
 	rc5t583_gpio->gpio_chip.direction_input = rc5t583_gpio_dir_input,
 	rc5t583_gpio->gpio_chip.direction_output = rc5t583_gpio_dir_output,
-	rc5t583_gpio->gpio_chip.set = rc5t583_gpio_set,
+	rc5t583_gpio->gpio_chip.set_rv = rc5t583_gpio_set,
 	rc5t583_gpio->gpio_chip.get = rc5t583_gpio_get,
 	rc5t583_gpio->gpio_chip.to_irq = rc5t583_gpio_to_irq,
 	rc5t583_gpio->gpio_chip.ngpio = RC5T583_MAX_GPIO,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
