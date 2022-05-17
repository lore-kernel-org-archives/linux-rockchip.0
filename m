Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96167C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N66wJ2iLW4S9M4BTv4txRvR1KgumzkRZgzZYImrzvEk=; b=wjHuy/ujYmuenA
	ODOhkDAV8m1AO4O2ZshMNQN1VfOcxfk3OgEc9FofT6oql+CfCiZJs5Kvd7h1c5al6P4HDfWZ9fsm+
	URyF0jZ0Z1awd/7c/4QGIJYZ9N5y3+JcYJJRCfJx2H14Dw0RuiHF9cxcG8NhQW6jG/407vMRF6Ngg
	NC2vXIQ5Ig3fQYTAFFKOKULu11U79C114eIzWTLFN+uvZWf+kNKUSgm4dsHuy+X/CdP/He8R3BAf4
	+9agvW6B8rtOR6gF2eKsi+YAjJ/fPSTmbgIifRJVU06iBUUWeWkD1FQBDRjMew77v2ehS1XO1tEpc
	iEV3QkxU1pX4bsgbbtYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2oz-00FbR0-A1; Tue, 17 May 2022 19:25:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2ow-00FbQR-Dm
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 19:25:27 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2oq-0004AJ-Nv; Tue, 17 May 2022 21:25:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.19
Date: Tue, 17 May 2022 21:25:19 +0200
Message-ID: <8148508.MhkbZ0Pkbq@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_122526_512399_53E6A5A6 
X-CRM114-Status: UNSURE (   8.70  )
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

Hi Mike, Stephen,

please find below some Rockchip clock changes for 5.19.

I've split out the conversion from txt to yaml into a separate tag
which'll follow shortly.

Please pull, thanks
Heiko

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-clk1

for you to fetch changes up to b21445db9818ccb9fa1c0ba81fd3705eb8d347e3:

  dt-binding: clock: Add missing rk3568 cru bindings (2022-05-14 12:40:41 +0200)

----------------------------------------------------------------
Some fixes for recent yaml conversion of clock bindinds
and making the hclk_vo critical for rk3568.

----------------------------------------------------------------
Johan Jonker (4):
      dt-bindings: clock: fix some conversion style issues for rockchip,rk3399-cru.yaml
      dt-bindings: clock: replace a maintainer for rockchip,rk3399-cru.yaml
      dt-bindings: clock: use generic node name for pmucru example in rockchip,rk3399-cru.yaml
      dt-bindings: clock: fix rk3399 cru clock issues

Peter Geis (1):
      dt-binding: clock: Add missing rk3568 cru bindings

Sascha Hauer (1):
      clk: rockchip: Mark hclk_vo as critical on rk3568

 .../bindings/clock/rockchip,rk3399-cru.yaml        | 33 ++++++++--------------
 .../bindings/clock/rockchip,rk3568-cru.yaml        | 13 +++++++++
 drivers/clk/rockchip/clk-rk3568.c                  |  1 +
 3 files changed, 26 insertions(+), 21 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
