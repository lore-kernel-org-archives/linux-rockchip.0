Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54769C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h2XF01acIt4QXuVYFt1OecSf3XRfFc/lapC5rx+Nvw=; b=jIVfAb3E7XbUq7
	iUlqCs9nAAdrLmG74utECug6zwJhf9QMW9ECuhF7tIIXPYBz5LNOIxNrFw5fg1zNQqV7f+eIqaN7+
	kXOoaqH1B8+dXfrUTuw71skxiM87qw8Lw/aMU59ALq20s1ktWI4HUSrX6fur5m5SbjJYuVdDW/FON
	jLnCNCYBzLgzl246WbCoIhgyJlDucM5zaCGZTy6+hUcPO22ehRYAz+nWKW78w3P2/M3P3zi+QBM/r
	yY7cAVja/gAqCta/0dmf4cpUc/NkJ7w9GhRP/Tnsj/YUfzN0aMFqxnStTx3y6uTGoxwogq1x7qAyp
	SObnnfyD3pL7UX16W6Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVpf-00000007FcC-1LFX;
	Tue, 17 Jun 2025 12:54:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMu-00000007Az5-3DQ4
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so41872515e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163087; x=1750767887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j3425DJ9smVNqtgfiewFDDuDZUIYNH7UVu89t2el+0A=;
        b=H9KJ0V2PYWA39wezTJDRDk6bjhzGaqHB9a27lB11rMcLHHGeRF8Dif5w7ObepW8oaW
         gNLnw1LK7asbRk3mJ6dPR4Bd1/YHwQvL/FxpBxNPruwZNIHqbq/8UQO+bwRbDnv4jxBH
         BnPkupwPRn1vCSDkNChpnpEvOnAaJKrZSXjzPFyXp53BZOmAscammjV55TYh5QW8OPjT
         2SitqWeGxZKqIuDsAOA+WrE0gaVC3ERrAWoQoAZ62nNxiNGgwN2oPcZfgyWkjAIP9r/j
         oNXlQ8jZkGHHsrR+Nmu4mEnpiIg9safd2u0DRNgAhEgTyHAX3H6IoXdRj2qyiQa47CaJ
         wS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163087; x=1750767887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3425DJ9smVNqtgfiewFDDuDZUIYNH7UVu89t2el+0A=;
        b=w5/mKrU3RzsZR2c2zDzEB5w/chmZ7IOoZNWgL6+yxaURI3dabcK/4Ia2tR9MnJn2QZ
         I6q92w+AHE5wKU1jO7cI7g0H6wa94psnr8V84+5QuIAwGPj3Wv7j+ZDS++OCfKT5jz95
         e/94XIGoWXU0NYiwoCg7nwheNW8pQ/rbU6Qpoo/76sj6dmogcjUYwuc7HUgtY9xxBl+m
         xkizrNjlNZjNAipTA6xMLOTKq6b/voEO5R0Z6TgnjynftuRSWCVvqjvOikoM3Eecdpjg
         CHw5zdt3mfQ3wNHvyevvDfIVPd12Fo/pBwe7GfIjT91OwoXQw+IJYhCigXx0tqqx648w
         hvRw==
X-Forwarded-Encrypted: i=1; AJvYcCU1HY/kdCs4ecPcMS8vvKw0AxARUPazeuh9DDNZkCvi9cbkUH9j92x0ioemZs8844DUOAPVLQ6lCuKlp88lAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGFx2OS2MMjPkncgOT7IAp9ewUK6RjZwAyu0ziISkOqRMxnTay
	nTr59XKB0SwlQlz5wWsul0NPjraR4GvQanDZen/GEjxzxICFVjejXHPxUz6HoarUWNw=
X-Gm-Gg: ASbGncvnxytZ08gB0OKY1RSR9Aiwoh420dWH4pJY4RrbJBm7f9KBgA7GlSljrTG2uKe
	pBLG1eL0hpxYbqvVlS7k2I15OFvLmAf72W2W0tPhO0Tt3qngsN6JX148QSW+PJKizJNIAwRGBEz
	YeHeR1nXZRfjKEHNXhv9LelbqnEuhY/vdMvcJjICSQOB3XweS3VED91FAn5E/XotPo3Q7tyjXEa
	9jp4zhSMvsfoos6VclkI40pM3k96DpQSODgxfjCSCV1zYFq92rY+6pVBwiWT7p81KGxuBmDvZ+W
	v2yHBFQZY2wQjsDlkxjYELDhiEi1Pmsk8QbMidzdQjeRxBwrMFSiAiJk9zO40T6bCrI=
