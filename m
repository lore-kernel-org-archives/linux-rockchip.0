Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16C34C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BfBfQvoti+QQsgn1WkvWfc0LDvbvKK55VV2o10/cB2k=; b=oAsm+J/6+pyc58
	JpycL2XyugZRNYxD++I1O1oJbYHAiKhWLkiv/ryE54mJ7W8s0gjsZu0yhfvEEGh8mL6gHu5Sxw7WF
	5mT5paXmjSUOM+kpYe/7huY5cijQvjPU9UYp3Z2jC9FrkORuQKgKRFhPx7B84Cq/+D3UedqLCJuEV
	uyYrn4z8yL0jDRQKyY+E0Qv2rsIXWmwSz+pR7TzxszT19gOnqq3qE2KTep0bdyx38YcEKpSHIBUKV
	rugpUB3gebI3ncOHtr66YXKzk6N1/S8h1YNJWlJ7ESA+FoKVTGXCvyN2TE0x+IJbRLrX+skjaL83q
	HKPjTXg3KzENHgdzlWcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2yO-00FcZB-F9; Tue, 17 May 2022 19:35:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2yL-00FcYU-RX; Tue, 17 May 2022 19:35:11 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2yK-0004D1-My; Tue, 17 May 2022 21:35:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 5.19 #2
Date: Tue, 17 May 2022 21:35:07 +0200
Message-ID: <6613768.ejJDZkT8p0@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_123509_936468_EBEC5CAD 
X-CRM114-Status: UNSURE (   9.91  )
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

Hi Arnd, Kevin, Olof,

some additional things turned up (fixes) or got ready since the first round
of pull requests for drivers and both flavors of devicetrees.

So depending on the schedule it would be nice to have them still in 5.19.
But if it's to late for some, that's also no problem and I would then simply
move them to 5.20.

All new tags (here + following mails) of course go on top of the
previous tags.

So if timing allow, please pull.

Thanks
Heiko


The following changes since commit add9f6f30e54b5c07e7a0260cda459ef1d9646b7:

  soc: rockchip: Fix compile-testing SoC drivers (2022-04-30 15:06:14 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-drivers2

for you to fetch changes up to 9b59588d8be91c96bfb0371e912ceb4f16315dbf:

  soc: rockchip: Fix refcount leak in rockchip_grf_init (2022-05-17 10:49:37 +0200)

----------------------------------------------------------------
Refcount leak for a used of-node in the grf-init.

----------------------------------------------------------------
Miaoqian Lin (1):
      soc: rockchip: Fix refcount leak in rockchip_grf_init

 drivers/soc/rockchip/grf.c | 2 ++
 1 file changed, 2 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
