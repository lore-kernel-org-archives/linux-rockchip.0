Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5092010706F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Mar 2026 18:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rU0HQXYl//620z0lywUZozYn3hQVH5sUGYHfM4s8Z1Q=; b=NNYx0Gnok77tiS
	3n6wzc/MscDhZVryWBe/wpGdXLPJu81rcgtex3Ne5k5NzAyKoN9jsclGDXReLJpH0S1iEA5PU7lF0
	CbrsEkQ5Uvdvf4ubMvvPnFVMLax/N9M5CsWhyNVms8Pk2X7ZiQF39dUPBjhfgKKoNF4KVLe7z8MKS
	hBKBJ1jkJ2ZBiI1NUFqrq05H6UNAX68H9B9g1k0IknB+hlgA0/qXOhok0EgUbC1HM/eCHVdLqJ0hD
	V3R5AZR0JzFEE7pQB9LyS5Rvh/O4pH2sp4ameHBnSfuOysqUKkuhohlAejGBIIAlLU/AZdR/8IZfv
	Zt7gTIfMMxw8ntKnGnXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1TvR-000000024yB-0Fs9;
	Sat, 14 Mar 2026 18:41:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1TvP-000000024xm-06Om;
	Sat, 14 Mar 2026 18:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=NJgmVqDKyi3M0P5AVrJpUB/6e5CaH26d3M8p3nfhSGg=; b=rqpLy3bfMnxLc4ptzdGEVOx4nS
	3cvmrPOIOQlYhskL7UMTdYondSwDoFwEUgSajZuUeouUBHVNI8qUIE6EtjeroAWaKaMJ4PZM2sQMt
	lih/cWVPxz+92Q55gURNigXMARCkU3EFGSin2A6JBlUW9Dux9Nue6jww7QtL2ZTkrah1njaRTsI1W
	kGwG1f3MZEwg1eeKgn9QSDPFIgniEP7WJRfOv/BpROMU6+NcGzoJhNmwrayYJBrtOe+2iDxrhL9AG
	lf7PgDE1Vz3NsHK1r+xPCCMr2/fQnq7rOFK2fRitltIUX26hc1T1kijIfQ1x0aeGGFTRNAe9IZs2J
	Xdz9442w==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver fixes for 7.0 #1
Date: Sat, 14 Mar 2026 19:41:19 +0100
Message-ID: <4719110.LvFx2qVVIh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_114123_092045_9AE7E455 
X-CRM114-Status: UNSURE (   5.45  )
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

The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.0-rockchip-drvfixes1

for you to fetch changes up to 24ed11ee5bacf9a9aca18fc6b47667c7f38d578b:

  soc: rockchip: grf: Add missing of_node_put() when returning (2026-02-22 23:27:20 +0100)

----------------------------------------------------------------
Fixing a missing of_node_put() call.

----------------------------------------------------------------
Shawn Lin (1):
      soc: rockchip: grf: Add missing of_node_put() when returning

 drivers/soc/rockchip/grf.c | 1 +
 1 file changed, 1 insertion(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
