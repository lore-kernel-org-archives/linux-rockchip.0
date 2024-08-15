Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C66CC52D7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 07:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGfvw0MOTEEYKr7U36xMzIM1Xa38GT2wTYX8JJB9YvA=; b=GyQwwfRe/G+cmb
	1ui+qwOAA+iZDKyZKXnZNAsTkx5M/ewsPtuOO4ftPE+znyrpz2j6YdavgY67WTsI8/I5xUZSvPvQJ
	YMxE+lteKbGTynb3uzMAZC1LwR+Ppef10LjG6+CfRwj2Dpm3HA8NI0Cvj981cBveW3wV37tyaJwaW
	/hUeda5rX1656f/60ukXPktor/nO6i4vA2PR8cEF2hhjEok/6+ylr6r2Ngd4EdYS8helntSamI0DK
	tLxD42PUKNBdgON0FOKR2GenPC9iP3P0MljsOZMHvmj+56Kkwp/Idq1wS/Jb/wkmxKQ01Tn/gUFVO
	xmr2BOM0apSuDheIbvlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUlh-00000009FoG-3ViK;
	Thu, 15 Aug 2024 07:19:33 +0000
Received: from mail-m3291.qiye.163.com ([220.197.32.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUjq-00000009FNr-1uKT;
	Thu, 15 Aug 2024 07:17:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=kIJSRYOWf1NbBI0Z4aJx7NOrs7padLP6aFkeqA15yJcQSOkYfGCG9JaIn57sU3FT50wcB2oGGn2km20AalEbRShkL0VT11R0M2ZS8D2jDLxvuMawhIHlFaQFFbzhvuS4fc+sZLw14XeVfCmleheoov/ePeE9ipMKMCMwS0siaNk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ZXDKYDxb8/Z3wgTYIrp6fPv247TBs7d7CIyWIE94EEE=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 32CE87E03C8;
	Thu, 15 Aug 2024 15:17:22 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v1 3/5] gpio: rockchip: Set input direction in irq_request_resources
Date: Thu, 15 Aug 2024 15:16:49 +0800
Message-Id: <20240815071651.3645949-4-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4aQ1YaQ0JJHhodQhkaSk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9154e5f70d09cfkunm32ce87e03c8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K0k6CDo6CDIzOUM#QyoxKFEh
	Dy0KCwJVSlVKTElITEtNSU9ISE5NVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUpMTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_001738_696968_70BEC430 
X-CRM114-Status: UNSURE (   6.71  )
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

Set input direction to avoid FLAG_IS_OUT in gpiochip_lock_as_irq

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index b2f26a16b1f6..8949324ed816 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -475,6 +475,8 @@ static int rockchip_irq_reqres(struct irq_data *d)
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
