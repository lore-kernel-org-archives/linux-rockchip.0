Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C61DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 23:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xpyLXJL/TjTbhmJ/+xBUfuovw6pFH5NjYw2LAFKk5YE=; b=iCeUgTM5zQEz4s
	hjlykdoRL+kHB4MVUehrJDI0TQ1ILsXK1LJTLRVNChebo0FZXD/ObJispZKFU1IK1mUAMnApOOet2
	oTTfv32+cCRXgNG2R6weGyvqnGN9C53hyXz4bEXtWy4TW4UWvojhAQ1lYM5pvFZCFK2GhYnVVYLT3
	h+zs/HU+TNViWol8Y0PBs40DB7iCMt+B38BAWYl9QzPSB13dCwdHHLoxXNHpeisu7Uu4uanY8bO06
	6kMJ22VyMx7YyKNrUjGeACfsuSddj68UBxIcM7Vgtxlf8plpKq6q3ZeZvKIDnPt9mk7GTDAV5m/GO
	hkPuWKg+KY/dDidOxJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1novym-0095nO-TJ; Wed, 11 May 2022 23:42:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1novyl-0095mJ-7O; Wed, 11 May 2022 23:42:52 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1novyj-0006U5-Oe; Thu, 12 May 2022 01:42:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 5.19 #1
Date: Thu, 12 May 2022 01:42:48 +0200
Message-ID: <3998951.tdWV9SEqCh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_164251_310997_DADFCB6C 
X-CRM114-Status: UNSURE (   8.51  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-drivers1

for you to fetch changes up to add9f6f30e54b5c07e7a0260cda459ef1d9646b7:

  soc: rockchip: Fix compile-testing SoC drivers (2022-04-30 15:06:14 +0200)

----------------------------------------------------------------
Powerdomain fixes and improvements, some GRF compatible properties
and a rk3566 GRF clocksource default setup.

----------------------------------------------------------------
Brian Norris (3):
      soc: rockchip: Clean up Kconfig whitespace
      soc: rockchip: power-domain: Replace dsb() with smb()
      soc: rockchip: Fix compile-testing SoC drivers

Johan Jonker (1):
      dt-bindings: soc: rockchip: add naneng combo phy register compatible

Peter Geis (2):
      dt-bindings: soc: rockchip: add rk3566-pipe-grf compatible
      soc: rockchip: set dwc3 clock for rk3566

Sebastian Fricke (1):
      soc: rockchip: pm_domains: Fix typo in comment

 .../devicetree/bindings/soc/rockchip/grf.yaml      |  3 +++
 drivers/soc/Makefile                               |  2 +-
 drivers/soc/rockchip/Kconfig                       | 24 +++++++++++-----------
 drivers/soc/rockchip/grf.c                         | 17 +++++++++++++++
 drivers/soc/rockchip/pm_domains.c                  | 10 ++++-----
 5 files changed, 38 insertions(+), 18 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
