Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B5DC7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LfoJ/gvgtCSQzNDq/aT94+i5O+8ZLpyhsppkrUUvJM=; b=JsW4I/vZj5ZHKX
	+jgrIL7FbDTBpffm9c2mYshK0e3RQosROfNlyxsT/g00nXXKssQ6Opydxns2PxJcbCWR1/sbkkP1i
	81qpusXblfmTpKvb5WJPqqjjnka+jlQf5Ybe+20R9uoTMXURMFmqHgKUQNTXjScI1IVZiC1+bJ0Zl
	aFuIcLwYHGL3ejJPBtFu9cZhGUgcYbOIhaKzNucYKQ+hrnaPP4iKeQ93xMc8Z98TN2m9s2QqUb9JX
	hDchqwLzy/2+XAnJUn+ZSPDud2iN9qCvlQ4RVtMozlxooTaRtcl21OgIO3fcb0cs2zLW0UPCcdOBt
	4iGjucyp5p9eQf3Ebz9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBIa-0000000CZWh-1XBt;
	Thu, 19 Jun 2025 09:11:08 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiI-0000000CRKL-0HNx
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:39 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3a548a73ff2so521808f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322016; x=1750926816; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fUxEFCxSV+En4LdALjtxQKt1K3KufAQa0J+EdQHN8Wk=;
        b=p2WIJVa6IBb2LZkmBBswuXCA6WSbQX6LzKg6qXBxwiNhxgtJcqAc/OPka3bSMLq8P/
         /GJsOrFPLX6Q0vTzszdkQBe1sfN3FSy97c+81ysYOyDOoAKsKD8u+psYDI7V7sPsu7zj
         w4AuFfTivpBF3xW+z2nEdL5nQvlIagr0bs4i9i8jr8+H0cwMk0GbvdWg1karDpHwTN91
         EMuTGprXkaXdQaLQc+3RfaJH7fWY5j3tJFUmXlTKHzfgRbmZhZ9jghyNYweyaKMhC8j2
         1T2giOTAbi6K+ixOL+cg7iXAv1cfrTnlxHKdISHQk8T5QFfIiPotJET56tUMREwcYgPj
         Ujjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322016; x=1750926816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUxEFCxSV+En4LdALjtxQKt1K3KufAQa0J+EdQHN8Wk=;
        b=BSnvkVozxyhHT6fduRXDsJRApH1wOti3dZMxiKlRU95V2iOYk1thJRyqoT/sEGWEA+
         mpzu4hFzKhI/yFc4JwXqhSECH4ZEmYyAMW+MaWbctrxUb4CmKbn90BOzggClCDbeoYT2
         GN2JsTxQY5DCnWqNBtNFdoQymOKIyUcw5gh9RTJq5t1SAmMUoICyio+5915Nr0CAjb2w
         SAcxOOp9pkTfaI9KtYgRCoXb/6HF8vh9SOSyk0Ysm5Slgm7q3kvp4ZuH4Uo0P7lrRJs5
         pcMBArLsSTNi0awOCEdQYwCD/N/DF9cVeWk3WKnnuckCs/Ct4+/MA3JIUo4K81k9niOw
         v/GQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0OzQ0AE6jmYydgWHyPJRcLxSPBc+Vlk7sNkbWji4uqsRtfSWKI2quxDXs5irMiol9Qr9xEjyGHmgoRwzleQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAUH65JDG0vIDTMD69/1PFEUFVgmMU/+DsW8yAA4raU18E8JL9
	9Ymd0knYUB8UWnn6xVE5hEQ6RO0OZgaRw0El7Vw0xfb1nL08wa53Z5JaHZAqgIiHwNg=
X-Gm-Gg: ASbGncsaz+IPalEIJGYpTFfBoneEicAccQakYQiH7yEUd7bjTLnNJ8pUNC4UkcuoqTW
	vx1W4Ovwn0Rc/ikbMeQVpJPeG9eXmJPugvlqaCiGoAk+7Wm/VSdDKrzNIXXPpQqZyw7zFMMvnQy
	dYPImBd7ymrwHZJ7qeX6eCeeLRErDnR9D31rQ/tRMjydcvw4o3oaiU0P7YaBDJWvB9pjMm0z8l0
	vet9+svtdqpkBYBr9ez+U7HsDWzBXJ0eFL7DDVY6anin96CroMSJva+6geySJTBtW90HH2LHYH0
	BgnoU2YIwRGTjEhmOZoTxN2s+Xc05in7w92ZXmUJpF+b6YikUy66y52LHpVht1ytPmI=
X-Google-Smtp-Source: AGHT+IFfsPhVrHgeuWzX3+6sQmR19Vl1yy5xDC5faeBVZQvTDHkV39fKCws88JWALuInD7mjUF9AVg==
X-Received: by 2002:a05:6000:4803:b0:3a5:3062:793a with SMTP id ffacd0b85a97d-3a572e79d41mr16470567f8f.33.1750322016552;
        Thu, 19 Jun 2025 01:33:36 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:23 +0200
Subject: [PATCH v2 10/12] gpio: rockchip: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-10-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1750;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=bJZscimERewZNLI5pGqQIjH00bD6YcA1Kc9nHnuKKr4=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tTDKdHYa2tugbl7ZgbX8M1+hP8adwm5KKEh
 MqhI//NcwuJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUwAKCRARpy6gFHHX
 cuAAEACjn7R+KR5/zt3QNdbTEUEkbL3xT1JlWMeyK1RMVSZHp3CYFxhOFf6/8w/Xq04lnJRQ2M/
 lvWSlbFLft/9IseHT/Ism4eMG7xKvNSHWLB3vEONd12JYS9fWNcn47eL61YBQUF1R3LknWWtW/x
 UHnsEEr1iYZB36AYooj0M4Z7raU6Xt8srnztoZ3xhNkaY+Pa+p9KHAhj/8kN/ipuyAphKXdk0r2
 knA1yAb59U2dR1V9Ru5eiUOenbf9shLNvwnW8Wkjl5uOpxFD2lt0mWpFGYVvfoyGaeMw4e/hERJ
 2dNPhzDGhylpw/va5zlOzxFjqzttvo9MzKX/Tvp5HrAsCreSibdjUR28e1VD+CqzNjDsmCpyqTT
 Czq3I7mLvtqc5cDZVsVoYve7pbUWNqsQSxKxo+cztDof+wRRCRb5IbAzrN2BBXg6S74kWSSImTZ
 DOjr+HHnDnLcca18BTWMAYdEXtFdeuvOqMTujZd3kUXVq1qZEOAClLVXpmVgxxDTNkaJ/cFC5jl
 IE3Nhh/5s2pbySabu6Q76yGyMgclCRvVhOsgKIPaeieT2bt/NtlP/vHLqXkK+ouSR/aeYlsX8jq
 5ohEONkE86sx7b0n6GxTh0XkaRULQDsItKSIkMa0QjnJLrB0EGYdtLnfz+ozQ/yxhndBWKEYMww
 QpzQm1rT3j0ULzw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013338_098083_0BF6160C 
X-CRM114-Status: GOOD (  11.84  )
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
