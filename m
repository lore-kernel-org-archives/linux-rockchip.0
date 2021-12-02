Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D98EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 15:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vLFZGAP1ii5TruG8nNZanltYn1QqNbw94+FIVvvwJmQ=; b=OEEzpqbiGbmAUN
	goVyXGdrFgmLobnjecydpdSKjUyeKTVhKyxaP7SJaaICmZ6NAIR72DxJI60RAQNFvHGZdjRkkU31t
	YWRqySxFmVPI3+Uz1Pzgt3V1cjv9t5q+1puiIAZuuBmOYUAt1BOm2AtAEdrRMv9I1BnQY3lLfgecA
	78BRDl2NabkDUSPpS3t0CygTiOntgqrm6+Nag0o92eNfvjhfgUbKSPhufjFvAIyQyfaFkG1Gm8753
	xx1wjsW0GLsUO6EatLS5+o85ObCeDAxPyz7ESrDdqxdEyrTKx6VsOsSLK69tYgE5Iw0HTtWkBpdSd
	kt9qZimvpNElLmZxno4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msoR0-00CsZd-Ja; Thu, 02 Dec 2021 15:55:46 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msoMO-00CqqE-7U; Thu, 02 Dec 2021 15:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=OY2zTbK1ie6cFTyrDOMcePVtS2yQyfQeUBoaSJjVJcY=; b=o+
 7M2AA4ymceZJiSU6SXW4kEaI2rwGKYlRf6gYKbZ5BpOOdVsMx53fkyJZZi5VhgllO7tfXLD1BHgpc
 6hMDEGwMK9/ch9qS/6M2sNd1r8N5axFUlfuUuD1vz2DuSObNiU53Fi8qtDmtMHTvGrTGIxPbv4rdP
 kw/CnRQ/KxJUBFJWRbY52ERZzIZlJ9OM2tWDKTWzOt5n/Jn0vheYWU6sdZtrmH8tq3ecJQffsqPec
 G6ZIritKwllHEnTGmRF2WgM1yjRz4E4gAJ9qMCxZN627PHzQnIWsbaM94rm8coS3aRNqcNnwnhdu2
 SmW6rdq6LJ7HW4YmgQ9+S+hrc1paCF4Q==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1msoMH-0001G2-Fy; Thu, 02 Dec 2021 15:50:53 +0000
From: John Keeping <john@metanate.com>
To: linux-gpio@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] gpio/rockchip: lock GPIOs used as interrupts
Date: Thu,  2 Dec 2021 15:50:21 +0000
Message-Id: <20211202155022.2972779-1-john@metanate.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_075100_448401_793171AD 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Use the standard gpiochip request/release resource functions so that any
GPIOs used as interrupts are properly locked.  This allows libgpiod to
correctly show these GPIOs as in-use.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpio/gpio-rockchip.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index ce63cbd14d69a..c1b8e5dbbcc47 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -465,6 +465,22 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	return ret;
 }
 
+static int rockchip_irq_reqres(struct irq_data *d)
+{
+	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
+	struct rockchip_pin_bank *bank = gc->private;
+
+	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
+}
+
+static void rockchip_irq_relres(struct irq_data *d)
+{
+	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
+	struct rockchip_pin_bank *bank = gc->private;
+
+	gpiochip_relres_irq(&bank->gpio_chip, d->hwirq);
+}
+
 static void rockchip_irq_suspend(struct irq_data *d)
 {
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
@@ -536,6 +552,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	gc->chip_types[0].chip.irq_suspend = rockchip_irq_suspend;
 	gc->chip_types[0].chip.irq_resume = rockchip_irq_resume;
 	gc->chip_types[0].chip.irq_set_type = rockchip_irq_set_type;
+	gc->chip_types[0].chip.irq_request_resources = rockchip_irq_reqres;
+	gc->chip_types[0].chip.irq_release_resources = rockchip_irq_relres;
 	gc->wake_enabled = IRQ_MSK(bank->nr_pins);
 
 	/*
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
