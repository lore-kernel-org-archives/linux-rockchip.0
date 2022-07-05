Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA94C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 11:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMxo47DGfTL/u9gJnZE6GMTqF3rwngASpWfSRjSlF+I=; b=c/KDeO5TvQsAp5
	zCLyonjLeZ4ZkEVh8gc482PnsiHSJl9Wvf/yQN9KjDnxHigMa8jMlNOoSySVfTYZcABwgq0vaDdL3
	aQVB6BQxfAwbouJZWQK/NhD4GR78CyvMGMl9pbTCeYJiwNVWeCLiT2+qTLZUkb7X+TyCWxkHZH0mh
	NdgIWLbx5hR2ODQKpTPVMqjNpE4w9D9QC5Sn5/y1tYAPuYixd7u1KFoT67ikNEkWAGAFO7vpruytT
	wWkcJfpwXvGXQHWJq2AvEddY9cPq0+FGSYwuRNU83kD4ELqkPNUwJ+Qxnpgi5o1s/hTkIqt0bI/nX
	RDZpX11S5TZ8j/KDFD3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gQy-00HLHA-Qi; Tue, 05 Jul 2022 11:09:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gQw-00HLG9-5z; Tue, 05 Jul 2022 11:09:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o8gQu-0000Ba-Se; Tue, 05 Jul 2022 13:09:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip soc fixes for 5.19
Date: Tue, 05 Jul 2022 13:09:30 +0200
Message-ID: <7527945.6fTUFtlzNn@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_040934_264322_8F3B3820 
X-CRM114-Status: UNSURE (   6.72  )
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

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-socfixes1

for you to fetch changes up to f4470dbfb5ff92804650bc71d115c3f150d430f6:

  ARM: rockchip: Add missing of_node_put() in rockchip_suspend_init() (2022-06-17 19:05:51 +0200)

----------------------------------------------------------------
Add a missing of_node_put in suspend code error path.

----------------------------------------------------------------
Liang He (1):
      ARM: rockchip: Add missing of_node_put() in rockchip_suspend_init()

 arch/arm/mach-rockchip/pm.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
