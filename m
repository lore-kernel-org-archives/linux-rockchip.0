Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81191C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFx1+2DjpHwHWWWs9LGCRdWuTfja8dAePgUaA60K+B0=; b=XKoOUnm/arNOVi
	LbjWnjkxbs1mCzHfLBjnfpx6FnZNhOJ6FnZyBKnMR1LBVGrL8v7mfWt6/FaEpj7Oi6/ctA9k6iLQM
	JdyVwru7zGF7vQeyUFF9fvDX9O3SzxTUJCgevUyQz3Ai3c8Hvo+k325Kpbq6mOgSNdQbWC1aAvIOs
	YZCSr64sR8HxQQ/pRPJsbpSAyjawWLZ6+LxaSzO3VkJnvXZXbCNuksR2dxwM8qXklFYRGLpYsJ884
	JGwtss/qhcb/Auxxl2qv6Uiw1wAuuLvOOJCt0b1ei2c8qbEI035Dvs6RyT+iWN0FRxJvcs3jyiqdK
	KhtrxYcK3mivBgKOypsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLIq-0000000F6Ab-3POx;
	Fri, 23 Aug 2024 03:49:32 +0000
Received: from mail-m3272.qiye.163.com ([220.197.32.72])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEp-0000000F51Q-2bhJ;
	Fri, 23 Aug 2024 03:45:26 +0000
DKIM-Signature: a=rsa-sha256;
	b=SNJdx/lLJ+XqSZa8nUFDAUj7xM4cIoDqgZ56tHsOYw3vnR64oAP7R2Hua6bLH+5PXyuoYEfIMKEO9gIkSbQtfRuqoM0AE/+jy8l912rcq0G/DuH7xuLaHLqN6MVD2jlRFKj6fkXUxf1e4za8awCsuql/xAcJQBhP7xlboMqaSDE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eJjVSniKx7WUT/3giA3ElUeCP+KKt/r8G5opCnpmFrk=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 2EC1C7E03F9;
	Fri, 23 Aug 2024 11:45:09 +0800 (CST)
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
Subject: [PATCH v2] gpio: rockchip: Set input direction when request irq
Date: Fri, 23 Aug 2024 11:43:12 +0800
Message-Id: <20240823034314.62305-10-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhIS1ZDGB1OS0MYGh8aTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d568d0b09cfkunm2ec1c7e03f9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OU06ERw4DTI3Diw5CTQBTkIi
	AQMaCwlVSlVKTElPSENPTEpLT0tNVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUhNSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204523_967958_098F4782 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
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

Since the GPIO can only generate interrupts when its direction is set to
input, it is set to input before requesting the interrupt resources.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 5289c94d5c60..4f8d50626fcc 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -469,6 +469,8 @@ static int rockchip_irq_reqres(struct irq_data *d)
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 	struct rockchip_pin_bank *bank = gc->private;
 
+	rockchip_gpio_direction_input(&bank->gpio_chip, d->hwirq);
+
 	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
