Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CBCCC5478C
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Mar 2024 12:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mY1jynd+PM6pQ4fawy0s1SDbHe5eQwGO3Y5CAUZUif0=; b=XU6e9rL2WBT94p
	/ML4bBLrIvQMi53+N2mtkqIuj1W1f5lE6scVPEu/IwPobYRUzjZcFuT9JOzc3xwMXeehbkPObMXJq
	660LRmkd8WT2GFtvleNvlYvDBOqLO5l1m+GqqMTK42ZQkcDKPBAsqr47iIcFg39ohjlNTrW1ZBQod
	fN3PE3JcWpiqN8Xt3B9IVrgG+01MyREif9SafSf7J308FJRx7rG886Xk5zVfpHZYUggQSNAvGk9Nw
	t1ack1xS0mVNTq9e/N7MC5enw9ibPdEqgHJRF77s/fCEL/BedgrQUj2XZZ78keSqc142QHay3wzsF
	69FKudIqIJPUOH13SKVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOId-00000003Uwz-1MFb;
	Sat, 02 Mar 2024 12:17:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgOIb-00000003Uw3-24sy;
	Sat, 02 Mar 2024 12:17:06 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rgOIa-0005Ih-9D; Sat, 02 Mar 2024 13:17:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.9 #2
Date: Sat, 02 Mar 2024 13:17:03 +0100
Message-ID: <3258282.tdWV9SEqCh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240302_041705_588420_8EC47CF9 
X-CRM114-Status: UNSURE (   7.46  )
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

The following changes since commit 15a5ed03000cf61daf87d14628085cb1bc8ae72c:

  ARM: dts: rockchip: fix rk322x hdmi ports node (2024-02-13 20:22:34 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-dts32-2

for you to fetch changes up to 391f46c775fa2108952c8f9a88b5bea2c3c74d1d:

  ARM: dts: rockchip: Wifi improvements for Sonoff iHost (2024-02-28 00:00:55 +0100)

----------------------------------------------------------------
Small Sonoff iHost improvements (wifi and mmc aliases)

----------------------------------------------------------------
Tim Lunn (2):
      ARM: dts: rockchip: mmc aliases for Sonoff iHost
      ARM: dts: rockchip: Wifi improvements for Sonoff iHost

 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
