Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E379C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 08:23:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8FCA64EE7
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 08:22:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8FCA64EE7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f1DkRJQXFz7+VsIK7GuwXVYb7pctAO8p10Go1swydyE=; b=k6zXMwWoXCwf+kZ3lZT23emVlV
	L+0quRv7sakiegu3/Pmj84akCSYoxBSQVZC+p9j7LO+ov3EZ8imUP/X9w+piqPvxdAIOeM5dmoedt
	6lTYt1zU9lmAwbVQif9oB4UVsscZyg9eQmhwWQe1ynVHCJQRjQSWjDxSlRpqgehgGmx/heCDXYR16
	zuygkMH/0gOZm81Vh+um5fyjYRAw1mE5HRHNp3nUdyKuxJ3ohEGu9vHtFhQwZ4dzq7PXXMLRah/sd
	tiP3WFPP6yAfd4R2EtSF7AHxdp+tmzqLIBngaQfMBDDZSHBPg8gzWe8d5iV9EHROfEOyvDuPxZMQF
	SWr5kiyQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFYOm-0005Gc-K9; Fri, 26 Feb 2021 08:22:56 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFYOi-0005Es-BN; Fri, 26 Feb 2021 08:22:53 +0000
Received: from localhost (unknown [192.168.167.225])
 by lucky1.263xmail.com (Postfix) with ESMTP id D5C2EB879F;
 Fri, 26 Feb 2021 16:22:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5973T140596920432384S1614327760837004_; 
 Fri, 26 Feb 2021 16:22:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <55aca934b821fe2b99e3523b58234e25>
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
Subject: [PATCH v2 0/4] clk: rockchip: add clock controller for rk3568
Date: Fri, 26 Feb 2021 16:22:30 +0800
Message-Id: <20210226082234.1733-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_032252_629005_61CAAFD8 
X-CRM114-Status: GOOD (  10.92  )
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

Change in V2:
[PATCH v2 1/4]: Convert rockchip,rk3568-cru.txt to YAML,
		And update commit message.
[PATCH v2 2/4]: No change.
[PATCH v2 3/4]: Use arrays to support more core independent div settings.
[PATCH v2 4/4]: Adapter [PATCH v2 3/4] changes.

Elaine Zhang (4):
  dt-binding: clock: Document rockchip,rk3568-cru bindings
  clk: rockchip: add dt-binding header for rk3568
  clk: rockchip: support more core div setting
  clk: rockchip: add clock controller for rk3568

 .../bindings/clock/rockchip,rk3568-cru.yaml   |   55 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-cpu.c                |   40 +-
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
 18 files changed, 2834 insertions(+), 66 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/dt-bindings/clock/rk3568-cru.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
