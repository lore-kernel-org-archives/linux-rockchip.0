Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F484C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 13:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YJGq2J2CRr0z70PZu9tTVjt3fHOxmS9UsLr2qZqJKO4=; b=uawFOFJtamJdnH
	aWsIZXy1QNjzNwuk9S2llxRwd4dWb0wT4mQWXc2Az+SoQQJ+n4BKi9VODvcLujaUx15fdJmt1SdSu
	uXMTJJSCsgaXIhrh7dZeDYssnFreLJeNFihh9y3JSEsxwStQ1TRdYpXYTs14uC51KIWXz7nN9O0sU
	ax7MvdCWZic8xDfNWrEgrmqmzOQxML6evrPvkRViDT6jKl97qgi2RNCN0Zh8HxX3TlXqxS6TRRiH/
	1fAfVLYUlLLBwD5zQ/vkfCiMbkq04gfkJdLzGsnr61cjO46pIuW6031mJt5/nzBVvGfgiuOy2lGRH
	AFMUt3FG5+bi/aJg6OGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq98-00HMyj-Gf; Wed, 23 Nov 2022 13:50:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq96-00HMxX-Ok; Wed, 23 Nov 2022 13:50:37 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxq95-0008K2-CI; Wed, 23 Nov 2022 14:50:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.1 #2
Date: Wed, 23 Nov 2022 14:50:34 +0100
Message-ID: <9661382.T7Z3S40VBb@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_055036_827769_2D514C3A 
X-CRM114-Status: UNSURE (   7.98  )
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

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.2-rockchip-dts32-1

for you to fetch changes up to da74858a475782a3f16470907814c8cc5950ad68:

  ARM: dts: rockchip: disable arm_global_timer on rk3066 and rk3188 (2022-11-15 12:02:38 +0100)

----------------------------------------------------------------
Disabling of the unreliable arm-global-timer on earliest
Rockchip SoCs, due to its frequency being bound to the
changing cpu clock.

----------------------------------------------------------------
Johan Jonker (1):
      ARM: dts: rockchip: disable arm_global_timer on rk3066 and rk3188

 arch/arm/boot/dts/rk3188.dtsi | 1 -
 arch/arm/boot/dts/rk3xxx.dtsi | 7 +++++++
 2 files changed, 7 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
