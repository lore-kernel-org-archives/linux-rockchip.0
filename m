Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96FF2ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WbGuP9i0t3jf2Ir6InCZZ9PvU5LctmueA2UVs7lmqwI=; b=4MxWsbElTTtnEL
	66ElDg5p24C2SMYZ3zGTyB/OEDP/cWf3/cZwQYaRw71h8kxfOKhbLSaiIt/ycswgj4S/uKfBW7VQZ
	T6r3wdu7YIRayHlOCbGhjI70NU+3GVkTrzeSsYG/71FpZ3VZpTCOa1jgoh0ruHJindvY0ZgDwMvuF
	I701kSZbrMSzjcQfW2T0n9X5ef8Snncj655aQYGaAcZiqrOPn3YNF8hf1Nn6K/bJnUyKDLoVMQcMT
	by7+foQWJ8JW2dkZxOV3FylFRo/kUnIb+8LcDtcQUx2ivcQBw38RLvPGpTiBhQznUCcvAMRZZgsTC
	HYYQkG0dyIesoQBgHtYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNm-00F8NJ-0Y; Thu, 15 Sep 2022 02:13:38 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNf-00F7sE-1a
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 02:13:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 03167900115;
	Thu, 15 Sep 2022 10:13:21 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v6 0/3] gpio: rockchip: support acpi
Date: Thu, 15 Sep 2022 10:13:17 +0800
Message-Id: <20220915021320.80364-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSU9JVk9KTUIYQ0sfSRkZT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OS46Sgw6HD0jFC05MxUcCxka
	NBVPCj1VSlVKTU1ISUtDS0tJTk5CVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlIS0M3Bg++
X-HM-Tid: 0a833eec128f2eafkusn03167900115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_191331_249359_9D9A1E2A 
X-CRM114-Status: UNSURE (   7.49  )
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

This patch fix driver to support acpi.

Andy Shevchenko (1):
  ACPI: utils: Add acpi_dev_uid_to_integer() helper to get _UID as
    integer

Jianqun Xu (2):
  pinctrl: export function get_pinctrl_dev_from_devname()
  gpio: rockchip: support acpi

 drivers/acpi/utils.c            |  24 ++++
 drivers/gpio/gpio-rockchip.c    | 194 ++++++++++++++++++++------------
 drivers/pinctrl/core.c          |   1 +
 include/acpi/acpi_bus.h         |   1 +
 include/linux/acpi.h            |   5 +
 include/linux/pinctrl/pinctrl.h |   1 +
 6 files changed, 152 insertions(+), 74 deletions(-)

-- 
v6:
 - remove dt patches from this serial patchset
 - fix clock get to only with index 0 for apb and 1 for debounce
 - move get iomem and irq first, suggested by Johan

v5:
 - add patches to add gpio alias and clock-names
 - get clock by devm_clk_get()
 - restore gpio range add comment
 - other codingstyle

v4: suggested by Andy Shevchenko
 - use dev_fwnode and to_of_node(fwnode) to replace dev->of_node
 - split to a separate rockchip_gpio_get_clocks
 - handle fail for clk_prepare_enable
 - other codingstyle

v3: suggested by Andy Shevchenko
 - fix irq size (32) to GPIO_MAX_PINS
 - fix to use is_of_node or is_acpi_node
 - use standard pattern for error handle
 - remove redundant assignment

v2:
 - fix rockchip_pin_output_deferred to rockchip_pin_deferred
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
