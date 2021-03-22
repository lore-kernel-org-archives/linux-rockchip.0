Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9C4C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:43:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3648160200
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:43:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3648160200
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fUPkDOm+RTYipNrx+CHyoAB0/XzNrTnqqO18LOZinYg=; b=V/TjVb3KqMxtIhJhqdDzuCo8mp
	jliwcl+r1RXY2kzk6urrg+hTgpIMMxwia2LfHbBMaUkXWrrnbcp82Z1C2Ks5vpCkM9YhdHNr5sJv1
	KmqXYav1GO8dIwDx+UQFolPQ9j+lHXFn5cyfDLuTsmTqUKS1yX9LWn8b9Qg7+vbJYRpiiTu1+LHT0
	H81FG6P4lgdZvJPDs6qsBimfDnU158xF8F/GNc3l6CTTuEm1KLCkflns0uthgND0E2IpVbbFnw3/3
	Uj1l6sBHm+feh9ESzNoK/t2zCURmrHfnuIrLcqlGxvXdOtQ7bHx7NfBxrQDarO66Y4Lrhdd1gUyQH
	MCc3emzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOI1s-00BMAd-VT; Mon, 22 Mar 2021 10:43:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOI1m-00BM8h-6b
 for linux-rockchip@lists.infradead.org; Mon, 22 Mar 2021 10:43:22 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id BA41AF3227;
 Mon, 22 Mar 2021 18:43:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139685293258496S1616409792243826_; 
 Mon, 22 Mar 2021 18:43:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d2a69f0cb541076f56fdc6182079d62f>
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
Subject: [PATCH 0/3] gpio-rockchip driver
Date: Mon, 22 Mar 2021 18:43:07 +0800
Message-Id: <20210322104310.863029-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_104320_268304_81C5DBAC 
X-CRM114-Status: UNSURE (   9.62  )
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

Separate gpio driver from pinctrl driver.

Jianqun Xu (3):
  pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
  pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
  gpio: separate gpio driver from pinctrl-rockchip driver

 drivers/gpio/Kconfig               |   8 +
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-rockchip.c       | 650 +++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c | 909 +----------------------------
 drivers/pinctrl/pinctrl-rockchip.h | 246 ++++++++
 5 files changed, 924 insertions(+), 890 deletions(-)
 create mode 100644 drivers/gpio/gpio-rockchip.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.h

-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
