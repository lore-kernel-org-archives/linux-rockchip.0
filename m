Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FAFE7719A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 23:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLOnpKX/KtW9ZVsSTUEWkCVun6EyKqXuSlnAO97zs18=; b=Vl7qWloaH0BmWG
	e3K9gRYPQmnK3N0Ym3V/yTNM6x2xNNiuLdtiav8wv1fdE4P7eIxaKd/Si332lZPkLlDkKf5q1tgWP
	fwXBuIxA9D9P3QnrhWlecZ6OsJR0YYn6BqgM+o8u3tIfUSwmYjoSwLRTXr87S+I8fpPeTXRrsSny4
	vWhojdixuKopRHDHbgBWXRYbsTvVAsn6rhoHql4QkMXK4GrPsLyHitU6sy0Ue01heTCRlLA+JA9Ic
	DRBtaKDWMaVITmAFqWlja1WUOStTHGoYxHk0/gFMZZoXCEh+QCgA+2eMKIrZsIYUWnIeElEqKUMdO
	4E47eldr2WcF7wrEmFUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW29D-0000000DZxo-2rCm;
	Thu, 09 Jan 2025 23:41:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW29B-0000000DZxJ-1vf5;
	Thu, 09 Jan 2025 23:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CCwkpfXDoQaZgZ8Xc4UlCtB7f0UuyMqkC2zDaBf0+/8=; b=lLLHsxoM89bgqclLNxeeIxMlOc
	RwoYePVicTBFPlb2nT3YmPYkrEJqFQbjs9aei760XewYqXQvGjvzPp4hmWQNdLDOQAeYMfv6DB/hJ
	5Fu0o04u9WfbZZE+BX+QyTvpkLANiXC32WyWEvJmbZJhdC3CNITRor/BD22YrboYcxUvmHDAFEsjY
	wwW5R6PKKpzwfMoSZlIQzgm95QqlSWdH9hdN03U0IYWhnPf3HbgoJbQ5gzGrP2dH4Hi541gyXmPYc
	cLvms1n6PhPsG+xaHA1XqbEWARuF6GvjMEyO9Uv7wN7yq+MrxmwMteeTSf13JyrBZJCGZxoy5ml5U
	ALFn0F1Q==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tW29A-00065u-1D; Fri, 10 Jan 2025 00:41:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.13
Date: Fri, 10 Jan 2025 00:41:03 +0100
Message-ID: <2914560.yaVYbkx8dN@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_154105_499998_F1BA7022 
X-CRM114-Status: GOOD (  11.84  )
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

please find a below some small fixes for the current release 6.13
cycle.

Please pull

Thanks
Heiko


The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.13-rockchip-dtsfixes1

for you to fetch changes up to 3699f2c43ea9984e00d70463f8c29baaf260ea97:

  arm64: dts: rockchip: add hevc power domain clock to rk3328 (2025-01-09 16:22:49 +0100)

----------------------------------------------------------------
Fixed card-detect on one board and some missing properties added.

----------------------------------------------------------------
Anton Kirilov (1):
      arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S

Chukun Pan (1):
      arm64: dts: rockchip: add reset-names for combphy on rk3568

FUKAUMI Naoki (1):
      arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B

Peter Geis (1):
      arm64: dts: rockchip: add hevc power domain clock to rk3328

 arch/arm64/boot/dts/rockchip/rk3328.dtsi            | 1 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi            | 1 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi       | 2 ++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 1 +
 5 files changed, 6 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
