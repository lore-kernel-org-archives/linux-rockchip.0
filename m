Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0842C77B61
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Apr 2023 10:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kFOnlJURMf+JUdluchLnRkBtDQYhl0mvmWdaE5Y36R8=; b=bagQHNqZM9NXOq
	2RswtQsw88Zc7ujI6WaKjd8JnrMFuVtTymA7WO/ZxzVoAFqWqXd3ylGk8ymQMYtgpFhYG61SMr2KP
	sgFSvMOa9LvGtD4pSyOvUPO++y/vo881YeI0GiI2Uc6DF2z1lLzT5EAA7wofaOIP5J3RZTqagUZMA
	CCe5Wjam/xjOyuwG5UAj8eZM9C0i4tFB1pxeF+bU7kphgAOer4Trg5ItLzoV8jSv5bSFGxsxlHpBm
	EYs3xDuPiStIJ+JIJ/PB7jPckqkNXpgBT0sKMnDNthDYVTv4ytwrEk2gacLmSSd4mtQSlrzjrIUuQ
	UyCtJGdduRWb9/4OB1hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plSMK-00DPof-27;
	Sun, 09 Apr 2023 10:33:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plSMF-00DPns-0F;
	Sun, 09 Apr 2023 10:33:19 +0000
Received: from p57b77242.dip0.t-ipconnect.de ([87.183.114.66] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1plSMD-0001Kj-Pf; Sun, 09 Apr 2023 12:33:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.4 #1
Date: Sun, 09 Apr 2023 12:33:12 +0200
Message-ID: <9713202.NyiUUSuA9g@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230409_033315_111731_E95BB0DF 
X-CRM114-Status: UNSURE (   8.47  )
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

The following changes since commit fe15c26ee26efa11741a7b632e9f23b01aca4cc6:

  Linux 6.3-rc1 (2023-03-05 14:52:03 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.4-rockchip-dts32-1

for you to fetch changes up to 95e2ac6ae9f2330557a6aef70bf15173e1dd9714:

  ARM: dts: rockchip: fix rk3288 dp node (2023-03-23 00:38:11 +0100)

----------------------------------------------------------------
MMC-aliases for rk3288-veyron devices and some dts node adaptions
for yaml conversions recently merged into the drm tree.

----------------------------------------------------------------
Heiko Stuebner (1):
      ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices

Johan Jonker (3):
      ARM: dts: rockchip: fix rk3288 dsi node
      ARM: dts: rockchip: fix rk3288 lvds node
      ARM: dts: rockchip: fix rk3288 dp node

 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi |  6 ++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi       |  4 ++++
 arch/arm/boot/dts/rk3288.dtsi              | 27 ++++++++++++++++++++++++---
 3 files changed, 34 insertions(+), 3 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
