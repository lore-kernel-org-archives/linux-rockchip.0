Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83301C2D0E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 02:59:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFA2621532
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 02:59:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Qk1kuL7r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFA2621532
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eOqhz5AspzSZDM6xt6SqzGMY7xdtyBWMTBvDfvtkPQs=; b=Qk1kuL7r1p2qDB0/zaMIo1jw7o
	V6NCWrxtQnB4QvGSjrYqyP8kHJrtuMH9bUPhlEvR+2979ohQModQwuo+kd3Mpf7Mz0MyNhXfaQu5K
	YjIZShKusaFEhxLVaUoEgFv8olNKtO393kxvMCz+RMlttvCYlZQd7YyDFt2ZA230gFcDoBeogJUNn
	NvqduH2LuiDrWBBfxkVBLZmLnd2JqndTKyOGmwI+E8fosGoTsAuzDOFPKIkkWJB1zDmegNr+N2ytT
	4FsJMuaev/poNmR7bbeal/dVX4dPiOCfg/s7Zl9e2k5Ltcw9J/813K8Wotpa8DOs9Dx0MAG7gB64p
	HnVonn3w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kF7Nj-0003X5-RL; Mon, 07 Sep 2020 02:59:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kF7Nf-0003V6-Vj
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 02:59:45 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 1ACC8CC432;
 Mon,  7 Sep 2020 10:59:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22906T140609293825792S1599447567920103_; 
 Mon, 07 Sep 2020 10:59:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <360ede3c9de940abb01fa2c2d5aa674f>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH v2 0/5] rockchip-pinctrl fixes for GKI
Date: Mon,  7 Sep 2020 10:59:22 +0800
Message-Id: <20200907025927.9713-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831084753.7115-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_225944_281136_CC20EFF6 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

These patches will fix some issues and modify for GKI.

Heiko Stuebner (1):
  pinctrl: rockchip: depend on OF

Jianqun Xu (4):
  pinctrl: rockchip: make driver be tristate module
  pinctrl: rockchip: enable gpio pclk for rockchip_gpio_to_irq
  pinctrl: rockchip: create irq mapping in gpio_to_irq
  pinctrl: rockchip: populate platform device for rockchip gpio

 drivers/pinctrl/Kconfig            |   4 +-
 drivers/pinctrl/pinctrl-rockchip.c | 289 +++++++++++++++++------------
 2 files changed, 175 insertions(+), 118 deletions(-)

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
