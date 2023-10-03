Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B391CE7AD58
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 14:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLzH2luOdRCl24VAiv6hCDboX4yZ2r4hKls17J86oYU=; b=sWO3HSlmh+uWen
	sooYtFCqzTNZXmoZncquyJgxRhyIC6FdEdujtnpQrOphtoTEbrzxsZfMLOgyb9gxAj8NRusEz8nwv
	hTCCqb9aE1b/1ksjcPGidV+vIBmAduvWkbBt67+PE9o8J1T2eaA05G/WBp9sjFM2aMc/Uy4tN9+Vi
	hgJ+WWBiSTpbw1QBWaS88J8W5trBUDFh2qw1HMb4hDiExOCxQN63JOzV1iNGyIXk5B/M0Ad8KxFf0
	LLhcVd/+8DdkuJlopv1IUxnifQoAt9mItkefDGkAAhR0giWfr7CGU+mr3v7macYC3akBfLxMIT9uo
	mzt33w38Rnta684/10Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngkL-00EpPf-0o;
	Tue, 03 Oct 2023 14:51:37 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngkJ-00EpOD-0E
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Oct 2023 14:51:36 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso10480995e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Oct 2023 07:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1696344691; x=1696949491; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0LC9FxBCiC3OrfTLsSY8qEZzHDKeEz4Ow69tozPBiOU=;
        b=PkQLLsSvoMNaux6qPnTgQuCu0fLwUR4ky9nEA1VgI+CNHQbB0/iBIn0uXNmE4P29XJ
         DXLlkTV8iAosqrzjvN51/OaUtdlFnptvJ2unRTM7R7Fa69xLsRWsz94687T9pILUwc1s
         vkWBTJuHu76ym+OUpWDQjUH7n4mEiRMrL/wBd8oqYVbSqRc8ckmtJiFgGYtkWRWrGn6t
         q8fZiKW+U1bfmMms/AAO2XoabyQrcpOaYix/0Dh+3akMdGpihdFE7Lw4gm9vGQG3QQ6x
         1rrlSzacL6NHAU3+aZAyxU9xgtdK7Zuyr1jQZIgwgP1Kvs8xqX2+yzfPDiponDLJsu0L
         Cifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696344691; x=1696949491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0LC9FxBCiC3OrfTLsSY8qEZzHDKeEz4Ow69tozPBiOU=;
        b=A5X+I/Ebn4FCwVyXukYuQBLl/FuJZKtu035N1IRcim4+btY9b5EolzZlxQ99OppCrT
         ncTBDrl64RjN5A9L+0aKHfIsyhCR2xJr+0Ipsutgb6pXM/aR6pRpK0JJKOV1o9GlqDad
         48R/VAP10V25kynT785+srP1URK/fKh+9fLSIux2Y/Hgk6WFJxWOGtyhIU1gy90oySIG
         b9CRJ+SgxSr3GCrDYA/bAyDnBTkAmfCd9M9nveKtQ3ZEW9xZlWW1pD/3jcq4b8GMSgRY
         MzxS7VsHvP/AZsJdx1y5UF1o/flvabPeuBYPfi6nTiBJJ+x4h6YM5r6hxcfzIphzVM8r
         Ljtg==
X-Gm-Message-State: AOJu0YzMXQvHvfYnxKrJIByP5JRmE+svzdaP6vfC5e5mHwMz1vqCo2v4
	oMv9hns9vhUY2gsFslsCK7XsFQ==
X-Google-Smtp-Source: AGHT+IFpQEVFjE6dVQ9qy2mvBwzXGuvI1FBsZGmD55brX7KL3Pm93Jl+8ULe8KF+Tl/kJ8OOzL4hMA==
X-Received: by 2002:a05:600c:2317:b0:402:f5c4:2e5a with SMTP id 23-20020a05600c231700b00402f5c42e5amr13357135wmo.37.1696344691351;
        Tue, 03 Oct 2023 07:51:31 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1f2d:3479:a5de:fa35])
        by smtp.gmail.com with ESMTPSA id c15-20020a05600c0acf00b003fe29f6b61bsm1462773wmr.46.2023.10.03.07.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 07:51:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Andy Shevchenko <andy@kernel.org>
Cc: linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 11/36] gpio: rockchip: use new pinctrl GPIO helpers
Date: Tue,  3 Oct 2023 16:50:49 +0200
Message-Id: <20231003145114.21637-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231003145114.21637-1-brgl@bgdev.pl>
References: <20231003145114.21637-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_075135_116213_C5E72117 
X-CRM114-Status: GOOD (  11.55  )
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

Replace the pinctrl helpers taking the global GPIO number as argument
with the improved variants that instead take a pointer to the GPIO chip
and the controller-relative offset.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/gpio/gpio-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 23040a8cea34..3576793f0bd9 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -159,9 +159,9 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 
 
 	if (input)
-		pinctrl_gpio_direction_input(bank->pin_base + offset);
+		pinctrl_gpio_direction_input_new(chip, offset);
 	else
-		pinctrl_gpio_direction_output(bank->pin_base + offset);
+		pinctrl_gpio_direction_output_new(chip, offset);
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, data, bank->gpio_regs->port_ddr);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
