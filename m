Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB7BC32771
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 11:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WRiWKodoQRBbD/F2DiMT1FVrmMgP1YtSZjArpwzbqdU=; b=bDKXyCSSRmO6Rs
	NELR1euywguJK+ybOl8N65Fbr9fFZAyZSuufcc0eKdKSP4u0P6RNfO52izSUG9Ok8LoY+qxnMzsfl
	x6aWc+PdXWE+Tv4HzWDq8KcYNVJX5oj0SquEMZIHYqaNZzI7IvS7uxErFtWddsDiDmG9qPhp9JGUQ
	nTgSSbVcZSjW6HWtK+v4BYxEYzZOTVRrdDEcVGCEbSLsEJ6MfojFCCTi838q6w1r70U/ST83+V2IO
	e1DxI199x8RbHzIahRstY0yqCojbK52W/BVBN4NN3n7Je3NLK3zzO4qw3VhBdTbXztweANnZl84rQ
	1kIbYSOzQ/aiU+1YBA8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc3A3-006xIt-6z; Sat, 24 Sep 2022 11:17:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc3A0-006xHN-Sm
	for linux-rockchip@lists.infradead.org; Sat, 24 Sep 2022 11:17:30 +0000
Received: from p508fdd76.dip0.t-ipconnect.de ([80.143.221.118] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oc39r-0007rw-Cl; Sat, 24 Sep 2022 13:17:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.1 #1
Date: Sat, 24 Sep 2022 13:17:18 +0200
Message-ID: <6719652.G0QQBjFxQf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_041728_961447_BF9C1038 
X-CRM114-Status: GOOD (  10.62  )
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

Hi Mike, Stephen,

please find below a pull-request with some Rockchip stuff.

Mainly the support for the clock-controller for the rv1126,
another yaml conversion and relicensing the bindings to
gpl2+MIT following DT guidelines.

Please pull.

Thanks
Heiko


The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:

  Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-clock1

for you to fetch changes up to fffa0fa4d029c10406d417dd33f630bee4b12c02:

  dt-bindings: clock: rockchip: change SPDX-License-Identifier (2022-09-23 20:48:01 +0200)

----------------------------------------------------------------
A mux-variant clock using the table variant to select parents, clock
controller for the rv1126 soc, conversion of rk3128 to yaml and relicensing
of the yaml bindings to gpl2+MIT (following dt-binding guildelines)

----------------------------------------------------------------
Elaine Zhang (1):
      clk: rockchip: Add MUXTBL variant

Heiko Stuebner (1):
      Merge branch 'v6.1-shared/clkids' into v6.1-clock/next

Jagan Teki (3):
      clk: rockchip: Add dt-binding header for RV1126
      dt-bindings: clock: rockchip: Document RV1126 CRU
      clk: rockchip: Add clock controller support for RV1126 SoC

Johan Jonker (2):
      dt-bindings: clock: convert rockchip,rk3128-cru.txt to YAML
      dt-bindings: clock: rockchip: change SPDX-License-Identifier

 .../bindings/clock/rockchip,px30-cru.yaml          |    2 +-
 .../bindings/clock/rockchip,rk3036-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rk3128-cru.txt         |   58 -
 .../bindings/clock/rockchip,rk3128-cru.yaml        |   76 ++
 .../bindings/clock/rockchip,rk3228-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rk3288-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rk3308-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rk3368-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rk3399-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rv1108-cru.yaml        |    2 +-
 .../bindings/clock/rockchip,rv1126-cru.yaml        |   62 ++
 drivers/clk/rockchip/Kconfig                       |    7 +
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-rv1126.c                  | 1138 ++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |   27 +-
 drivers/clk/rockchip/clk.h                         |   36 +
 include/dt-bindings/clock/rockchip,rv1126-cru.h    |  632 +++++++++++
 17 files changed, 1981 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
