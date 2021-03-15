Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF4E4C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 06:40:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C0F164E40
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 06:40:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C0F164E40
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vb7B5GrmtUFTrXtY7j9kqfxa9PCPR+wNCrUSPJnQg6A=; b=fIrPbhSm7hFl2ZFRCl/7YUC7fZ
	kZrLIHjCV/yF1lz4CKHIrRK1UzPJ/BOUnbXvXMZ84tD4fwzcJiVOJWd8Pb2VlQC4BYBshfdrS1fGI
	VdxuSX3KivC8hM9V2o98Gp6+HobcRoFLsJGSb1VYPecl7F4faW5Ut5BoWxJcxcxes4WbmCVk8Pgqy
	gHVlEiuJkm6sQWe4D/L1oxcNM3nicikOU2uOMjwzsSya45ziU87EPeO4Fz+uj63iYhUfQ81+8qfIx
	Miyu1D09NXeLQFkd/nulrE2ffE2V6Du8eQAaAELMR6hq5Ktc4FIxLYucw0JumUvtT0XpBnTZZjwK7
	eQSvMeeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLguD-00F34n-Ov; Mon, 15 Mar 2021 06:40:45 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLgt5-00F2r6-L7; Mon, 15 Mar 2021 06:39:42 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id EA651B9639;
 Mon, 15 Mar 2021 14:39:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29406T140393971717888S1615790360484377_; 
 Mon, 15 Mar 2021 14:39:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <df0691ade47602fc9b47b08f22689e01>
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v4 0/4] clk: rockchip: add clock controller for rk3568
Date: Mon, 15 Mar 2021 14:39:09 +0800
Message-Id: <20210315063913.15184-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_063936_391012_6FC616A0 
X-CRM114-Status: GOOD (  10.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the clock tree definition for the new rk3568 SoC.

Change in V4:
[PATCH v4 1/4]: No change.
[PATCH v4 2/4]: No change.
[PATCH v4 3/4]: No change.
[PATCH v4 4/4]: Drop parenthesis and module alias.

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
 drivers/clk/rockchip/clk-rk3568.c             | 1725 +++++++++++++++++
 drivers/clk/rockchip/clk-rv1108.c             |    7 +-
 drivers/clk/rockchip/clk.h                    |   54 +-
 include/dt-bindings/clock/rk3568-cru.h        |  926 +++++++++
 18 files changed, 2842 insertions(+), 75 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/dt-bindings/clock/rk3568-cru.h

-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
