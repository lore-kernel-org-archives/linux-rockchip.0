Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB75C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fyn8j4ya799vbPgsrxaq/RzULwMzoNGUxsVemZSten4=; b=iSRE8skys2qPEM
	H2ZoQ7LxMdUS/m7+yR2NQLJmYUQVzI4SrIn56MmrVjzZeUtdleo3vEdakbOy6AQXR+aYX/JKeQ14p
	+mo75jAWv/xYiH4jMgRg8k8pnh/NWrUrFy14J2i8iwf1z8P1oa9D3kw7Rs+yzcM1PUArn8eX+bEjf
	pa15kSXDBlSrTjpzlP8HI1Up6KEkOpd1PAnu5iKJDZRJx3Vg/ENAlhoEexylwEdxl8ZrqhEJzE8j5
	q2E36TllfR+ZqgDcLm0rN3FSVja+hbIDPvUU3PQWWmCIrQV9Cmrro/JabnBrQzJcJkLhA8LIZASqM
	jPsAi1CKfw2F6GTyjr5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFxP-009MFI-9I; Fri, 30 Sep 2022 13:21:35 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFwm-009LvB-Cm; Fri, 30 Sep 2022 13:20:58 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2CB0020005;
	Fri, 30 Sep 2022 13:20:51 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	jay.xu@rock-chips.com,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	foss+kernel@0leil.net,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/2] gpio: rockchip: request GPIO mux to pinctrl when setting direction
Date: Fri, 30 Sep 2022 15:20:33 +0200
Message-Id: <20220930132033.4003377-3-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930132033.4003377-1-foss+kernel@0leil.net>
References: <20220930132033.4003377-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_062056_620254_E0C2A8CD 
X-CRM114-Status: GOOD (  11.66  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Before the split of gpio and pinctrl sections in their own driver,
rockchip_set_mux was called in pinmux_ops.gpio_set_direction for
configuring a pin in its GPIO function.

This is essential for cases where pinctrl is "bypassed" by gpio
consumers otherwise the GPIO function is not configured for the pin and
it does not work. Such was the case for the sysfs/libgpiod userspace
GPIO handling.

Let's call pinctrl_gpio_direction_input/output when setting the
direction of a GPIO so that the pinctrl core requests from the rockchip
pinctrl driver to put the pin in its GPIO function.

Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Cc: stable@vger.kernel.org
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---

v2:
 - added Reviewed-by,
 - added missing linux/pinctrl/consumer.h header,

 drivers/gpio/gpio-rockchip.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index bb50335239ac8..9c976ad7208ef 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -19,6 +19,7 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/pinctrl/pinconf-generic.h>
 #include <linux/regmap.h>
 
@@ -156,6 +157,12 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 	unsigned long flags;
 	u32 data = input ? 0 : 1;
 
+
+	if (input)
+		pinctrl_gpio_direction_input(bank->pin_base + offset);
+	else
+		pinctrl_gpio_direction_output(bank->pin_base + offset);
+
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, data, bank->gpio_regs->port_ddr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
