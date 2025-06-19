Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9799DC761AE
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h2XF01acIt4QXuVYFt1OecSf3XRfFc/lapC5rx+Nvw=; b=2rvaHthqLMdnpG
	L/V+IEpNPtOMHvCGsIEkCu5zP52P9s6yfbvVnSTFvmKNlrjdM1V3cgER5nqEoE6XRj2vYd3C/oVTI
	tLkWpkkeOWkao+fC3wRSgkjewYxrRaVd1Diq7VfiNGkr6Kqef/tU2bacA0l9PB7MjLFFvBdYFOn1e
	bEzoxk9KYt6xVr38KHZglVFTXe5o5oO/bC21+UGbu1mbdTwaFGna8gzMuqKma97/T9uGqmIrlmQne
	522IvKpTiwECSEL49TUZyPY5BHru3XUx1Hr4h8QUW2HUL9JMVHZtY9bMx5e29uwbT0QGiEXYfHR88
	+TPV4+OTu6kNgg1qF/lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB9q-0000000CXdE-2vIO;
	Thu, 19 Jun 2025 09:02:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiF-0000000CRJ1-1Stl
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=j3425DJ9smVNqtgfiewFDDuDZUIYNH7UVu89t2el+0A=; b=CJSa8eZyR4AEeBxIxKgnG8SxYT
	vyPBF/PRGIDYYwfHc9PtCtbaFYZ1E43OBzS9TCjaY68mga/OOwg67mpCoJwLQAgSVCoeSHVuDehva
	6g5d2TfCJCeNXkA8ahYVCghD9veHw1Hf+lYn+Wp1/ClX8jlvfP+023aSUtaknuNJyZddNwO52U6H9
	cJtkxxx1xMnZGvK5TJBzaV2Sxt07QlBxMJXenptsMLeGRWhrv2s401vsyu1Ew3Q3AbTnuG7BMz2a6
	TsLhuX1ebw9wCwJsW4ft88ulNoQgfr1MWghv3Lesty0N0Oo+2Gcb26LDdFhyu//1iA2DsbfxPEcQ7
	+PxCgF7A==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAiC-00000004Noy-3Lvu
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:33:34 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a52874d593so525651f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322011; x=1750926811; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j3425DJ9smVNqtgfiewFDDuDZUIYNH7UVu89t2el+0A=;
        b=Evz+mKmeH4TFvW2LovsFVE6S6GfNBj2l4OLQQi6zOTrDFT8Ol5oNbg1BrKx8AqNkcS
         NeTRBJy78/F974lImNF0Dl9X+z5zitrmliS8yYWOO4EYZJuoDENxg4JdNp8TzSmakzok
         hu+BSsA7iTK9am/I9aroQqFOgxLLW4uX81piGvdpXzq4M2+bYUH2LoVfjthHl/EcWudh
         iCP+6JmGjdPVZ6ubZ/rkew8pX/hfR6kiRZWtHlTQ/f5Gxh5wXg7GWquxHsL/fmt1Kfin
         3nZoz/5AqnZ9fKg3lVYAlwQVA5194FR6+8Z/V7iTxDg8/peSCb03ftbnS2ZgchmPCp+L
         4z1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322011; x=1750926811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3425DJ9smVNqtgfiewFDDuDZUIYNH7UVu89t2el+0A=;
        b=OQKtv8m0q/tvW9wAk2WsvvMwwuXWTpwASCq5+TXCuCy9vyKQUQW+BKiBstNyAHR1x5
         lHZiWn/kLv1mr9TtYmTi/gOZ9OYURtQfni4iq3Pm5LVUcz8fCDfqEKTLN/vXnsu08h/v
         Bg5Zy1jeK0VcI2n/rDtZFX/NJ9pyyR4+kzwMNBzROSAlbse7VGQo77e7IhVXEtxBbZu5
         xPfmMLRzV5zP92lnOzuXhAo/0kajWeITYWPnB7PPgBmInvTzJCLjr8NyqVrPSjwPkyQ5
         9XUwxeea+Pcol+3i3hRcSEMOYAL5XxuFJiyNUpXe1Sc3b0U2Bq890HcZQoZwhFGnv2lT
         CMMw==
