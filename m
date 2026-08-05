Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A9D0C55ABA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 17:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAGbkD64goDIVijtZLW7paT/dajKuhgG3YuXruaicsE=; b=KV8eK7MCsaibKi
	01JiB/MxnXO6q2VBwLgMjigYqzKhwkKaalvGpOxdKynSv89130FQU8sT1zgYwoDZwsWpMnbJdj9ll
	zJLURF4n+JiVzUQskjmJY4MNY53+O78cuI+rVNUcO1TZjRfBOaEqwL3zf7ROrW0q4bQPhkQ9MHgaJ
	KgdGqXbp++MBpQeDC1nzWImx2Q0c/ZP1h3bfcUrbityrz22Sq3pCn93BZZPoyg80R3W/64C2nc8J6
	5rf6xVF0GBehJVHAa7brfl1GNL8gHkr0uKd8cmkJCZCGxTEXqXUjzLkIoORI3dB8whNHWqXFueqnM
	dKonPTNByJWeYz9z/zBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrfeN-00000004LiI-2gNZ;
	Wed, 05 Aug 2026 17:43:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrfeL-00000004Lhu-39LB;
	Wed, 05 Aug 2026 17:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=ig4HxOQjnpmoynEQayIeEsifMuFOLWzyqUkLO0olbbc=; b=O1doOVf/XA7nC1K1o+6KDQQwQC
	VAHI5m6Sb6Av7G3Q4Ah0sLDemgPfsD+CVZAeFwOGN2sVazwKU03TUHHqe8adWZztVlT/70F1RDnSo
	nMvkrdT2s4sNye184r1qc/GeM/OcwU/XJ+yu28FG9LHFG4Y6RguDUilQ9gGscEa/fSI4afhzh8Amy
	wrwCBL6Ph2nREed/kgfmnWGHXK9uzAE7e7/OaKk1mJF37wu3FVXPrIVp7cXCwckRCZJ0w60DRBOYX
	624mSnt3ikmWSsVf+ni/zQtmWRGeboTbd1BBQUYOATa1GHF4i/rksPuhikMrH7GjtTnUIbsQYznR9
	rXD5WuQA==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 7.3 #2
Date: Wed, 05 Aug 2026 19:43:26 +0200
Message-ID: <6604532.5fSG56mABF@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_104329_818764_BEF18783 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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

Hi soc maintainers,

One lonely patch with whitespace fixes below, and there is nothing
more for the arm32 side pending for 7.3. So that should be end for
this part.


Please pull.
Thanks
Heiko


The following changes since commit 44045aa7a9a9e6484617f44f77a3efb2d8e78565:

  ARM: dts: rockchip: Add Alientek DLRV1126 (2026-07-12 22:03:41 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.3-rockchip-dts32-2

for you to fetch changes up to 1a17f391c139567e2fac6894c6b43f5978e915c8:

  ARM: dts: rockchip: Correct white-space style (2026-08-02 20:26:21 +0200)

----------------------------------------------------------------
Whitespace fixes

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      ARM: dts: rockchip: Correct white-space style

 arch/arm/boot/dts/rockchip/rk3188-radxarock.dts            | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-evb-act8846.dts          | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-evb.dtsi                 | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-firefly-reload-core.dtsi | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-firefly.dtsi             | 2 +-
 arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts          | 2 +-
 arch/arm/boot/dts/rockchip/rv1126.dtsi                     | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
