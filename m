Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44DFFC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A250C65010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A250C65010
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+y4g2Xz68Ph+dA1BSyHd5/AR9lVIuEOqyid9Erjigr8=; b=FdDrcEA+IOSvxJIT2OWlFEwPra
	wUD1aP6vkZNLUgqmwCVHYrJX9hW5zb5xxmJDa3/bWj5MlYBGS166yznM/ofm38B1sehKA5zG/clBF
	vycDr3LFcIJrL2Ssj2xuEYDZGtRKDkzhVymJ1BM8gFIM4AFT9xGVVvB90XDPIXyQeDcm6iErZs7xU
	lDbR6tODQlDJQVyZX0ch83eC49He2T3zWjuyaWGupMarXd80AG7j+485rGAZfCWsRA7gBKUpktxRv
	+4zfQNEJ1+dyuD2LPKIGoQqdyefC3xLvIC8Ncmd5Cq1lihINuLk9oXj/se8AY2KeOKDOiKmK/aYy0
	lywtNS6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHyV4-00B3Cy-Ly; Fri, 05 Mar 2021 00:39:26 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHyUy-00B38O-AX
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 00:39:22 +0000
Received: from localhost (unknown [192.168.167.224])
 by lucky1.263xmail.com (Postfix) with ESMTP id C0F55D0616;
 Fri,  5 Mar 2021 08:39:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26158T139991629948672S1614904748986290_; 
 Fri, 05 Mar 2021 08:39:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <adc5252af9cc13c74d0ac0f323da289b>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, heiko@sntech.de, catalin.marinas@arm.com,
 will@kernel.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 0/2] make rockchip pinctrl module able
Date: Fri,  5 Mar 2021 08:39:05 +0800
Message-Id: <20210305003907.1692515-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_003920_685043_74068E05 
X-CRM114-Status: UNSURE (   7.00  )
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

Make the rockchip pinctrl driver able to be module by unselect
PINCTRL_ROCKCHIP from ARCH_ROCKCHIP, then modify driver module define.

Jianqun Xu (2):
  arm64: remove select PINCTRL_ROCKCHIP from ARCH_ROCKCHIP
  pinctrl: rockchip: make driver be tristate module

 arch/arm64/Kconfig.platforms       |  2 --
 drivers/pinctrl/Kconfig            |  6 +++++-
 drivers/pinctrl/pinctrl-rockchip.c | 13 +++++++++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
