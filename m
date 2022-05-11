Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F15BFC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 23:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2s1JXLwDMFvKuxIbzoeuF4WIMRzDexoifysMNr3PIc=; b=SAJkbKMNpzVAj5
	PpSWi6ZDUfyzBC4PlxAQTEn9EgMr0hAZ9UUSqcgDxy1vA6ntuUFZ1/tLNbL/riqKWBWX6fOo5hBep
	g5glx0U6im2Uk3qISVIEgNT/JIgntWjM2pS6JYdNModsuwPrnJXLyJsWfiGPUenedxo0xOWDudGO3
	xghGdFgMh2G+VwF6iDIWfQHdRLaAwN1tyR6lZY9lvPOtuievv/KEYo3WMe9NvdZSQ5H0ryuL7nnKh
	LqLqxIK0SxqCWX8Gxrkbkx3omailodUk+k8QkE9D/2Sq1z19Awz1DXzf1YCHaPYxSsIsPxHci2Ii7
	s++nYVm+ePxWo+D0r+vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1novxw-0095XF-9l; Wed, 11 May 2022 23:42:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1novxt-0095WR-W0; Wed, 11 May 2022 23:41:59 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1novxs-0006TL-Gs; Thu, 12 May 2022 01:41:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 5.19 #1
Date: Thu, 12 May 2022 01:41:55 +0200
Message-ID: <6919636.31r3eYUQgx@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_164158_077256_B3AC4CFA 
X-CRM114-Status: UNSURE (   9.09  )
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

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts32-1

for you to fetch changes up to 53070cfa8228bdc64148d1e8c76c9f97ed0dfd62:

  ARM: dts: rockchip: rename pcfg_pull_default node name on rk3036 (2022-04-11 02:16:33 +0200)

----------------------------------------------------------------
Naming and flag corrections.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: use generic node name for dma rk3036/rk322x
      ARM: dts: rockchip: rename pcfg_pull_default node name on rk3036

Krzysztof Kozlowski (1):
      ARM: dts: rockchip: correct interrupt flags on rk3188 boards

 arch/arm/boot/dts/rk3036.dtsi            | 4 ++--
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 3 ++-
 arch/arm/boot/dts/rk322x.dtsi            | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
