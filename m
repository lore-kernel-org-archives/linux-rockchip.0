Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F94C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 20:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LOMi8lEbiKCGzAc3zlucNysnMYlo3aSD3cs+qih7Too=; b=zO6ZvxIOkIGulF
	FwpkkBiAaoxkpItrGNv9UsvDSXyXxTyw2gNYYhR8AdQRd7VKcVhrw3LRUVeoShg1st7TOV1PRjrig
	GrQIJ3WncuDd7sqDINWBa5zdG+IdNlh8nTZtSauR1C9lXOIv9noSpkV6F5SnJtDzh8G9o5d94FGy8
	1Vn3k4cKUC+QoMpq+G365/inbxujZQxcX5hm9SxkXoQB240CKey8yCfP+Gk1FSFF/QOGYdzhIR5CR
	fCBLZt6ldPV6a63VA3WVQl/9wVsCUb3MT8mmYOAIJ6yI6v7EyQXu4skchdrb6NyRqLQ2+rsMYbKn9
	8aHPus3ddlv+PnfmnewA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3i7K-00000005Baz-27O7;
	Sun, 05 May 2024 20:05:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3i7G-00000005BZu-2Fzp
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 20:05:47 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s3i79-0007rv-5O; Sun, 05 May 2024 22:05:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.10 #1
Date: Sun, 05 May 2024 22:05:38 +0200
Message-ID: <7502061.LvFx2qVVIh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_130546_615273_5286E246 
X-CRM114-Status: UNSURE (   9.27  )
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

Hi Mike, Stephen,

please find below a pull-request with some Rockchip clock changes for 6.10

Nothing really stands out, it's just some small changes.

Please pull.

Thanks
Heiko


The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-clk1

for you to fetch changes up to f513991b69885025995dcb4ca75d2ee7261e1273:

  clk: rockchip: rk3568: Add PLL rate for 724 MHz (2024-05-04 12:38:13 +0200)

----------------------------------------------------------------
A new PLL rate and missing mux on rk3568, a missing reset line on rk3588
and removal of an unused field.

----------------------------------------------------------------
Christophe JAILLET (1):
      clk: rockchip: Remove an unused field in struct rockchip_mmc_clock

David Jander (1):
      clk: rockchip: rk3568: Add missing USB480M_PHY mux

Heiko Stuebner (1):
      Merge branch 'v6.10-shared/clkids' into v6.10-clk/next

Lucas Stach (1):
      clk: rockchip: rk3568: Add PLL rate for 724 MHz

Sascha Hauer (1):
      dt-bindings: clock: rockchip: add USB480M_PHY mux

Shreeya Patel (2):
      dt-bindings: reset: Define reset id used for HDMI Receiver
      clk: rockchip: rk3588: Add reset line for HDMI Receiver

 drivers/clk/rockchip/clk-mmc-phase.c            | 1 -
 drivers/clk/rockchip/clk-rk3568.c               | 5 +++++
 drivers/clk/rockchip/rst-rk3588.c               | 1 +
 include/dt-bindings/clock/rk3568-cru.h          | 1 +
 include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
 5 files changed, 9 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
