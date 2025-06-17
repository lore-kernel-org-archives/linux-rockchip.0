Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B3E0C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LfoJ/gvgtCSQzNDq/aT94+i5O+8ZLpyhsppkrUUvJM=; b=qRmrcd4xTmlN2u
	q4YIdTBcrQt8ZE4FP1BNatWj9Q1IX8PhqtqoV2rRYTJrBuh+3qhcuLXPkB9xiEN6qqeggMl0DAqL0
	pZgsRaEizGH8kcaj73s2v/VhnfTmX/6+JjqLjZNyv14nBxzr63mTxLv6q0yyCEc9j+isDDVLYVixv
	g+efUQ3JA7PPgCGU4XvTIEYoIo/+xS6O7qXANsxnpFvix67W4QJHd3eWv+XgRlKl9TjGCjtQvfwNM
	Zsz4xPKSYU5j3xJh/ydXlWld19mzF0ACR0PsgKWPJckjZOpd5g1f8Riv5y2zNRPrHTB55Mnbd926i
	h31RQYGa6XrnDkk5R9qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRW0v-00000007HeJ-1QeT;
	Tue, 17 Jun 2025 13:06:09 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMz-00000007B2n-33ke
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:54 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-451ebd3d149so37415975e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163092; x=1750767892; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fUxEFCxSV+En4LdALjtxQKt1K3KufAQa0J+EdQHN8Wk=;
        b=bdHE+JMSk98b54Ptebjeo/ltwazSrAmVxHRuNtN4lSUVzfLASxrRvyCZg0JgsuKDxo
         d6SsDqVI6CsWcA1EuSW8dyvwtV69GFZBaK788nkhdC8iPP8aXU6kpthTJec4SZlxz/Zz
         Enro0izxzdWL2MvmFxFG9YOJ+9BbFge6ycNv6fCIUhL4H/SRjyCCFjin8DbOz6MQOicV
         FMWaG0ONo9ygRHV3HYurSNF6UxbGJEMVb2AWJXg8KSp64MiFxLZchZIs54xET5qinx9H
         XZ8DtJQyqAy7TChw/q244Mc7HI9L5jsC8fT8zDBkDiOyquHF4EjzhhFVUmY1N/dSzo6a
         gNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163092; x=1750767892;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUxEFCxSV+En4LdALjtxQKt1K3KufAQa0J+EdQHN8Wk=;
        b=YOtgKp9WcOSTaXt8EtWTBaexnRETlJkDToHTcd2zTtCjoQSISowOob7+zfqM3/UMVQ
         dg6CRe5a0C98jogmXn0er+5yvM6vjDjUio4g2zWbe03trMtgByYPC7RseK/pZTNs9RfH
         tA9QaMDJ2fXx2fJTHrxSOgO8rX8ihFtpO+QySAEb09bAnR+KjtvzLgUy/q/Dd+x5JwUf
         dF7I8ecTT3hiyvpR0bpFA1Ktzd/Cf+PkvNYqZffhl2839U61qQvlm1fJMBhvZQ+ED+qS
         P56zVARqB4JCWY2Hd7rqrEZKEf6mYhyRjrMZEf0WqJ2PLLr9Tbg16kS6VjNQMd/pJl5g
         xetQ==
X-Forwarded-Encrypted: i=1; AJvYcCVudnYkldhY9DZ9cKs7jg/+tNx/hQriL6EaKY0RdeQe6e3vf5IF62BiK/2fuCmpXo/N2BryWl9Yo9czho+9og==@lists.infradead.org
X-Gm-Message-State: AOJu0YzU9R9Q0gY2yxyD9pzfzli/OwwXpfhPLpvbNuiduMDngryW9swV
	zB9YBtGV9cmFCFGYhdaSGVzbu0pgMg7MMXTN3BHw3fazeUlSlICmhWnGqz7wqV8aayQ=
