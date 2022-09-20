Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA387C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 02:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qACWDo3ChT5H1Mc7xYu1dndlKVXTgEg3/o6AyPzzvuM=; b=WeJSr7pHFQbuUN
	HYaAPItrbpVu0WhAk8hRQF+6YFLqOcCbrYOFxbyu68Bl4jbyhVKFeG8SFdUGevwmmEUEHml1lDmXM
	s0DFdboC9YH0kOEpnD4bYDrns6AfcTk3SzGQYmL3NrkoYC6FT3eHQS8KC3oFVBIcUv/3eoXSaH4Pn
	2IaG15MMh9+Rfow4ITbNqab10RwaJoeLR3ZfqY9ufOt0tlb/laQ3TKMYCueEa8kr8PiqMLGasj/BY
	DbNFjcc32oPyJmoChg2Ip+dTdMef5sWyXNGKt0bcMLrwgbgbp3CqTvP6g+FA8cFhGs7jwFtQCD00c
	8OjXGQnfKMMY/Rlo3THw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaSa3-00HAWs-Kq; Tue, 20 Sep 2022 02:01:48 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaSZz-00HAV1-RU
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 02:01:45 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 714CA6806B2;
	Tue, 20 Sep 2022 10:01:39 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v8 0/3] gpio: rockchip: support acpi
Date: Tue, 20 Sep 2022 10:01:35 +0800
Message-Id: <20220920020138.861083-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSEkdVkNCSUMeQkxCTE5OH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OiI6Ayo4ND0tNh4wDSoeTQwi
	KQxPFExVSlVKTU1ITUhCSEtLSkNKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlNS0g3Bg++
X-HM-Tid: 0a8358a126902eb5kusn714ca6806b2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_190144_106552_4924B6DC 
X-CRM114-Status: UNSURE (   8.90  )
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

This patch fix driver to support acpi. A patch to pinctrl-rockchip.c will be pushed together.

Andy Shevchenko (1):
  ACPI: utils: Add acpi_dev_uid_to_integer() helper to get _UID as
    integer

Jianqun Xu (2):
  gpio: rockchip: support acpi
  gpiolib: make gpiochip_find_by_name to be common function

 drivers/acpi/utils.c         |  24 +++
 drivers/gpio/gpio-rockchip.c | 326 +++++++++++++++++++----------------
 drivers/gpio/gpiolib.c       |  16 +-
 include/acpi/acpi_bus.h      |   1 +
 include/linux/acpi.h         |   5 +
 include/linux/gpio/driver.h  |  12 ++
 6 files changed, 226 insertions(+), 158 deletions(-)

-- 
v8:
 - fix clk put in error path, acked by Andy Shevchenko
 - add pinconf set for pull and drive-strength
 - add a gpiochip_find_by_name patch, used by pinctrl

v7:
 - drop pinctrl related codes to make gpio work without pinctrl, for acpi.

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
