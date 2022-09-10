Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F60FC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 01:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D94kAuUfFxMLe+vaqoT3i9Olil+XmjPG0dZmL+v8ooo=; b=IUi84PYor8TEin
	5zGvLU4jnjKw5QvNcwIKzonU94nF75idwoJ3nW5M6EXQ0SUWGnO3R1FVnTYSvh8ePz8YdiApPH/q9
	PhA10gA3GVeHlDJxSSj3IP+xGz+0infQnigorxWFU4DDxA0DNvdueGExvViXai72IlwkYo0CYvSvV
	SOKreKWmRAA62XxDQkE4wRAMSS7Qg8cLUpeEB2sMsltnPc+n4vRxnGfM5h43yD7MV21wO68e5LfKf
	vw0zj1dTfaDuYCcZTbkkQVvK2lK3mP8Z7J8Rr8XjKjZIXK50pTW6G0gvcUWfYqKmgbf9gVHj0xorB
	Pvvluo63aiJkJGvLzIpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWpCo-004iHa-0J; Sat, 10 Sep 2022 01:22:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWpCl-004iFn-9P; Sat, 10 Sep 2022 01:22:44 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWpCj-0001A3-OZ; Sat, 10 Sep 2022 03:22:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.1 #1
Date: Sat, 10 Sep 2022 03:22:41 +0200
Message-ID: <2252399.ElGaqSPkdT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_182243_358563_99AEAB95 
X-CRM114-Status: GOOD (  10.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:

  Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-drivers1

for you to fetch changes up to 6541b424ce1dda616d3946e839f015c984df7a99:

  soc: rockchip: power-domain: add power domain support for rk3588 (2022-09-09 19:06:41 +0200)

----------------------------------------------------------------
Powerdomain drivers for rv1126 and rk3588 socs, keep current state of
power-domains instead of always enabling when adding them, add rv1126
io domains and add binding for another "general register files" syscon.

----------------------------------------------------------------
Elaine Zhang (1):
      soc: rockchip: power-domain: do not enable domain when adding it

Finley Xiao (2):
      dt-bindings: power: add power-domain header for rk3588
      soc: rockchip: power-domain: add power domain support for rk3588

Frank Wunderlich (1):
      dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf

Heiko Stuebner (2):
      Merge branch 'v6.1-shared/powerdomain' into v6.1-armsoc/drivers
      Merge branch 'v6.1-shared/powerdomain' into v6.1-armsoc/drivers

Jagan Teki (4):
      dt-bindings: power: Add power-domain header for RV1126
      dt-bindings: power: rockchip: Document RV1126 power-controller
      soc: rockchip: power-domain: Add RV1126 power domains
      dt-bindings: power: rockchip: Document RV1126 PMU IO domains

Jianqun Xu (1):
      soc: rockchip: io-domain: Add RV1126 IO domains

Sebastian Reichel (2):
      dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
      dt-bindings: power: rockchip: Add bindings for rk3588

 .../devicetree/bindings/arm/rockchip/pmu.yaml      |   2 +
 .../bindings/power/rockchip,power-controller.yaml  |   4 +
 .../bindings/power/rockchip-io-domain.yaml         |  30 +++++
 .../devicetree/bindings/soc/rockchip/grf.yaml      |   3 +
 drivers/soc/rockchip/io-domain.c                   |  20 ++++
 drivers/soc/rockchip/pm_domains.c                  | 130 ++++++++++++++++++---
 include/dt-bindings/power/rk3588-power.h           |  69 +++++++++++
 include/dt-bindings/power/rockchip,rv1126-power.h  |  35 ++++++
 8 files changed, 280 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h
 create mode 100644 include/dt-bindings/power/rockchip,rv1126-power.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