X-Gm-Gg: ASbGnctCjbjqnBVPEqoVt3al3Hu8d7YCsdx2FZ7iUKiZOKxSOv6YXmJ9sLLXPiOjfbn
	OaiBOaoDpXyymRKT2EsuhlhAaEGVIevR//NIOEXwPJRTvSEF7icZVYRjdtbvGrUwZeRgqx/b0zt
	iMmlhSmjCzVeFsLHpYmISH5QTnZtk/ceXeD6Bs+IdVoGYbGrskkjxIfoT36wA9hUN+OcOufVTuZ
	AiK2hwAcdSRnQ2TFnK/ajf7e37IE31yAdnYMFxdfPcGT8Kxe/NnWJKrqz51IFFr/PdaSu4hx7p5
	oeGkWsvs7VQIBRJF8uRKln12QsD5j0W9uTpev8iEd3vhow0cdSUKlApL
X-Google-Smtp-Source: AGHT+IGgYH+QDdfuvXiPaRleCGYB4hawdcNCoD+7SQT0TTGxbFuQ1U1ki3nSuWN7vTMRqEzg9ktwWg==
X-Received: by 2002:a05:600c:4f14:b0:450:d30e:ff96 with SMTP id 5b1f17b1804b1-4533d05d802mr127973615e9.0.1750163092415;
        Tue, 17 Jun 2025 05:24:52 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:52 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:32 +0200
Subject: [PATCH 10/12] gpio: rockchip: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-10-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1750;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=bJZscimERewZNLI5pGqQIjH00bD6YcA1Kc9nHnuKKr4=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6INooTRzzb2rM2QZl1UnM7MKBZDkGH2R1+l
 +3ZOEcYOpqJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFeiAAKCRARpy6gFHHX
 cgACD/428t0VhbSsaD/sOpTRxYgjJixIbcbX+Imu1fnRwC0NDyjVSd1Ppu/1T/QJA8H96+5Hl4i
 IiSOqn30R4elqtKMEjyYjIKQO9nThTDDU82g94DWFqMA75uqXCEuzb27TrWkdI3y3BSpZ7InJln
 /f6EqcbSFl3ygCsX4e2zM8faIISbMgNsDH2E+imOPZSwXID0nYlh3+4Anct1sls0LJuJDb5CP5n
 feeX1GlDZttcB8DOTG4fh03a3XDE9mNvmjThVWd0uRIBWatKbT0NuMb/0V16FsSXSuUKFG22+58
 0XIAhAJnT1oWWwblp9Hrz0nTqUc6LleqKCD7TW4cGeXFnKMO3xmdZliojYQLJpJG8pD4NhZhEdh
 g11wc9CTKxOapj+j93BDL4Z0JfN8YpTz7TBEM6MdCr5GncfqFWwc41/MhGpZT2z9WA+ILhc/mmP
 aumLjrTe0din4dpouMbsWDzxjCqoDPJFBass4ZvKADGq5vw45LXQdzGnzur1nWfuyuE1yDok5Sg
 bRZ/HgViajvE+2LHwm4Ch607XughI7JiAl9rVNlhUL2qQ5/cPjlfFa9MEI+/986p2yx/VljApYj
 LoFjiJ5p1flBGE5Bif0reNM2afmvMwg6xSA2kb7W9niSulMydT60OYDbBuSgXSkfBhs+IPI1lHR
 yUH3DYOL7hUuLPw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052453_784135_F36ED63B 
X-CRM114-Status: GOOD (  11.45  )
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
 drivers/gpio/gpio-rockchip.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 64700a003f9a17947dd38baea23a066e8c057caf..ecd60ff9e1dd1a090bfad204c8b86c4d7fb68ce7 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -177,8 +177,8 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 	return 0;
 }
 
-static void rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
-			      int value)
+static int rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
+			     int value)
 {
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 	unsigned long flags;
@@ -186,6 +186,8 @@ static void rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, value, bank->gpio_regs->port_dr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
+
+	return 0;
 }
 
 static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
@@ -325,7 +327,7 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
 static const struct gpio_chip rockchip_gpiolib_chip = {
 	.request = gpiochip_generic_request,
 	.free = gpiochip_generic_free,
-	.set = rockchip_gpio_set,
+	.set_rv = rockchip_gpio_set,
 	.get = rockchip_gpio_get,
 	.get_direction	= rockchip_gpio_get_direction,
 	.direction_input = rockchip_gpio_direction_input,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
