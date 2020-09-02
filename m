Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 053B2C433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 06:49:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC7482084C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 06:49:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EyejPyLJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC7482084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xus2r183LHZC28jmgwIXAMAiVWEb5OjYHDSFOH32h7w=; b=EyejPyLJdv6VjPQhhBnRBQcpH3
	DR3VDWiflaVspCO0DWo6JnCRIhuApajl7GVmx87DKFQ6ZFa3zfQMP8DnYy2R08mQfrnxZc86nGrKQ
	ZIMPerrafl9ACuWr0zls7p7m8sKR7fvV5Nag93MrON0U+SmZZhsJkyeH/ANGfnkDkCo17/lI2KrLK
	2Gh66bq/TT3sqBE1MLuQ4PTG6QBGJz9LqnnwjpS1o3gZB4p9L2gwIr0oq7VXjqBsnDKtC9hD91gGa
	EzFRgyE0hNMT2tDHGLGcfatk1rhbWy3YFhMHCx0YrLaLqsnHvaIekigod3IcX1didWpSww/nw1Btn
	oG5ezPEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDMa0-0003Lm-En; Wed, 02 Sep 2020 06:49:12 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDMZw-0003Is-Am
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 06:49:09 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id AED9BCB943;
 Wed,  2 Sep 2020 14:48:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11834T140500898137856S1599029334223657_; 
 Wed, 02 Sep 2020 14:48:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dae17ab0ed8dc6b22749616600e834d>
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
Subject: [PATCH v1 0/6] clk: rockchip: Support module build
Date: Wed,  2 Sep 2020 14:48:41 +0800
Message-Id: <20200902064847.18881-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_024908_705108_D5C7BDEF 
X-CRM114-Status: GOOD (  10.28  )
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

Export some APIs for module drivers.
Fix the clock config to support module build.
Fix the clk driver init, add module author, description
and license to support building RK3399 SoC clock driver as module.

Elaine Zhang (6):
  clk: rockchip: Use clk_hw_register_composite instead of
    clk_register_composite calls
  clk: rockchip: Export rockchip_clk_register_ddrclk()
  clk: rockchip: Export rockchip_register_softrst()
  clk: rockchip: Export some clock common APIs for module drivers
  clk: rockchip: fix the clk config to support module build
  clk: rockchip: rk3399: Support module build

 drivers/clk/Kconfig                     |  1 +
 drivers/clk/rockchip/Kconfig            | 78 ++++++++++++++++++++++
 drivers/clk/rockchip/Makefile           | 42 ++++++------
 drivers/clk/rockchip/clk-ddr.c          |  1 +
 drivers/clk/rockchip/clk-half-divider.c | 12 ++--
 drivers/clk/rockchip/clk-rk3399.c       | 40 ++++++++++++
 drivers/clk/rockchip/clk.c              | 87 ++++++++++++++-----------
 drivers/clk/rockchip/softrst.c          |  7 +-
 8 files changed, 203 insertions(+), 65 deletions(-)
 create mode 100644 drivers/clk/rockchip/Kconfig

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
