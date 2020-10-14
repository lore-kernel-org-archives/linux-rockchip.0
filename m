Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24CDEC43467
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC7BA221FF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 02:28:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TTPqE253"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC7BA221FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k5HObagJ1g0JHbOg8T6ZsqaZCzRtK4mEjEJ6Of1CJyo=; b=TTPqE253zjLc+Ad8a9lkyHjDTR
	2GIP2C/6l5qM5FNH+ANAK5za2OJuoTOuzTB8MC7RIjKJ6Yrvy0wxirdQ/axEDIZOMSwk1NqH+nDNK
	Xhrpi9zcCGp8kWsP8goWUo+9v21oZ2mdtQBpvw30Mj89o/5tTV8pyYdSd1GvF7U/1JjAjle8oXn0p
	F4wx/ISMKuqXBpfy1+q2kb3ea3AixbC6x/r/DiXUyGOd18pQPrbp3fIMfnCxoibDW6EzepbLdYM4I
	s05GqzfFboEe0oSQ2J6xR6r3c6HZhzqyxz6OFkZW43lq56qd17M5YF5INc1n2o7gZgGsfxxlOghdX
	G4f7d9SQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSWWm-0002Xf-Rp; Wed, 14 Oct 2020 02:28:32 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSWWh-0002Sc-NR
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 02:28:29 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id A55F3CCC83;
 Wed, 14 Oct 2020 10:28:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18907T140199837284096S1602642493459899_; 
 Wed, 14 Oct 2020 10:28:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <707f4ec6577f986d3b7610d3d3212a19>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v4 0/5] clk: rockchip: Support for some new features
Date: Wed, 14 Oct 2020 10:28:07 +0800
Message-Id: <20201014022812.6733-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_222828_015176_70E69E29 
X-CRM114-Status: UNSURE (   9.07  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1. Support for some new features
2. fix up some error

Chang in V4:
[PATCH v3 1/5] : Update the commit message.
[PATCH v3 2/5] : Update the commit message.

Chang in V3:
[PATCH v2 3/6] : It's been merged
So rebased and resubmit.

Chang in V2:
[PATCH v2 5/6] : fix up the Register error, and add delay.

Elaine Zhang (5):
  clk: rockchip: Add supprot to limit input rate for fractional divider
  clk: rockchip: fix up the frac clk get rate error
  clk: rockchip: add a clock-type for muxes based in the pmugrf
  clk: rockchip: add pll up and down when change pll freq
  clk: rockchip: support pll setting by auto

 drivers/clk/rockchip/clk-pll.c    | 236 ++++++++++++++++++++++++++++--
 drivers/clk/rockchip/clk-px30.c   |  29 ++--
 drivers/clk/rockchip/clk-rk3036.c |  13 +-
 drivers/clk/rockchip/clk-rk3128.c |  15 +-
 drivers/clk/rockchip/clk-rk3188.c |  24 +--
 drivers/clk/rockchip/clk-rk3228.c |  18 ++-
 drivers/clk/rockchip/clk-rk3288.c |  19 ++-
 drivers/clk/rockchip/clk-rk3308.c |  46 +++---
 drivers/clk/rockchip/clk-rk3328.c |  17 ++-
 drivers/clk/rockchip/clk-rk3368.c |  17 ++-
 drivers/clk/rockchip/clk-rk3399.c |  32 ++--
 drivers/clk/rockchip/clk-rv1108.c |  14 +-
 drivers/clk/rockchip/clk.c        |  39 ++++-
 drivers/clk/rockchip/clk.h        |  27 +++-
 include/linux/clk-provider.h      |   2 +
 15 files changed, 422 insertions(+), 126 deletions(-)

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
