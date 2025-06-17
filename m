Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 942B4C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVDEon1YTTRiUSOxzasHdHan9EpkAhIlXcaFDZqfn2Q=; b=K61XO5DoCsQihn
	0Fo1IPjNlVb+Not0V0si7tQcmPeWELuQGKlt0VvyjHms87+DQNwiSgwp99TdMJFGJIgouW0+ODMDs
	Oin12Dw9ePRbU1kfI1xiX/xKvG8T5hqiph1FellCTjRMPfFVD2y2sOr1BDHgY8m2F3XILpr9i29/f
	U+P0wlPN/OM5NH5iO/VXZQjjNrOXjNY4ebevV7HRWINTjGgdnN/Dw+37RUYTNcodC8g5LmmWbGEIy
	737xTHrPm84ytg3b0T5qPDjMyXH+x7PLuHIuJkzmV9B82NyxjpevgtPiFTsHrXhjaJLMwSxxiK5E/
	i7yQ58gA6+Yehuzvrduw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVyj-00000007H9u-3yrb;
	Tue, 17 Jun 2025 13:03:53 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMy-00000007B1y-2qsS
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:53 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-450cfb6a794so33371175e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163091; x=1750767891; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKQWt4//oHPqdwtyW4DHzL6S4FclhuKp/qxVZV3GJA4=;
        b=tJXAVTP+KavRUtrS5BC81CL11iQ4H0BoWKC8Sj5ETFi2bcoTfb1Jc0wIdmP/ntGNaW
         PBnH0MLEN1cPqPdTJUHUs0et2gxWFOpRt/I8cckPBfUajfG95pNFM9Ty6oCvz7ZA3v/i
         XMqDYn2hoRH09u0CJ0LJiU4BGP3FTbPEtRSwPXbh1+xMiHHFoqAxlKxtjUsFNj+Zq9qp
         iNLkqXFMUzH7Owl5tOEeBOp1Bozx+jstgTNOKIRe6pM9My00FkQYqrDvH/fVxgSWDxAm
         m5i0wG0YlTlT8kkBjeePO+Sv32eBL+Cawbl2/JfDe3ANobzr3l1HDPWpE8dAmZOjEIGL
         PEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163091; x=1750767891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKQWt4//oHPqdwtyW4DHzL6S4FclhuKp/qxVZV3GJA4=;
        b=r8u0oOmro2xC6lWmT1PAMkPq9oM46PRDmvZFGvGkpwQ3tD+4sY5ekP0VscdQQYxxTu
         BP+ceOduDfd3Y9m33lCu0pUPK0V9xGjUmFTxgKZHi5Kpds+i4uX//iO4GXMCInizOB4h
         y5D14wz3YUVbREr9ctigv4/jTL7uiob4TR58G91SakZvT9xpoh4/hgNEFzwutn/6iXda
         Ee1pPq7pATu9STbqz2mQXLUnkBrcyCkcpQrWWLfjc8fvMmtsnHoPpWaVHCdl33ga+VHq
         KeSSPmSyXk+kgpM3+ZuDnm8fCZIL6S/zboOZ6l0OZZY4BVLQ8e1Ijuia3znkc/acIcfx
         PD/g==
X-Forwarded-Encrypted: i=1; AJvYcCWo4+dy1RsBAI3A1HluQVUs8+C+Hw3JPsKimiGOO5Dgl6KGnKacWqb2UGDpSpNz5ZiUC2lhrGGTMPf1xxnwLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDHG2AuA2HwKe/iSRzUnJeu5nGEDneWlj5p1J/fc9uNXbstOOG
	OxeXiFo5VYPp+Hb0LuCKwQ44ZKn1Q4fdK7BWxYZmRMwzfWesSoqhqP3qNjWzWayJnZk=
X-Gm-Gg: ASbGncsN1P0SF3l8HDADTJUmufPvdFUIsBAwKtbpXod5eyQ/iMYnl676B4bNzRu2nfD
	B6akXmgnn0HnI+beU1DwDBgU0kJ/xDAraNXqA8GslT0T2wXadq78kPLO628BAarDbqCYGI7iw7m
	v7RAr+kAZ+KF4AXTmFViot0xWO7yD3O0X6vUzhpZ8Aur3hMAOIPdc7ilKSGpV74IKiFbSy8cz9+
	xqxD+VB13hPMitEUxPfzwTTUAOgp/UOhN6PohLfNpsxiaf096S2NqkFUzqH6GWUId+PxMRMcead
	Y28zD4qd2Uqb0MVCdmuZvyip6cl5WRp+TXNI4lYdiRTjtSaJcOJd6yQ/
