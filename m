Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0D7C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 06:48:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C69D64DF2
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 06:48:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C69D64DF2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xZ/KYePcAE0cV6Pc3gyRRqQTrLR9vGqUHYhbDVsVKiA=; b=clvecV+kFldP0R7KnU9sOnEfhA
	Nne/OXsA2ZnchIJXkKN8IY1g9ECDoFp7tfh/wkC0IP4GmcKC5YQ8q6b+N0bjeHrC40LGh1S1fxONZ
	Uuh2pNXp3Xu8i0jhJ2JkRdkd5KLfBEmaIkjLztFpts8CyTswDtEnXCKh/0PxOusgX1ceA+upRtKfZ
	m9rkQIZZVwTk1Q/7iT7J/1QtApwL/nrDubDu1RivowbGg+ZKeNoAl5nozzraY+XZzlcdHUJaEQVX8
	qxvTmARp3JrkbFaLd+0u4Konvmg0JFlB5e+U/Lv07dLmWw5eCdhydHLlOI2Ci9IYmkjyXTtmKzAfh
	XzSd1frA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGcLs-0008HI-RH; Mon, 01 Mar 2021 06:48:20 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGcLh-0008EE-Bm; Mon, 01 Mar 2021 06:48:13 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5BF44F28BC;
 Mon,  1 Mar 2021 14:47:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31655T140708449044224S1614581271100343_; 
 Mon, 01 Mar 2021 14:47:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d8ba457f321385b8562c37570316750f>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: mturquette@baylibre.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 heiko@sntech.de
Subject: [PATCH v3 0/4] clk: rockchip: add clock controller for rk3568
Date: Mon,  1 Mar 2021 14:47:45 +0800
Message-Id: <20210301064749.10392-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_014811_559304_DE9ACC80 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the clock tree definition for the new rk3568 SoC.

Change in V3:
[PATCH v3 1/4]: Fix some code styles.
[PATCH v3 2/4]: No change.
[PATCH v3 3/4]: No change.
[PATCH v3 4/4]: No change.

Change in V2:
[PATCH v2 1/4]: Convert rockchip,rk3568-cru.txt to YAML,
                And update commit message.
[PATCH v2 2/4]: No change.
[PATCH v2 3/4]: Use arrays to support more core independent div
settings.
[PATCH v2 4/4]: Adapter [PATCH v2 3/4] changes.

Elaine Zhang (4):
  dt-binding: clock: Document rockchip,rk3568-cru bindings
  clk: rockchip: add dt-binding header for rk3568
  clk: rockchip: support more core div setting
  clk: rockchip: add clock controller for rk3568

 .../bindings/clock/rockchip,rk3568-cru.yaml   |   60 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   53 +-
 drivers/clk/rockchip/clk-px30.c               |    7 +-
 drivers/clk/rockchip/clk-rk3036.c             |    7 +-
 drivers/clk/rockchip/clk-rk3128.c             |    7 +-
 drivers/clk/rockchip/clk-rk3188.c             |    7 +-
 drivers/clk/rockchip/clk-rk3228.c             |    7 +-
 drivers/clk/rockchip/clk-rk3288.c             |    7 +-
 drivers/clk/rockchip/clk-rk3308.c             |    7 +-
 drivers/clk/rockchip/clk-rk3328.c             |    7 +-
 drivers/clk/rockchip/clk-rk3368.c             |   14 +-
 drivers/clk/rockchip/clk-rk3399.c             |   14 +-
 drivers/clk/rockchip/clk-rk3568.c             | 1726 +++++++++++++++++
 drivers/clk/rockchip/clk-rv1108.c             |    7 +-
 drivers/clk/rockchip/clk.h                    |   54 +-
 include/dt-bindings/clock/rk3568-cru.h        |  926 +++++++++
 18 files changed, 2843 insertions(+), 75 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/dt-bindings/clock/rk3568-cru.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
