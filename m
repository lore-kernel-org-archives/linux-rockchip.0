Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1B86C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 01:34:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03EF86054F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 01:34:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 03EF86054F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6bi0bBauRcFAgcEBURlHeLqcwzsT0wE0ToVEzLDRIdg=; b=TIH8kfqZyrTnNL
	VGaN7dJE7J+Z8J0oIWRUgr/T7W7D1LSRc3c6Nh+D90UfMTv/b7YlzbTpboCK8A1qjXTgZPaQjbeDo
	sHytqZ0fj0VOtngc4H5HW6iGZSTJPNH2q809oglEx9rJvuW8Ippe5cKWsNmbPwdwsRE1lh6jQJoN9
	iI4Z3h36LboGWy+ttuiAthsFUw0q2A0ls4b4tLIxA3l9em44fmzxegKZBT4n46v3tI4eoXJHWlzVg
	8CZMlKwNc920IwoqaADIWw0023gyeStvvnd0yS87PpHaLMfzEbdlO0HZDUgTb1J7JKnh5BJqMD+fq
	rELC9SUlgvUy53vjKSxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7pVL-009NqX-IS; Mon, 26 Jul 2021 01:34:03 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m7pVG-009Np4-II
 for linux-rockchip@lists.infradead.org; Mon, 26 Jul 2021 01:34:00 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 15574FAFA2;
 Mon, 26 Jul 2021 09:33:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25117T140689763460864S1627263227474860_; 
 Mon, 26 Jul 2021 09:33:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <209d11b1e1cccf566a31837503ee6a56>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: bgolaszewski@baylibre.com, robh+dt@kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v7 0/9] gpio-rockchip driver
Date: Mon, 26 Jul 2021 09:33:36 +0800
Message-Id: <20210726013345.1634442-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210725_183358_889119_B6BC4FA8 
X-CRM114-Status: GOOD (  11.00  )
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

Separate gpio driver from pinctrl driver, and support gpio v2 controller.

Jianqun Xu (8):
  pinctrl/rockchip: always enable clock for gpio controller
  pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
  pinctrl/rockchip: add pinctrl device to gpio bank struct
  gpio/rockchip: add driver for rockchip gpio
  gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
  gpio/rockchip: support next version gpio controller
  gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type
  pinctrl/rockchip: drop the gpio related codes

Liang Chen (1):
  dt-bindings: gpio: change items restriction of clock for
    rockchip,gpio-bank

 .../bindings/gpio/rockchip,gpio-bank.yaml     |   5 +-
 drivers/gpio/Kconfig                          |   8 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-rockchip.c                  | 771 +++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c            | 909 +-----------------
 drivers/pinctrl/pinctrl-rockchip.h            | 287 ++++++
 6 files changed, 1089 insertions(+), 892 deletions(-)
 create mode 100644 drivers/gpio/gpio-rockchip.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.h

--
v7:
 - include <linux/gpio/driver.h> instead of <linux/gpio.h>
 - use gpio align id instead of gpio-name

v6:
 - new gpio-driver first and then drop gpio from pinctrl
 - reorder patches
 - cherry-pick gpio dt-binding from chenliang

v5:
 - change to devel branch

2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
