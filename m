Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD2C6C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIhPHO92v4gyrUX9M2CDGmXZMUX3mkx+uxleR61drDE=; b=fa4mIUUUwTwm9a
	J2rx+yuUKlpyNOrIS5whiPcCtM6YnDBS/cJbnMAU4Le9lYkrE+xC+YYqbdpcZesrd+gCChCxXRqVn
	yWe8qcuO7aFyVXPHgq4i8rPfl6m28o1wJ0Yx6GNNRyEvVKUQCrsWt1hmZxYi3+evgz2FX9vMjNoRQ
	2s0Tkes+RCFcLwZcwVnsUI9NRPkwXH36Dth83L90sHcfVnTkj3ioLtw0TQTbYdxcREppzLml2VkY8
	hKy9jErxUzsEahS8X4+N9EQDQyaOVuvXS9UsjBZBkRcPgTldg9oNeuCAJ4gOsXC0VmnhPsMfypKTS
	m3aI4bYpvQkttFVZClPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBKl-0000000CZzF-238R;
	Thu, 19 Jun 2025 09:13:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiK-0000000CRLg-111n
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2SDdps11Q2eLdePG5stsUwakF44A60m55NMmpcUnFIc=; b=Q9gnKbu750UgPjirmP8JZcuF+g
	43ypu7FBwL5qa04eE3qSmsqZqwz8CbmfX1F1J1x8Fwp3pa4+phfTfD3tmahw+s0rwpyPyKIWf8deN
	JUvcqLamw59+zpHnQBPA2zfZh2ONC9OduPkI7/wTYEFiquJgBxxgvzTnXW4+rECyQzXt0d53B7WOY
	IDWNHAL6JXf/jU7VXAKZCM621f4yuF4mZMVIIulbeQhQnEWctET5H8loLJfBpojMi2wwjBXGboj/5
	0hBQ5g1H1itOsnW4VTm/Dq4t0Phq/dS2DcOnT0LuS0D7hdaCPLJRNKFHSFmKRRKaK8ggWKompULiS
	8/i2X14A==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiH-00000004Nqa-2maH
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so5495395e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322015; x=1750926815; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SDdps11Q2eLdePG5stsUwakF44A60m55NMmpcUnFIc=;
        b=mcbsB0b/yEBDu9r/8tJ5raIaw2hnDJpdiwX70uGidlWuqHjW0LneEKMEZBc6SXln0K
         t7b2NYlzi+K2dUZS45pLeviwItS8tjfn0pxeoyxH6L05j3Op3jlAncal473DceTJp4oL
         d/oZrqq3DWLIgnE9o6F1VrwRzdrFdcgiwNdQfJGauUzUkyXEgQO4SvqpoaMQhvcbK0LX
         M3tPDkJ0sZ24GbW67FfDrh5sGs+iKaLH75XQjpvwkQk4LOC0Qemu45Dwof9P4IbchCDB
         qiblxp4tY0nN+vejg1lTi+pAfcPw1ndvY81wHouqb92nfO+m9qqnaGRLgYtKSTIANPFl
         iOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322015; x=1750926815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2SDdps11Q2eLdePG5stsUwakF44A60m55NMmpcUnFIc=;
        b=rINdtkUXE0jnDsimGCNRFkKhhhIPFIFr+4inG3spf2X9Pfyr2lydISZQ5Cd4tPwJo1
         Q/XNCElGgO2XCjv8DEzNrHWPBHrZtP236ODcCtBte6e63wi7fCvjfwIRWgoYSrU+icRC
         0/KP465fTgefb5MNaD2QSII3RzltFZcHxFDYQSKwGXEoOQiI6NX44aiynp4W3DvPzv3I
         LxxR9xLCJF4q+uev5vpNzm0pNGZOld/ksIsBO7VCm5Qt4ZZrxIDGFnCwHD/mHkLLKc+I
         imoa3ORKRRSwyF4IS7LNT29QWq4j5QmDlYq7P7dCky3TLqt8HaAFKDuXRB2WxbdnWXhe
         ONpw==
X-Forwarded-Encrypted: i=1; AJvYcCUOgOO5r6wGwpWELOXPWP/gfsTn7vJ57kBfqquYirlx9eWFhrf7zWK2UBcrVTjFtu8omEdSabNJ613XyxkckA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwP+6hLB9dbeA0FBKdWGbn4zObV8xM5isb8rioNbOesvnQhWUBj
	Sh5T8049nZ6gv4Y7b/O12rbcJvvJ44mHaShW/hYwSdRRKJxt0hxDzo8W1ESZ2e8LYsc=
