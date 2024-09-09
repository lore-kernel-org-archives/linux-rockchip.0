Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23131ECE579
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 09:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y8QLv70NqAAz4vT94taVSw2ochoE4HDytLIjuUiLy5o=; b=kZ2nA4TKjXyBgF
	SH6InSuCxWNf3/UFWVZxHuIr/ZBOv95KwtN21k7EQUus2OUwZNDYcKQXVbTSxYNiB61lGKJVZE/29
	7Key3IDmD6qektGQQnTbVbYJhk38XIIMxNor0N3bxOXzK+/6DUVeIxSAsSLLe6HV+Hv2FkKNTuE+B
	wXROuhBlhr4eUYEkmzEDvL38pwGr029Iyj/3OcUkPLNv9uPAY9fauJgZszEwh+bfQ86MvbBkNkLUW
	E2tYkwfgsO3njuYmCyS9BFxBO1VroOI9hSXr3pCblc6K18DEn5kO+wTLB4zpXt6EgBq5JOrOwu//o
	FGecPNVOQy20qN3eflWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snabz-00000001Hxj-3dm9;
	Mon, 09 Sep 2024 09:23:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaaL-00000001HZt-23HF;
	Mon, 09 Sep 2024 09:21:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4BBA2A43184;
	Mon,  9 Sep 2024 09:21:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E32EC4CEC5;
	Mon,  9 Sep 2024 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725873684;
	bh=EN0rYz6GhfIyTI+7CtSvs0C+p/rAFAhcpRv46mV8xGg=;
	h=From:To:Cc:Subject:Date:From;
	b=Ynqs4s9i289Kjnz+D0c9Kzwx0R66UgrbNR2HM7qHCC5oRV9i805EeEMRdAb+7xmVB
	 4faMC9umuh6eSc9KPtO7zCUr9hOGXPnQHUdc0DQDMbRDOxk4tKcLtboAlgSL43UGJy
	 DLOFJcBdTRmtc7sjcbLfH9cuDkdz6Yz5i20Qc4r71XA8htOEpcS/7UANODsUydoypH
	 P7SWFWEm4kVLXdMGJYRk9/bm5PIrmIlbZy7uvch0N7xs/fIYPQBK/JuPvNKNEkMUyF
	 vLQLsFGjza47lSucx/cWzOKELJgL7X7aq2jNE3E+nvTU9SQGMMhvNujWj2zRYTrZJG
	 rzec96+/ZD/Ig==
From: Arnd Bergmann <arnd@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: Arnd Bergmann <arnd@arndb.de>,
	kernel@pengutronix.de,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] can: rockchip_canfd: avoids 64-bit division
Date: Mon,  9 Sep 2024 11:21:04 +0000
Message-Id: <20240909112119.249479-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_022125_613953_4565A1A9 
X-CRM114-Status: GOOD (  11.35  )
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

From: Arnd Bergmann <arnd@arndb.de>

The new driver fails to build on some 32-bit configurations:

arm-linux-gnueabi-ld: drivers/net/can/rockchip/rockchip_canfd-timestamp.o: in function `rkcanfd_timestamp_init':
rockchip_canfd-timestamp.c:(.text+0x14a): undefined reference to `__aeabi_ldivmod'

Rework the delay calculation to only require a single 64-bit
division.

Fixes: 4e1a18bab124 ("can: rockchip_canfd: add hardware timestamping support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
index 81cccc5fd838..43d4b5721812 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
@@ -71,8 +71,8 @@ void rkcanfd_timestamp_init(struct rkcanfd_priv *priv)
 
 	max_cycles = div_u64(ULLONG_MAX, cc->mult);
 	max_cycles = min(max_cycles, cc->mask);
-	work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift) / 3;
-	priv->work_delay_jiffies = nsecs_to_jiffies(work_delay_ns);
+	work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift);
+	priv->work_delay_jiffies = div_u64(work_delay_ns, 3u * NSEC_PER_SEC / HZ);
 	INIT_DELAYED_WORK(&priv->timestamp, rkcanfd_timestamp_work);
 
 	netdev_dbg(priv->ndev, "clock=%lu.%02luMHz bitrate=%lu.%02luMBit/s div=%u rate=%lu.%02luMHz mult=%u shift=%u delay=%lus\n",
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
