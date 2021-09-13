Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6823C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FBA060F3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3FBA060F3A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BYFKC+Wj/XUHFkebgdc0g3m0UJzBOd+hxwHIuP5jx6M=; b=nF2MMlGUHtT4qE
	eorLBDRxY+0BoDl40Qa0LOmmhUL41xhHgGtzSMdv/UYR4iFKXq0u4TKAQwhVRKaBxDKWnWrFLroOn
	7Cmhx1Z75sninLOdeXDJNSc8lhuNVOUy9kh2rvMXAm+fkTN+nqpUyQ+rT4qySD/KHFoM7Rxx8TQ/L
	jlMv+wAoxrkflpD6KKVlKpqIfuV3PQ98P0xceAbCulvCnGgoqh9ijOLmNILVf3YKe+VL04wvvIuyw
	tIpot+OQzm8+AkL0ZIVwxWBg5IoWgG0S9VJPwU4KjeUFNNtFiXNIIrimEs/IfdADn5fdxfWditNjW
	dEc3SMSbH6JltnVTF2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPumQ-003UcB-0L; Mon, 13 Sep 2021 22:50:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPula-003ULM-Ry; Mon, 13 Sep 2021 22:49:37 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=localhost.localdomain)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mPulV-0003SX-PC; Tue, 14 Sep 2021 00:49:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Cc: heiko@sntech.de, jay.xu@rock-chips.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] gpio/pinctrl-rockchip: Fixes for the recently separated
 gpio/pinctrl driver
Date: Tue, 14 Sep 2021 00:49:22 +0200
Message-Id: <20210913224926.1260726-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_154935_012632_33254358 
X-CRM114-Status: GOOD (  16.00  )
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

It looks like rk3288-veyron(-pinky) was the one device in my boardfarm
I didn't test the pinctrl/gpio patches on and it seems this one uses
some specific parts none of the other do. So when I did my v5.15-rc1
testrun I got a surprise.

Not only did the pinctrl-hogs cause a null-pointer exception but the
device also entered a reset loop a bit later in the boot.

This series addresses the issues in hopefully a nice way and should
ideally become part of 5.15 before other people run into issues.

* Patch 1 addresses the reset-loop, which is caused by a not-ideal
  check vor v1 vs. v2 controller in the debounce code
* Patch 2 is just a find when looking through the code
* Patches 3+4 address the pinctrl-hogs issue by creating a deferred
  queue where the pinctrl can temporarily store these hog settings
  if needed and the pinctrl driver can retrieve them during probe.


Heiko Stuebner (4):
  gpio/rockchip: extended debounce support is only available on v2
  gpio/rockchip: fix get_direction value handling
  pinctrl/rockchip: add a queue for deferred pin output settings on
    probe
  gpio/rockchip: fetch deferred output settings on probe

 drivers/gpio/gpio-rockchip.c       | 26 +++++++++++-
 drivers/pinctrl/pinctrl-rockchip.c | 67 ++++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h | 10 +++++
 3 files changed, 101 insertions(+), 2 deletions(-)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
