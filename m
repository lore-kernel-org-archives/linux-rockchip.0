Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA83AC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 01:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YU9KBSG+npwrhqyXPMYXwswo+5Zvg/pPzUSMjLg27kQ=; b=gQdzGRfkaPvCnM
	LCkIne5qQ5FZlsV5E/xW7dL055idG2b8O/CkWh2ogiGiZMQTbio2I5fw4RsgXgGpQkwTNdzdGgKy2
	6qTvO+UMmIWQHwRQZzQJe9kyNG8lRmxeGKqHKKOf5OPB6Ul9SuGXZpa1rVnzpPfxT7811qscbio4W
	M1apdsM19tiZQid5tbCd+ypne3Z6RKYusLCL7BqO/Yv0K7rnqroiwO0/srQQjkv5Kn4PjdLRYcI3l
	RJUvLqyN3Nsld8GOg01yUbWPcSFzCaZ6zY5qRsLw29NGa0LpIAIWGwYAJV/DS54tnhVSySaG/Mo9e
	qB3bzWUnLIbYRTbIoang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWpBu-004hhy-3G; Sat, 10 Sep 2022 01:21:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWpBq-004hg8-N1; Sat, 10 Sep 2022 01:21:47 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWpBp-00019N-7l; Sat, 10 Sep 2022 03:21:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.1 #1
Date: Sat, 10 Sep 2022 03:21:44 +0200
Message-ID: <4766760.31r3eYUQgx@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_182146_773451_909781FF 
X-CRM114-Status: UNSURE (   7.25  )
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

The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:

  Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-dts32-1

for you to fetch changes up to 1dabb74971b38d966ecef566bafddc4a34f4db9d:

  ARM: dts: rockchip: restyle emac nodes (2022-09-10 00:58:36 +0200)

----------------------------------------------------------------
Adapt emac nodes to make them conform to the newly yaml-converted binding.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: fix rk3036 emac node compatible string
      ARM: dts: rockchip: restyle emac nodes

 arch/arm/boot/dts/rk3036-evb.dts        | 16 ++++++++++------
 arch/arm/boot/dts/rk3036-kylin.dts      | 16 ++++++++++------
 arch/arm/boot/dts/rk3036.dtsi           |  4 +---
 arch/arm/boot/dts/rk3066a-marsboard.dts | 17 ++++++++++-------
 arch/arm/boot/dts/rk3066a-rayeager.dts  | 15 ++++++++++-----
 arch/arm/boot/dts/rk3188-radxarock.dts  | 19 +++++++++++--------
 arch/arm/boot/dts/rk3xxx.dtsi           |  2 --
 7 files changed, 52 insertions(+), 37 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
