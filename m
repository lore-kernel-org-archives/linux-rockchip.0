Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFDD5C71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2raXLLVtdPAYkIhYVnqye73CBfx5PSbWStvHtUfJes=; b=iTmb0lZzfO/1ir
	v3eU05N1LdXqsZ5ZqZ6y1ezcbbeMB92fWdkVyd6VhGWSacEgkthN6eI3WH/RU2fhGIhCw7rNxieLv
	a9is7e1ATsZCKxpkO3ZFWgfAvX7kD0tFKL4jZuVkvSGB9hbvXRG1c44z/lPYIULgUpFkJyDLPhDLm
	Qrq/9T8uE9OijnhNzHVUOSvrb6nmnTpsBA+ElEyMIECCAPuU9X8CbXT2sGeBCyNiWR3AwRjwY4mb/
	AszYDUY2Hexg2jGWoIhkbSgN19C92TSUEAig98iqxaoInz4vPwAAoXUSlotXx3WmGnA5VvKfO5Upj
	7xNbWquD3ifT8xP3XFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRW7T-00000007Iu8-10JK;
	Tue, 17 Jun 2025 13:12:55 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVN2-00000007B4N-1cLo
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:58 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3a54690d369so5767727f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163095; x=1750767895; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QlDtpw6smBpfIslmsuGCGMOBJqH80dy6aXMZgZ8Sqro=;
        b=ehd+mql7vY29r0N0CAtrz3bBB3V6iuidRGoDF7TLIkQ4/N37nPywxGieMPiBDOVfag
         ltu7vg1EOeaybLXYLvru3xH7MEkg9u/a5wAhTqefEptcG5E/CxJ3JiUZ7+9dCbMIeeI0
         D0pE0JkynLqV3asxb0k3NBXpUiA//Ji3DfNXRjo81zPqDldjZtpIACDqMhQ9W81uijZR
         69/NrszYpEF8r0OKEmjB2bXy7K3NMeUN5HZuIMkkZSA7iG0N//7P+LKYm/pEoiJXfrrY
         /sMJRQbWkmencRWIY67bEIZA56e+bl+g9pg0udHR0AGHIsGYqEU1DVaOGTGIyqhhKs5g
         Kl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163095; x=1750767895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QlDtpw6smBpfIslmsuGCGMOBJqH80dy6aXMZgZ8Sqro=;
        b=EUpWjJclbdw1oOnAXkDcpSUfH7HRmOAo/P9YMPNO5mbEXjgarqs/GujWc4+++5hKWp
         MAK0XPpyb0ZzJ/BBO2CEfXkqEdOAj/wb6ypK2MK9kYiMvc9wXPNkKdB5G8jxYkqruhpu
         +/zZGqC7/XHwGuOulJNwJg4rD5JFWtLPDM7MUnWXZlLB41STbxrQdYSJGGIl2HAARfw3
         CpI8MquCGfeKyTv7RmOWHb/seKq2bT54XImpyfIPmMIYcBcppWGl2BFbyBxUqkNdt+I9
         gVp71RVYnimRpcA1M+4cDlgKTGwHbBUJZY88myd0H+XWlr269L5O5067609IPa37bAzC
         /O5A==
X-Forwarded-Encrypted: i=1; AJvYcCWeuRS1L83k2aZ28jlYSvMQanvdu2726dXiD7rHlTtdr0offBK2kJOYwxKzyVr0iUYfyj88PcdUKdOBHIihYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2IMaMzbmjbO0Ncj5Kvzb12WFuIUmmd7/JydEjKVBB0Yey3MBQ
	nG77H5IEIepR/Njy1/YddzJ4E8eI4FyN2+ERmYJz5kI/xyitIV06+LaP3EvOGz10H/g=
X-Gm-Gg: ASbGncvnnGyATsnFEiee7SzFnb/YterFZ20q/5XeybMccLQA2X3VtrgIdWBsZ2gigXT
	PaIydAqLIU6onQE9VZQkgPkcFcpPUNLtIxxXhm/NFVxHdB20F6ebEpcfBaMBussS5+Rv2Le6vGO
	RvGHo6P0j3JjbPa5kil1vlhy7gZMX1g8IqEUZnEHmg+dVlVGlsPRZ8AOs6h3wdHjO6Npcx6Gt/H
	Zd86f3Jt4kYXIMUrZ5CDDTACMLs2jnhfpJRLc5KsTjlR7kF631rzydXgsTztIhu5FC16M9MSNv4
	26yMFbcVKHMv0lS4VxPoFfkUY1Jwg8+rZB4uM9cVMtizBNKj70stiOCT
X-Google-Smtp-Source: AGHT+IFsTWQIKZSJGIY/CXmS6lZIJ3ZenpODtlq8yK7uNveBH+mmtvLiQ+k6AgHQE4CwrhnHTwO8nw==
X-Received: by 2002:a05:6000:2382:b0:3a5:3bdd:6cfe with SMTP id ffacd0b85a97d-3a57237e161mr12452604f8f.26.1750163094424;
        Tue, 17 Jun 2025 05:24:54 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:34 +0200
Subject: [PATCH 12/12] gpio: sa1100: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-12-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1424;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=c4Isjx61IsXwy1L10lydMFlqZBELu3z3ba+yBwH+QRc=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6Ipp+OYSt+ikqj2UvGKKNMCmar+1zqMNgVE
 W9N6iQSuQGJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFeiAAKCRARpy6gFHHX
 chTeD/9I14P9RY3COUbCjQedgou7h73GVSmQAfpsU1+oR9NX67oKSF9DMr17US1TFf2xZifaFyB
 +A7PUaOjWr19fNg2617gbOaCxUfM1fd75XPrCYVHaR6PUWMzfvo96J35H4Aq1E4rp3nv6j8oYnp
 39K7mMEvi66do04dqvXYuAp3nGAPJ6+P7RXanRnhC0jbJ5JbGuJdG2pSH4gX8+YW3cc91WVrb7d
 4GxpxIYGWe0bGcDqZ17neqzVyzrpEluCO/VrPr/e81YyaUppzx9GoGtYMBXtNCd80QGyeAzfkOr
 FavT1ZDpRsyWPsF7c+aJ5Lk2ADy5FyToc5wtk1/IEhbCOc0ecPrrl28VY8mITwHwVpRtPIb48LK
 40+TDflwhqQkl4wvcZUGrZQJYaGEALsIizpjR0LRHe/nQxSHyjrudyn6DrrgfwWkzY9UBJsQMA8
 skB+VxmtuPO4gOKaUTkFlDa+LkasazYamiCrWNrJvXwY6PWop8tn0K8svtQ6P8S5HWlzSK0N6UZ
 Rxn9y/tS3F6w2S7c6XQTEEvtzi1V53Z+wxP2I/VELpg0AZVFcM1+55C+GTwbWshUf1qcMltwGSP
 vupnX/UiKGo9M3TMglMKZkB2CyR3GvqKjQ2rjUXGTgNK2IXSeKzrZbsyRGkQiOJDgGbpYuU5p4B
 SKaO1D2IiPKNZTw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052456_432872_71823FE6 
X-CRM114-Status: GOOD (  11.65  )
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
