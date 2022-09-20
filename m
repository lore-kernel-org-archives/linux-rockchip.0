Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D10A9C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cy8Q0CIYe215Vf1gvgrIExcBFF5TeGbfoGOssXv1uVw=; b=bwqG9uRkYzxlxj
	RNkHGjOh5r/h4t+PZdsnKfeVmaDZcBG0Q4G9UzYDvurZVmeD6XK6ruICNHdQbLyU9vhEyLiFTeO92
	4PEF3/ewKdXbO4yeQR+J7UTbLsfPQOsf0FunfcSJgfQt+ozd+LCQiSws8dGfiTprEVWBNBZnP734u
	47jZms+rwZ3crhuFE6Ssxng+GmorviykTGOuOVKRGSofWiAYYeP/PTeePfFitdlvcImOE66hZOpH6
	uWuPXuiJ5zkslZEVkdeWWUjyBwNDKYZNB5AOBw0SxDFDYzxS0w2N3YGy0U8n0CapjmQWjWKAda7em
	+jkTD+ewbf+eBn3hsgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXN-002ySw-5l; Tue, 20 Sep 2022 10:31:33 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaX5-002yHW-LY
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:28 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 30EDD280B4F;
	Tue, 20 Sep 2022 18:31:10 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de,
	brgl@bgdev.pl,
	andriy.shevchenko@linux.intel.com
Cc: robert.moore@intel.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lenb@kernel.org,
	rafael@kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 00/20] Rockchip pinctrl/GPIO support ACPI
Date: Tue, 20 Sep 2022 18:30:48 +0800
Message-Id: <20220920103108.23074-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSxgfVksfTx8fSR1JTh9JSlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngw6Vjo5MT0qEBwwPQlWLyoT
	FBdPC0pVSlVKTU1ITU1CQ0xLQ0tMVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhLS0g3Bg++
X-HM-Tid: 0a835a739f802eb1kusn30edd280b4f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033124_780086_8E520D4A 
X-CRM114-Status: UNSURE (   7.98  )
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

The patchset will fix the pinctrl and GPIO driver to support ACPI
enabled. There are several patches sent seperated for pinctrl and gpio
branch, now let send them together make it easy to review.

Andy Shevchenko (1):
  ACPI: utils: Add acpi_dev_uid_to_integer() helper to get _UID as
    integer

Jianqun Xu (19):
  pinctrl/rockchip: populate GPIO platform early
  pinctrl/rockchip: use fwnode instead of of_node
  pinctrl/rockchip: switch to use device_get_match_data
  pinctrl/rockchip: of_populate_platform for gpio only for of node
  pinctrl/rockchip: parse dt only if the fwnode is of node
  pinctrl/rockchip: print a message if driver probed successfully
  gpiolib: make gpiochip_find_by_name to be common function
  gpio/rockchip: drop 'bank->name' from the driver
  gpio/rockchip: revert deferred output settings on probe
  gpio/rockchip: add of_node for gpiochip
  gpio/rockchip: add return check for clock rate set
  gpio/rockchip: disable and put clocks when remove
  gpio/rockchip: switch to use irq_domain_create_linear
  gpio/rockchip: disable and put clocks when gpiolib register failed
  gpio/rockchip: try to get gpio id from uid when ACPI enabled
  gpio/rockchip: print device with fwnode name when probe successful
  gpio/rockchip: make use of device property
  gpio/rockchip: make GPIO module work well under ACPI enabled
  pinctrl/rockchip: find existed gpiochip by gpio label

 drivers/acpi/utils.c               |  24 +++
 drivers/gpio/gpio-rockchip.c       | 325 ++++++++++++++++-------------
 drivers/gpio/gpiolib.c             |  16 +-
 drivers/pinctrl/pinctrl-rockchip.c | 108 +++++-----
 drivers/pinctrl/pinctrl-rockchip.h |   9 +-
 include/acpi/acpi_bus.h            |   1 +
 include/linux/acpi.h               |   5 +
 include/linux/gpio/driver.h        |  12 ++
 8 files changed, 289 insertions(+), 211 deletions(-)

-- 
v1:
 - continue with the suggestion from Andy and Johan

2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
