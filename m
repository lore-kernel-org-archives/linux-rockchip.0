Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0266EC71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 12:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mae9UrEyRFy/f/IE4YoASA/DX4ChUQj/BfmmslC1wwY=; b=EAyU1UVbVH02MJ
	T+Dn6/uKkByrN0P2sD3pOJ+I1cPyUl0hsxh+RlfiKyEqJYxbqfe+XmMRM7LvPTbEeaXfHiYbT59eU
	bb0xoiPFnnNwQpHBqfUq8GbQuoLAXoor/4xlDWoM+Kcd13/b54GlkkukBRS6b/3gfrTfypRv2BMi/
	vgGWEjXXc1vqOzyL4z6n22OLTZ73mwNemkx6tw88Fvjs4oqpdDYcQEc9jsDmPF8grhkQT5kPJRzr/
	Dc99jxWMMXv1F8Ub2aEu8VqCZUQ6x5iuJPj+OCJX33gz3jG/jSAvZ5G1irMbyGXg21Fp3R9WgbySi
	XrsWMaDFYS2rbHQeiPsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVuE-00000007G5f-21Kc;
	Tue, 17 Jun 2025 12:59:14 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVMv-00000007Azn-2zcw
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 12:24:50 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so70207555e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 05:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750163088; x=1750767888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rBA3kzrSkCDXqL/qmFtpqMrbH8iiG3hu1F80uNaFdYQ=;
        b=n2GV1WJPjKFqpG6PZTbbReiPF3jnG6f0XoysjN7ZhF44/Fkm1GhuPODEb7xFhmq177
         ETi8Ot9/EeBR2do9W+TVWJCBdqq11a422OH11XpzhiGDT7kb2UDUsExQfZb/ahROOsYE
         ensHfGS4ybfHwC7rl+RYYiO22EYDgq8PyhMqUkZ8GYWNKVgBXdmSDPxw9dHxM+tJFo7O
         eNXrlxOtiksznug+SpvscvWXKLqTVzSKUZHFD7QxNq6HUz1nUaqfVBfVyOOc6gq+mYP7
         CyCgXExadCy2a3XxSP7KcioscahuX13WW8Y95Ul27Ih4BiQu3EuClw3hzdzhvB1VRzTr
         3PSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750163088; x=1750767888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBA3kzrSkCDXqL/qmFtpqMrbH8iiG3hu1F80uNaFdYQ=;
        b=lHfGD6HndRemJfMIlMT8/p1Omj7XwIhtuY5uz1qOJOHwrUdkptTUJdvgBti5vBgEzh
         AEW+fzaVnD+r8nNj6uo+/9fK7Ic9CWOa+kWsUpPHFSbJZe3JK0VYJPlgidVHYecybPUR
         21HfjvFCwS+Fgj/oxdW0/FAG5KClZGc0qCZPCd/+jXnRS9nFlCbmp/srpupOEK3I+56G
         hirhmHZl+u5FmN5/PgM4aQB3h/lSGXXhys8PyStNAVjM/8OIP6kb+wGgsRMFp+IwC/9U
         2hplYkbKryRBInJWeYC/uJ579kPPE25LCM2v7hO+uYsTKM9e7V0DgsBQ/A/UQYgwpwTR
         Mucg==
X-Forwarded-Encrypted: i=1; AJvYcCU00EclEdOeeKLAoDcwl/QYXgqcK3M8WF+HW2F7meiP8HrjVovBB7/4aXARGYoHnoprFd+mzvo65kXuHuLIeA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVj76ttpU8xCb5Eb5VKclBTaGXNnJHKX/bOwvgG77Z8iDU1FUv
	M5gnrerKUXaQHds6C3WqwUq+JteqSUlfIuXCB8Fi9NR6Qao+VRHvPPpR09X+N2MG05Y=
X-Gm-Gg: ASbGncuw55lvgtm/XXPs7kFaIzEnfTtw2EyXp5gjh1TJggCXyNHwSiwNTO92GmE+80l
	AvLIZwOXGLarPYli6IbJCj77qOtK0+4OtzSiQa4xZrQkYthQfQiOhxcuakEfEJZg8/BlmAi3HQz
	FaVrgvcxK4V4QVG4UTuZAJ7duN1ix3NMg9cKDjmxTdTZ0KkXtqt7pMNSHp7w0GlXg76jZ6BpDss
	/7l473e8QNmHZ9kF4EeYfctyjCNRniBM/1PfBikQ8EsfekGouUSLoYFDOzU6CfC+7b8Mtjynxrx
	qpNhM3dBud81XN+D2sfKamMNElrrucgtPSTumsJmQnQuGdCc/Gsj8emG
X-Google-Smtp-Source: AGHT+IFM4CB6egWygK88t1cCzbwx8tBuCLfY0nKXhXb0rSxlnrlGoYbjnFIM6NMIfDKL54dPCw7nOA==
X-Received: by 2002:a05:600c:6989:b0:442:e147:bea6 with SMTP id 5b1f17b1804b1-4533ca54d9bmr129406995e9.11.1750163088388;
        Tue, 17 Jun 2025 05:24:48 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45320562afbsm173816135e9.1.2025.06.17.05.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:24:47 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 14:24:28 +0200
Subject: [PATCH 06/12] gpio: pxa: use new GPIO line value setter callbacks
MIME-Version: 1.0
Message-Id: <20250617-gpiochip-set-rv-gpio-v1-6-903703881fa2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1502;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=B+Qz2OspKJ91xFNTEdAqgmxdOA/mnHzp8sm3HNk30eo=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoUV6H5nCXll2tmzt32qwVJ5b3oXA1BlRJjKdG9
 qyMmbsQkzKJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaFFehwAKCRARpy6gFHHX
 crYrEACAJfGgkYJZ/u6TIzjXF0YEJwOtUfXB3u9+xQg83jnj0Sz1G2H/QIRldbaqCd8kUmXDI65
 U0eFZ619I553u6CBkPVrChl3ZZpXtUKtGWeB6ManlL30/0d31D70RtVTKbKWHN4SkTFXOUwr61V
 us0hdDZcVXONIlywiB7f9yUPaJb+SEygs3L2h2URtZ9XF7mwRvxRQVJ9HKe1sSnkEGczZDCQ+82
 Zi+gBEJnqqEK6cyMQmdBTYAPcSLi+GT5y6AHFGh50EKfqzjR9wEvwZ5E5GrfQM+SNxZVEXYL64v
 SbJH6gq+aHB9TwUiVoFRA6GI5ex4dq0Dx+R6b/k+ObpgcBKB0fCm5OCACmniQ4J0nHwpFNe69/Q
 0/MXLF/xPeNfTqpMFjRSoYsHf5OJTFyidc9WUKOkPWLakCilxZVYLXovCTdgyaGpr2u5H01mNFO
 gaTuYuqpVkMmeGw2KEwr4qaQaQeb+yBpGBcKNt6ntqnpsRfMz1sIgF4/s9yJZddJ9NOA8xWR/VN
 OXZ2p/rlEhoTCRH1kmNm6TqTFs72FvtA7UXobCt3Ya+NAIr6F7X9iLX0CEaY0w78ZnJWqkUxlBJ
 EQQaPvVZWslahNf+l5I7HxiDZ3oB5l6gkBTIG66RkME6zNBACqjO0X8zT1wS4UiXp+ChfLA8HBF
 /Ooc4sXgrvhot6g==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_052449_760970_3B953CC7 
X-CRM114-Status: GOOD (  10.99  )
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
