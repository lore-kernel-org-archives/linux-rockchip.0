Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAA5C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tKMTfGIF9lYKIyOKx/me9a9rqWPui4KJC26x7ruLbk=; b=wzkOMOhvBIXL0Y
	BQ/JPR87hY3C+9wB/qeaaLtFAXJxfcdK3LwmNv9qDy8BGp2Tu291Ru/8ia6s/AOUTkkp1gh6Zb9Z6
	ZUPul10kpynC/3cMBOz43gbv4yVhBv4ll//2T2yq/JTmFgOGrfpnGFxEuPe7P1j7XRRDYtnoIP//1
	e766LATJVW6brmZ/Fsa/tFZZlgBoikbtbLGYtrCpUr3GPXncQnDqfLyQcEsPm6LuLovLPToRVAY3J
	cQfeHijmzL4/oaVioUWozDcdBbM4Kgd9T79HSxy8lKSoE1+H1+y2WzebZ+KVKwIbclZe505wVuEc5
	/LPBnU5yMKHiHS47ovkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLGg-00DseE-0Q;
	Thu, 07 Dec 2023 20:46:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLGd-00Dsdo-0R
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 20:46:44 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBLGY-000639-88; Thu, 07 Dec 2023 21:46:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock fixes for 6.7
Date: Thu, 07 Dec 2023 21:46:37 +0100
Message-ID: <5734430.DvuYhMxLoT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_124643_173984_6DD57D47 
X-CRM114-Status: UNSURE (   9.58  )
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

for a change, this time I have some fixes that would be really
good to have in the current 6.7 cycle.

Please pull.

Thanks
Heiko

The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:

  Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.7-rockchip-clkfixes1

for you to fetch changes up to 99fe9ee56bd2f7358f1bc72551c2f3a6bbddf80a:

  clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name (2023-11-28 10:30:59 +0100)

----------------------------------------------------------------
Fixes for a wrong clockname, a wrong clock-parent, a wrong clock-gate
and finally one new PLL rate for the rk3568 to fix display artifacts
on a handheld devices based on that soc.

----------------------------------------------------------------
Alex Bee (1):
      clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name

Chris Morgan (1):
      clk: rockchip: rk3568: Add PLL rate for 292.5MHz

Finley Xiao (1):
      clk: rockchip: rk3128: Fix aclk_peri_src's parent

Weihao Li (1):
      clk: rockchip: rk3128: Fix HCLK_OTG gate register

 drivers/clk/rockchip/clk-rk3128.c | 24 +++++++++---------------
 drivers/clk/rockchip/clk-rk3568.c |  1 +
 2 files changed, 10 insertions(+), 15 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
