Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D37C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/9q8apt1OdrPINtdfeYFYGXgmDusCXIYWuPOv7sGWk=; b=FROEyOSGXn20cn
	09/uZr36Lj/lbi5suEA2t4iPfNfoy0MghclRdn15GJXqtaQXIwYdhNHfm7fkBgYKxr5CZPHPaYFIT
	jBTPvYzsmE6lq6oy3rlX9tRoz6ZrdEKcQCHmsxhK/ELlvkADLzBNWCh5l2JTCcvzvC2ldz+0A80Kq
	dANs+QAVX3l+M6LyxD3pe3U6xcUXxl3TXrx4xVxfPyM4uegX17w+zo3sVg2o2hCMt9xX8ePPmwP2Y
	oFwNzABKjLbbgjXefRkCNX1FkROzcy+B2ropKXJuTJKkftqFwDX+andl8xR2BWpSkVNCOyKisO0Uq
	/csHR0A+PeKLDAqL5FHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLIq-0000000F6AG-1oOC;
	Fri, 23 Aug 2024 03:49:32 +0000
Received: from mail-m32110.qiye.163.com ([220.197.32.110])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEo-0000000F4za-0B6H;
	Fri, 23 Aug 2024 03:45:26 +0000
DKIM-Signature: a=rsa-sha256;
	b=Y846mzsGjepE5I9zVGhtEOkuo/VziAacg1VazjQ73SxbNO8es21Y8Wk7eQ+FsBKIpOVQV6e2JMBk1Z7e/U0kfnZYFx2pwbO2Z831PHwqbhl63jt43mvlIwZziWq0FHlIq0oZY0LYMQajFgOuWcGClgoFtZkGhkBDYGxRWSUpb+U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=L9GlpNjSE4nJJrkD+TrY66Rr2oSAqGgJJBgFwS4eF04=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 1C02E7E03CC;
	Fri, 23 Aug 2024 11:45:05 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: Update debounce config function
Date: Fri, 23 Aug 2024 11:43:09 +0800
Message-Id: <20240823034314.62305-7-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhpIGlYaGkNISx5DHkweHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d567d1e09cfkunm1c02e7e03cc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6FRw6SDI8EixIGTYzTgge
	VksaCitVSlVKTElPSENPTEtNSUxNVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElCTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204522_683170_B10CA691 
X-CRM114-Status: GOOD (  11.20  )
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

In the GPIO with version number 0x01000C2B, debounce configuration is
already supported.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index c246f116a3b5..aff8bec79062 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -250,6 +250,8 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 			clk_prepare_enable(bank->db_clk);
 		else
 			clk_disable_unprepare(bank->db_clk);
+	} else {
+		return -ENOTSUPP;
 	}
 
 	return 0;
@@ -278,22 +280,11 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 				  unsigned long config)
 {
 	enum pin_config_param param = pinconf_to_config_param(config);
+	unsigned int debounce = pinconf_to_config_argument(config);
 
 	switch (param) {
 	case PIN_CONFIG_INPUT_DEBOUNCE:
-		rockchip_gpio_set_debounce(gc, offset, true);
-		/*
-		 * Rockchip's gpio could only support up to one period
-		 * of the debounce clock(pclk), which is far away from
-		 * satisftying the requirement, as pclk is usually near
-		 * 100MHz shared by all peripherals. So the fact is it
-		 * has crippled debounce capability could only be useful
-		 * to prevent any spurious glitches from waking up the system
-		 * if the gpio is conguired as wakeup interrupt source. Let's
-		 * still return -ENOTSUPP as before, to make sure the caller
-		 * of gpiod_set_debounce won't change its behaviour.
-		 */
-		return -ENOTSUPP;
+		return rockchip_gpio_set_debounce(gc, offset, debounce);
 	default:
 		return -ENOTSUPP;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
