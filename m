Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B21EC27C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Aug 2023 22:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rAS9leWst2z3oxlCZ1cMwJSUVkftxu7ERYsaljNYOPQ=; b=uTJtWGjcwsbZ+D
	staNIBhc23VTA//QBAl3p8p2TAFwYqGj1/OXBQ1qbdlKC4MufQwGSiwOklJy60umipQwvnI63G5gg
	wFO+e5iu3dDqhiQTbyYwfe2B9nmLOdGQxa+zs1BxTe9X0ietWF4hKAYAHNNYhqMid9cLxO5DNZ/hN
	05J7X2HBHfugCspBJnVptFrc7j4HycAdZ1tD91SbrfqFxxBwRNrYuEBs5md9zRR31LDGn4jHlasYL
	qdBOn6PbijpSgoxtcO8S4bITwe+cMpAlHNoYYWtWdH6Ol2tR+VP1Pgt8BgSjOS/5UJyLiVWrSQ9Nl
	8BUx0ZeHEQtM18PD8G0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOdI-0054rw-0B;
	Wed, 16 Aug 2023 22:04:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOdF-0054rM-2l;
	Wed, 16 Aug 2023 22:04:51 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qWOdE-0007bt-Hw; Thu, 17 Aug 2023 00:04:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip arm64 defconfig changes for 6.6 #1
Date: Thu, 17 Aug 2023 00:04:47 +0200
Message-ID: <5353918.Isy0gbHreE@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_150449_891990_D7AB9918 
X-CRM114-Status: UNSURE (   8.15  )
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

The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.6-rockchip-defconfig64-1

for you to fetch changes up to 5eaeb85ccae878e5800a207da7baeb5d9d1dd2fd:

  arm64: defconfig: Enable drivers for the Odroid-M1 board (2023-07-28 21:40:15 +0200)

----------------------------------------------------------------
Enable some options needed for Rockchip boards in the main defconfig.

----------------------------------------------------------------
Cristian Ciocaltea (1):
      arm64: defconfig: Enable Rockchip OTP memory driver

Jagan Teki (2):
      arm64: defconfig: Enable PHY_ROCKCHIP_NANENG_COMBO_PHY
      arm64: defconfig: Enable GPIO_SYSCON

Marek Szyprowski (1):
      arm64: defconfig: Enable drivers for the Odroid-M1 board

 arch/arm64/configs/defconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
