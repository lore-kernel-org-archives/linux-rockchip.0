Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BBB9C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:46:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 48A8A619D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:46:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 48A8A619D5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6CnIVWaviQatipyPbaDxqoq24jO82/Tfl26SzaD5SVU=; b=YTiwKOfcvmsFjhKK/SqMvePJAX
	7GKyYL0TQsTT38+28Ef/2qlG960KQF2BfZ0fc2XHA7qANG/KtQ6jC30zgiRnYadPcAoGA/T0Y0kPK
	/mjcxqe+6vtUocmwBJWXYI/MUGJtjvUKmszg2N24pjIm1rAAdpTnrqwDLsFZCyw6YEwNaFU9ibalx
	6ICu4W7Var5rU3Klimjj1tjeiW0kjzXofTyheMUdeaEste+nVN7tqY8RUKnkQPVYLAFUayKz6vs4k
	ZnVt+0WXa+Gfq+cz70eYWJIfHqqicW0ZIcCIJxDCooMQVmGxHFKYpJI545oU6f1UOI18tI0+NAN12
	TuuxTV0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOxHI-00GQq5-IQ; Wed, 24 Mar 2021 06:46:04 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOxHB-00GQnR-PE
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 06:46:00 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 39A92CC8F1;
 Wed, 24 Mar 2021 14:45:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139685112297216S1616568346904525_; 
 Wed, 24 Mar 2021 14:45:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7ebdb729a5f20c017d9d086579e21231>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: huangtao@rock-chips.com, kever.yang@rock-chips.com,
 linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH RESEND 0/7] gpio-rockchip driver
Date: Wed, 24 Mar 2021 14:45:34 +0800
Message-Id: <20210324064541.949630-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_064558_193650_6E324DAB 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
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

Separate gpio driver from pinctrl driver, and support v2 controller.

Jianqun Xu (7):
  pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
  pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
  gpio: separate gpio driver from pinctrl-rockchip driver
  gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
  gpio/rockchip: support next version gpio controller
  gpio/rockchip: always enable clock for gpio controller
  gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type

 drivers/gpio/Kconfig               |   8 +
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c | 909 +----------------------------
 drivers/pinctrl/pinctrl-rockchip.h | 286 +++++++++
 5 files changed, 1072 insertions(+), 890 deletions(-)
 create mode 100644 drivers/gpio/gpio-rockchip.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.h

-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
