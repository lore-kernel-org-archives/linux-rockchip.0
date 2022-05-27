Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2635DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 18:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gvIdWpxYrkNnJzXmNYtRT3h5CK4KBjcNOR8XU+p4DIQ=; b=02fAqwT8MSLsGA
	3qHhG3o9S4IQecUiFR3TRvK1HH5jyyYDGqteRtGlPBDfOwTdow89EwNglgV9kjvDWBJio9O9g0z5E
	jNngntR4UxxMyWytbi4XxJv0UGIhuQCoVvgaDBGgqoYlC83EtBN0J2xfqZBGw5J4b4XkcNT71OWJX
	w0fx0Jh2Zhh2Ng/QMR4ZE2SPtXKUUhAyNbfUNOqJZzrwmhkqHMwdYMVxD2JzGePTyl3fUKIQaBi6/
	rEohfQb/PtDaV/ATBjkeU4YacIokVmh4LCKe3HBmcX6O/7G2Q+3dOYRTBq4klbUA5RjINfRea4l8M
	nCUM6vBZVnABoVqPVzcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuedK-000ixI-EY; Fri, 27 May 2022 18:24:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuedI-000iwU-MM; Fri, 27 May 2022 18:24:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nuedE-0005CZ-6Z; Fri, 27 May 2022 20:24:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL v2] Rockchip driver changes for 5.19 #2
Date: Fri, 27 May 2022 20:24:15 +0200
Message-ID: <4541398.Icojqenx9y@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_112420_772316_C250CD3D 
X-CRM114-Status: UNSURE (   8.20  )
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

Hi Arnd, Kevin, Olof,

as discussed with Arnd on IRC today, I was slightly too fast in removing
the tags I deemed to not make it into 5.19-rc1 anymore.

So here again are re-created tags for the fixes-parts of the previous
pull requests.

(drivers, dts32 and dts64)

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