X-Gm-Gg: ASbGncs/XVKg0wONp7PH7GYTlNSM0gxkPtVtEeBIVpg++YImqsyEAUk69SVysUyl0XR
	Hm2ClSbh6hPUKcjZ0DWvDtDeO75sPwcIHUTrLY6UvKgfrbcDhfXbCN+DKCzQ5Di12eAgkVdLrfe
	g1W7SkwSYeRRIHVjCTJEFYnovL2zctqvFoFZgy25/bKUFvRf6HZl686cFmvFr9Q16iUIVMLy4Lf
	S4BzyVAZSWAI/KEc0kK3rZJp8dDcthqDE+uPvLK3J/PyE/z9IGNnnZUwGSvsOQO2dfZpOnZ/Zhb
	zKcgww42qDFAVtgEixtt/xUw3CIBTmPZRf3ijQuMY5cQPil0hBG6D7Ou6y7+5E0eJ/c=
X-Google-Smtp-Source: AGHT+IEYlToyOJr+R8YXFkFhSULjEkR2OowLuJCLc5w/3XKdZxLCXJx6NMKNblG+ZhhHv+GOy+JYng==
X-Received: by 2002:a05:600c:6207:b0:43c:fe15:41cb with SMTP id 5b1f17b1804b1-4533ca76ff8mr219841245e9.15.1750322015343;
        Thu, 19 Jun 2025 01:33:35 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:34 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:22 +0200
Subject: [PATCH v2 09/12] gpio: reg: use new GPIO line value setter
 callbacks
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-9-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1851;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=mTukrDx/R865Eocr4BQInw+yzkmSNTUOuezPg7apBCo=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tT9TjfCO988cJoPpaw0anioCZr5/SZzCR4/
 DPRgt1RWO6JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUwAKCRARpy6gFHHX
 cqwAEACHem9z95tLu2mdatXQMsbEwEicFLRuj0CKjbLo6ddh0GNFaOmHiWL6TYjpWH5luCWeMji
 qr1REYJYG2+rMFPuZQPUyuhA1rjAiCsrWtl/bG1cZELYCCUs4vTIYgeEp2/NsoHpfOHN+1aAb+Z
 cxfAS9JLi0BgNAH5ji3H1LEoyTV5WC2TEAZjv90mZhXYbKXVgC47+jmunaleDfmjku8MT8/8Orx
 uU5pL9dxB99qCZeNNZsNm6K68r2sEJoEjTAVe7aRTyI/GTM680rIGfT1+rWSHaV762HhWV9xM/h
 XY943W99sLzAtIu/+fEObsJOpIgMARGHIv/73HK2929fx+Gni/Kuy8WaRWYnDUONLxu9Tr0bLQB
 KbfvyCCWvxqlNvkm/dWG7MOV73RahG9L9ihNjZPRYXra5NRXstQ/xRttFCsYv7zkLnb6tJOa0e5
 z+1mU60ZwoOB+XoH6XvWBCGVaBfR8gh+GA1IfVSnndtvh7Q2H4ZYUniBVwnaRsS2pxLb32R+4iq
 zX5AV+tgLtdpL3yOnU2jfRaUkXt5MpQ+3r78F5PqiamJZzDRD5PbZP1uj3HOHYIHZLa4gtP6gWd
 yEYw21OVubU+lwFvfM3IHdUhbQFiuc+J41nWd0vt6pmrx3LdNUX70dveJQRLfE8MtZESyFB9BB6
 4sqwsUIoOUevrKw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_093337_917913_7D704F33 
X-CRM114-Status: GOOD (  12.77  )
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
 drivers/gpio/gpio-reg.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-reg.c b/drivers/gpio/gpio-reg.c
index 73c7260d89c083a702b1d914ddca7a573a37de4a..557dd77ce30bbca6174babbcabc965cdcec57896 100644
--- a/drivers/gpio/gpio-reg.c
+++ b/drivers/gpio/gpio-reg.c
@@ -46,7 +46,7 @@ static int gpio_reg_direction_output(struct gpio_chip *gc, unsigned offset,
 	if (r->direction & BIT(offset))
 		return -ENOTSUPP;
 
-	gc->set(gc, offset, value);
+	gc->set_rv(gc, offset, value);
 	return 0;
 }
 
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