X-Google-Smtp-Source: AGHT+IF6eYsaKpvLJvmiUt8QAE8cQozg8YKi52ZOS1NW0clbxh8hC/2bJbDvUtJBCX2vBadvgAd1AA==
X-Received: by 2002:a05:600c:5490:b0:450:d386:1afb with SMTP id 5b1f17b1804b1-4533ca550e9mr126976755e9.9.1750163091328;
        Tue, 17 Jun 2025 05:24:51 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:50 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:31 +0200
Subject: [PATCH 09/12] gpio: reg: use new GPIO line value setter callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-9-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1609;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=2vGuNGgCgh0pc+4hsP4u+sm/9GXFZBWpDEWg7HI60YI=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6IRA8tyBhHC37R2KBIo+pHJI7AEfyKcsRQq
 WM5zs1FSCiJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFeiAAKCRARpy6gFHHX
 ci99D/4hhJaBJIevMhmTwG4mOMgBexZpMsXQOU3lkV3o0lyW7sCFFoT4RAxJkgHQb3UY4BdCzYR
 hsuVsjmoiLXcB24EATcTHXDb+I4MldGSrUNljZkUqOcM2wOGt1cT658ZCdGGoH1vlNWLNHOVT6/
 2sL/BZgYNCi2AH3VGnf8a00O6kLdiRfcwLZC+PUzfsrpKn8gF1Ix3Mkbsa7OLF84038LJq6bI1c
 c2VRA2dqE9Gt+iutb+pLDOys7jK/e7YtrEvr6TVipW7t9rd+wfSGx6VjRRdQOzpRg1eu+J+Xi8T
 AYWthV9MGLhyJPDlQWECWxURTOjIym45RF7cVhwDCcsUKTj5xSOxGX09IUdOZYJR0VGfLcJPnbb
 8BddmRCCqi8QUywmi0PQdgTEK7df0vHiAsu3qsbCUCWv/gGbWZLFJNBy/KO5u554GAGHkJBg682
 j8YI40oL+nnf6nrN9JftBHs1Zd1kU2plsmAdp1w09XQCrJHaFQY3rUn6NEacZyxNZh1mzMfxSNZ
 G1fQZCb+TzEfZ+NGQJGbHU+7rf1b/xGILFLDqr+ip8XKYSSu5+No4Mauf3r9NKCxcIYvTtPMDBf
 uQx3IwCLQdPUqNBmuCpK8CrCHmX66eULZioJiClL3IJoMf8EKjEJF0epLFCIxutnFYCk+3O0QSk
 07I77UmQH5zfvzQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052452_726674_E0FE2022 
X-CRM114-Status: GOOD (  12.11  )
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
 drivers/gpio/gpio-reg.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-reg.c b/drivers/gpio/gpio-reg.c
index 73c7260d89c083a702b1d914ddca7a573a37de4a..d5f3d8f18b405d124b17c338d79846214f9e97de 100644
--- a/drivers/gpio/gpio-reg.c
+++ b/drivers/gpio/gpio-reg.c
@@ -57,7 +57,7 @@ static int gpio_reg_direction_input(struct gpio_chip *gc, unsigned offset)
 	return r->direction & BIT(offset) ? 0 : -ENOTSUPP;
 }
 
-static void gpio_reg_set(struct gpio_chip *gc, unsigned offset, int value)
+static int gpio_reg_set(struct gpio_chip *gc, unsigned int offset, int value)
 {
 	struct gpio_reg *r = to_gpio_reg(gc);
 	unsigned long flags;
@@ -72,6 +72,8 @@ static void gpio_reg_set(struct gpio_chip *gc, unsigned offset, int value)
 	r->out = val;
 	writel_relaxed(val, r->reg);
 	spin_unlock_irqrestore(&r->lock, flags);
+
+	return 0;
 }
 
 static int gpio_reg_get(struct gpio_chip *gc, unsigned offset)
@@ -157,7 +159,7 @@ struct gpio_chip *gpio_reg_init(struct device *dev, void __iomem *reg,
 	r->gc.get_direction = gpio_reg_get_direction;
 	r->gc.direction_input = gpio_reg_direction_input;
 	r->gc.direction_output = gpio_reg_direction_output;
-	r->gc.set = gpio_reg_set;
+	r->gc.set_rv = gpio_reg_set;
 	r->gc.get = gpio_reg_get;
 	r->gc.set_multiple = gpio_reg_set_multiple;
 	if (irqs)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
