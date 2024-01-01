Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F92FC4706F
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jan 2024 22:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6d7/hExw/zKoSrjjPN3tyb9h8xMVjDQz+MzxLZST8Kk=; b=c2h0CXvvE+2KtQ
	BWtAOHaDCbfQuvOYyL/4L5oRHAWxQ9GuWCqGK3xv+0v3b6w4xiv5UloAkUFJMuqTUa+66RKp3CK8O
	QUNIZmb6TwXpmZfJhAukaJDJn8dYMR6MJekkJF/Kdus//iaa+9LF6zwiHbXCgZFTohWAXjL716eZK
	dqD90aRHcD1gOgscdO5bd37+obdfCJyKtQlyxAb+C/0/SjSJ4Fp9DAUT8nCh7tC6SoHvW317sxjjK
	kRcjqF64FaGccvLGUQVYbPhVIjmkbBxmI5fT8RM29JyvUo8To2xtKo+q+xMnapr9ferHD6GipomkD
	Cq2tVwd94Q74nzXCwUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKRBj-006nUN-2z;
	Mon, 01 Jan 2024 22:55:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKRBi-006nTj-17;
	Mon, 01 Jan 2024 22:55:15 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rKRBh-0007Xj-3q; Mon, 01 Jan 2024 23:55:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.8 #2
Date: Mon, 01 Jan 2024 23:55:12 +0100
Message-ID: <15502825.JCcGWNJJiE@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_145514_388037_5AD03978 
X-CRM114-Status: GOOD (  10.74  )
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

The following changes since commit 569b26af7919c15a8ce231b4fae29cfbd811f144:

  ARM: dts: rockchip: add hdmi-connector node to rk3036-kylin (2023-12-12 20:38:36 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.8-rockchip-dts32-2

for you to fetch changes up to bb0b255fb6f14b1620566d7d32c43adaca09c5e5:

  ARM: dts: rockchip: Remove rockchip,default-sample-phase from rk3036.dtsi (2023-12-24 19:49:38 +0100)

----------------------------------------------------------------
RK3036 fix for emmc init issue and stdout-path for the console
on rk3036 kylin.

----------------------------------------------------------------
Andy Yan (2):
      ARM: dts: rockchip: Add stdout-path for rk3036 kylin
      ARM: dts: rockchip: Remove rockchip,default-sample-phase from rk3036.dtsi

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++++
 arch/arm/boot/dts/rockchip/rk3036.dtsi      | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