X-Forwarded-Encrypted: i=1; AJvYcCU7Wr8PZG5M7qHP4JfIdO6a/grBogvUHmBzwMFoZygnUvLqSbhoS7CIQz7764OAhL05kT8Q0OPmU9uTIDLwAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2X89LgjrU8KjuWh0y8FZkJ42TYM0+uxGGet5cJgPm1aleW6xV
	OIJCuAzcPUSafhDl1dH505R/q4MovnxOnDbvkqMqHqf1r+dPgEx8JAloE8z3/fHGJz4=
X-Gm-Gg: ASbGnctw/W4yZdveRQNpEpkggJwCUbl2oykatx0603e4CGdw/h1ajP6WpyUs8Tg4EKt
	84DqH4CrLLTP4t7206MTCrUXSp+l3oII7+GbU295uog2oFM4Q8IKlX8oMf2BeFUGWZcqB6Ihm3Q
	5HO0/LKRoNSE7Eg+xFNmwpNOOFJ9HBSoQA1nrsfk+ic/JKEUmY+M51+DjaCJN9AHFg1/6ZOi/W5
	No9iOwHJPz0zZCeHJuVvGq/Z/xv8sTuvXQwCYel57l1L9YS4Ia/QCXtvAMl5WdLKRVrXZ69v1Wa
	tJJMBv1blxvSYfR6gvhpOZrcNLqmiO7SK7iY8gLVOrEzF7GDI0YSVPfGV0IAiy8VnQc=
X-Google-Smtp-Source: AGHT+IFrsPvQBcfdGkjODy+e3yqc3AHlIahKNReGa+rvtx4ektz8kpZyRE1e3BB7ON0JDvQ8oJpUfA==
X-Received: by 2002:a5d:64ee:0:b0:3a4:e75f:53f5 with SMTP id ffacd0b85a97d-3a5723a26f8mr17708250f8f.35.1750322011048;
        Thu, 19 Jun 2025 01:33:31 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a63a42sm18828151f8f.28.2025.06.19.01.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 01:33:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:33:18 +0200
Subject: [PATCH v2 05/12] gpio: pmic-eic-sprd: drop unneeded .set()
 callback
MIME-Version: 1.0
Message-Id: <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1348;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=U5ElyLmZBGysFJL9KcblCpbMCuSewiTUa3oGkohc5iA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoU8tSNZDHMC4DZ4e94TG9I0QxUTJPp/knIHoLZ
 ngpzNeMrj+JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFPLUgAKCRARpy6gFHHX
 cs7tEADbq0rtKcu0CtpTMbhplPaVXYghftiJVLjNx9ls/h6bpBkGrExc9GChQzG+Q7zhbcHnD9u
 C2jZn5ptHvOH7heEQ2vVjh6YD9YrwGECInonaAld8CaKlF9li75bIAu2EIPmnGHnkoeb9y9ejQq
 NUgqfirWA+Vn89x8JYkZ2yYQGn/kYHWSYvjad4y1//nWPlTQsQTXozhafHv/sEoqUlHxI1677x3
 jIxA8nZMpg+TK+DfjalolY+tMbGti6RYt/AYwK7k+OCERsizg+3znNQDgpF16dG4P+duDRsFTPN
 MTuBU+/nvuDmAsfzReY7qlQEGTMvKOap5VGUx2LAXRomlj28hOomYjrSVdQjjJIBgWiArZj57lT
 pIQVrc7vIj2UEAEmDBU6x/vJ+Ap7UpYTduZukAh+BNo+3g8RxfeW9DOcKE7HWjHODvU0Q8SDkVc
 vRkO4k+tvkcc/5lMLF0IalPGBX6AQCDCHOo0b9GoXWVdtsix33EFG9yqiQgu4C9PDP7IcCZfH7A
 K6MSIE73cXim8CvXAXfIpI2/PwV3RCv8jF1+NfxrIApruyfrgJb5uM7HA3n8LgjwoS+ZkywcvDW
 qnUfQrtyAii6SWW9aBhPa+wAwsHcGbgR/x4Mt7aS9QPZh3OKG4KVP3pWFxTBV80w1DGiFHsor0s
 +I4VtQeCui/0NNA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_093333_151187_8234BDE9 
X-CRM114-Status: GOOD (  10.30  )
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
