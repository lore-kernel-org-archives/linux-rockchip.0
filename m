Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47414C27C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Aug 2023 22:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gWZTHPQV/Ti9XkG9J3wfhu84P8bVw45mMaLdF48YhEw=; b=35Ybq4D45SCv65
	SGEYIxph3aR+xAEiDxZ5LnBe1AqJqVmYGlFZJJ/HSAE+V8qnIuSOejqofMsVewSBeDsFS/1CJqkOJ
	wmJ/06OAGQN40Sz2mpGqwTafx1YFSu68eThMn8//B4ejI84ZzqZ8QmOFVl8OqW5BKXa8tUQbvu0b2
	tHVZKhPogxEuOixvgub59CBmrCiTKg32GnZCoqnOVMc01fM2MjQLmJ+2wcMHm5/zu7ZfpqORjoIW+
	bwfmEaLGiqnpqBhd/wZ042eZzDlDmuANBPdNfPqo9DjSoPyMypn4WeqgY3okVuKKuTyAAJW6OqX/+
	GcQ1qIlEK5nvlF69U0cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOeO-00552J-0h;
	Wed, 16 Aug 2023 22:06:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOeL-00551v-2i
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Aug 2023 22:05:58 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qWOeH-0007cQ-IZ; Thu, 17 Aug 2023 00:05:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.6 #1
Date: Thu, 17 Aug 2023 00:05:52 +0200
Message-ID: <8651570.alqRGMn8q6@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_150557_877507_740B93AE 
X-CRM114-Status: UNSURE (   7.44  )
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

please find below a pull-request with some small Rockchip stuff.

Please pull.

Thanks
Heiko


The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.6-rockchip-clk1

for you to fetch changes up to 5c7a71fd82350c2f5828a66a1f2f38306d61cbc7:

  clk: rockchip: rv1126: Add PD_VO clock tree (2023-08-10 23:14:06 +0200)

----------------------------------------------------------------
PLL rates for rk3568 and the display clock tree for rv1126 which wasn't
present before.
0#

----------------------------------------------------------------
Alibek Omarov (2):
      clk: rockchip: rk3568: Add PLL rate for 101MHz
      clk: rockchip: rk3568: Fix PLL rate setting for 78.75MHz

Jagan Teki (1):
      clk: rockchip: rv1126: Add PD_VO clock tree

 drivers/clk/rockchip/clk-rk3568.c |  3 +-
 drivers/clk/rockchip/clk-rv1126.c | 59 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