X-Google-Smtp-Source: AGHT+IFSaiKVtjNdh8JpqeiVYaqMnisnI6PtZWZir+IMOwFShpzWggv/UUCBrlgK4mkCKC+HFcgJ9w==
X-Received: by 2002:a05:600c:3513:b0:453:a95:f086 with SMTP id 5b1f17b1804b1-45343d2c0c4mr106531565e9.12.1750163087329;
        Tue, 17 Jun 2025 05:24:47 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:46 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:27 +0200
Subject: [PATCH 05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-5-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1348;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=U5ElyLmZBGysFJL9KcblCpbMCuSewiTUa3oGkohc5iA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6HxHcn+27NvQvfcxrQSoAF+rm4EBXSaiw7O
 jAF5IOHFY6JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehwAKCRARpy6gFHHX
 ctlqD/4/gbxk99tyQvyLzHrNJeGi24mjwUKkq1j+sQw6ALbBKzoDHmqfnKqIY8OLsCHbUTg8o7H
 WLpHhDv9MDocmKEc2xnBGqdhca8950X2Yw7bJ14AYGaBSNTk2gbnCqPtgwCxyzlGYRTH2e4qSDT
 d0Cqe9mnV0B6Rrrt5aNj8rKTVyt/J7X7uPyf5GAKS8TGO6IUfeQrCewVvHCaCo5NV9pJNG6ejEN
 iQPSSihfNWTzD6SXCjk70tmDN5zhvZDdNYThNj59HSNoqjfynIzS5ktlk6soYs039DHLCVH45NL
 QT5lHJ8hCpm3bAB3N5Lj6YOARL/YSGhm3r/8VevKOB2pp6aaKrKDSN5WMbqgW2WMo/MuiSEmIsT
 gLFIvF8uOCFS7LarA2OvuO11JjHzqQvEy19zMNxiiQYBsEQpsuufELBACem2g8XBOK+GKNUyvqT
 6MF3nTtT8HvTgNzOJGNQ6y6KlOKhDxOqJmi7ry24bP5A2TOapEP02tSoPwvV3cPcsI2DMzYbPSs
 epODKf1eCc4YqOEdO88F2YeJssIJEhbYYpsdYD1zTNxub2CPsZ0qfXV4Hq7LgR1gJ+Dt4xWWa9B
 ZoQi9CaF4e8a6170SQtMrKrtUuDpeBEPSfBGUNIbYbrFnJM6jvj03wxdzhaNOuGLSSRpHY/MCJe
 g3QUwGjaBa2LvOA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052448_824361_759FEAD9 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

The lines on this chip are input-only. GPIO core can handle the missing
.set() callback so there's no need to implement a dummy here. Drop it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/gpio/gpio-pmic-eic-sprd.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpio/gpio-pmic-eic-sprd.c b/drivers/gpio/gpio-pmic-eic-sprd.c
index d9b228bea42eec53ba9d0d0945125f530a22946c..cb015fb5c9467484022723910354219e2c98d3c7 100644
--- a/drivers/gpio/gpio-pmic-eic-sprd.c
+++ b/drivers/gpio/gpio-pmic-eic-sprd.c
@@ -109,12 +109,6 @@ static int sprd_pmic_eic_direction_input(struct gpio_chip *chip,
 	return 0;
 }
 
-static void sprd_pmic_eic_set(struct gpio_chip *chip, unsigned int offset,
-			      int value)
-{
-	/* EICs are always input, nothing need to do here. */
-}
-
 static int sprd_pmic_eic_set_debounce(struct gpio_chip *chip,
 				      unsigned int offset,
 				      unsigned int debounce)
@@ -351,7 +345,6 @@ static int sprd_pmic_eic_probe(struct platform_device *pdev)
 	pmic_eic->chip.request = sprd_pmic_eic_request;
 	pmic_eic->chip.free = sprd_pmic_eic_free;
 	pmic_eic->chip.set_config = sprd_pmic_eic_set_config;
-	pmic_eic->chip.set = sprd_pmic_eic_set;
 	pmic_eic->chip.get = sprd_pmic_eic_get;
 	pmic_eic->chip.can_sleep = true;
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
