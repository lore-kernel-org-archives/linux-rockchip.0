Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA540C6FA8A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 09:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eKhdmnl9Ixnzw19x4VhBgZfYMoseLOFX6gu415STzro=; b=kW7zrqVNgW6Yqr
	u2WJ2xdWpoQIpsOhgVA6WFNreKwEPg1QTpmUS5qCe38yyxIMpLjio2ZUAnr3HQ86BIZ29MMxHXZpj
	8ilna5cqiJ8Gl/6ZzYWeLPRpiVO0E+reTe9UYfM42b0vASXLKomX+j4CyKedHMhegJ3kD5wjU4Gvj
	ldUgLY+Xib/xqJrWnDcR5c3r2F5rL34MlKxhufkHGZXcSPV28y/ojfxgsJEw+DT8rhnpZwAwtwsB7
	hmlUVNlX2Zilnfk/zopHyV9TG1in3gEp5Ymf1VlNAW414skgOQGD+yaSHgFfpXJfBPOJqVbFCMgse
	he9+MIJd8d4vO32bqCxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxc-00EtzI-GE; Fri, 09 Sep 2022 09:06:04 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxZ-00Etwg-W1
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 09:06:03 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id A036684039F;
	Fri,  9 Sep 2022 17:05:59 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v5 0/6] gpio: rockchip: support acpi
Date: Fri,  9 Sep 2022 17:05:52 +0800
Message-Id: <20220909090558.3609190-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZShkfVkgaHh5DQk8aT0sZSVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K0k6PQw6Mz0aOjYNNEwdTA9O
	SgkaCk5VSlVKTU1JTEpPSE1LSk1NVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlMQ0o3Bg++
X-HM-Tid: 0a83217fb00d2eb8kusna036684039f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_020602_193649_192EC6FA 
X-CRM114-Status: UNSURE (   7.99  )
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

Jianqun Xu (5):
  ARM: dts: rockchip: add gpio alias for gpio dt nodes
  ARM: dts: rockchip: add 'clock-names' for gpio dt nodes
  arm64: dts: rockchip: add gpio alias for gpio dt nodes
  arm64: dts: rockchip: add 'clock-names' for gpio dt nodes
  gpio: rockchip: support acpi

 arch/arm/boot/dts/rk3036.dtsi            |   6 +
 arch/arm/boot/dts/rk3066a.dtsi           |  12 ++
 arch/arm/boot/dts/rk3188.dtsi            |   4 +
 arch/arm/boot/dts/rk322x.dtsi            |   8 +
 arch/arm/boot/dts/rk3288.dtsi            |   9 ++
 arch/arm/boot/dts/rk3xxx.dtsi            |   4 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi |  10 ++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi |   8 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi |   8 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi |  10 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi |   5 +
 drivers/acpi/utils.c                     |  24 +++
 drivers/gpio/gpio-rockchip.c             | 197 ++++++++++++++---------
 include/acpi/acpi_bus.h                  |   1 +
 include/linux/acpi.h                     |   5 +
 15 files changed, 236 insertions(+), 75 deletions(-)

-- 
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
