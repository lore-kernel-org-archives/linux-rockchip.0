Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C4BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 14:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CoeaFe0149NgEek/8OWc441KOV/nrpSZka97CQiwyoM=; b=pWsJJEnqcDSPns
	I37VJUjjiJ4ndrTIiqKguSOFnLlxwnD1HNxSqhNDMiTHM6aZSl/4XbaD47cOx/epqAEY1WHtx6otf
	MU5Asm7eZeLUGtGnUXnFnl2us6zKTtKbErk+8g8X/FjzDxIF/VHrUN7ixhrqcvXAl6FQ+1/TNmjPF
	Vyst7UVY6GJ/wy3C9EUZ0HVEFSFcvaAm4bcqIvyQXBhGPdczfsZWLe8eyFtOUuq3MZgDyNAiL+l2K
	FUMdD+/0zMBaFoVc0Ur5ZBqy5ZHrN3p6kNaQMog6v7oCaSPw90O8PeNf+hDX6MT9umziezCYl/kym
	f3UAzNHoTQk3lqfBoUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obk2S-004hHm-Ja; Fri, 23 Sep 2022 14:52:24 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obk2H-004hCt-0Z; Fri, 23 Sep 2022 14:52:14 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2271C60003;
	Fri, 23 Sep 2022 14:52:02 +0000 (UTC)
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
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 0/2] fix gpio-sysfs/libgpiod for rockchip
Date: Fri, 23 Sep 2022 16:51:39 +0200
Message-Id: <20220923145141.3463754-1-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_075213_241090_EF09AF13 
X-CRM114-Status: GOOD (  12.76  )
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

Since the split of gpio and pinctrl in their own driver, gpio-sysfs and
libgpiod userspace GPIO handling has been broken because the pins aren't
put into their GPIO function anymore since pinctrl subsystem is
"bypassed" when requesting GPIOs from userspace.

This fixes it by making the gpio driver actually request from the
pinctrl subsystem to put the pin in its GPIO function when the GPIO
direction is set in userspace.

I discovered the issue because we have a GPIO the user needs to control
from userspace to flash FW on an on-board STM32 that is actually on the
same pin as one used by the flash controller. Considering the storage
medium tried by the BOOTROM is emmc->nor->nand->sdmmc, booting from emmc
didn't show the issue because the default function for pins is GPIO and
the flash controller pins didn't need to be muxed by the BOOTROM.
However, if there's nothing on emmc, the BOOTROM does the pinmux for SPI
controller and puts the pins in their flash mode and therefore the
handling of that pin as a GPIO from userspace was not possible, but only
when booting on something else than eMMC.

This restores the behavior as seen in v5.14 and earlier.

Cheers,
Quentin

Quentin Schulz (2):
  pinctrl: rockchip: add pinmux_ops.gpio_set_direction callback
  gpio: rockchip: request GPIO mux to pinctrl when setting direction

 drivers/gpio/gpio-rockchip.c       |  6 ++++++
 drivers/pinctrl/pinctrl-rockchip.c | 13 +++++++++++++
 2 files changed, 19 insertions(+)

-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
