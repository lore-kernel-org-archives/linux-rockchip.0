Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410B5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 18:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OTBuZFWUECOE5ijGhRmMQsBe7tBjzaB4xAO5AadzlW4=; b=DrMKkx59gt4Z+n
	9wveEifnPgkv7USMcGoqRh4eYAHhRNs97AMi9nHL3f91qqk7HAxY1HK75qm7qeXzXEFYF7/6D01vY
	ekh10dAjKUg2MoxH5DZG4lwgnXilwkJChydjQLkT+QF8TMopCvniq8wXM58YIgwQZ2Xqj5QcbpRso
	U5xDMYUjwD6Mt9pQNrK9CP1wMp6LhY50t9qliVvMRFKjR0ZHM6W3t7syivquF8Vx5Y1gfMky0Lqzz
	KYD4/gQBsQEyAPSUKDW1I/jPXWQckalEZ47tgq5mO9r5J/8zIrKsb2eORJkVw19naLa5ijnXqA+kf
	NtwC8Grv2fGR/x6p7DiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nueeG-000jCr-Ih; Fri, 27 May 2022 18:25:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nueeE-000jBv-Nk; Fri, 27 May 2022 18:25:19 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nueeD-0005DG-Kq; Fri, 27 May 2022 20:25:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL v2] Rockchip dts64 changes for 5.19 #2
Date: Fri, 27 May 2022 20:25:16 +0200
Message-ID: <7695907.Sb9uPGUboI@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_112518_816105_128D51DF 
X-CRM114-Status: UNSURE (   8.18  )
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

The following changes since commit bc405bb3eeee4b711830ab569e7f3811b92196ab:

  arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x (2022-05-11 06:09:55 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts64-2

for you to fetch changes up to cd414d5ac1fdeecf0617737e688a1af00858253a:

  arm64: dts: rockchip: rename Quartz64-A bluetooth gpios (2022-05-27 19:31:24 +0200)

----------------------------------------------------------------
Clock properties for cru nodes to match the yaml-converted bindings
and renaming of Quartz-A bluetooth pin nodename to not conflict with
Yaml constraints.

----------------------------------------------------------------
Johan Jonker (2):
      arm64: dts: rockchip: add clocks property to cru node rk3308
      arm64: dts: rockchip: add clocks property to cru node rk3368

Peter Geis (2):
      arm64: dts: rockchip: add clocks to rk356x cru
      arm64: dts: rockchip: rename Quartz64-A bluetooth gpios

 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           | 2 ++
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 ++
 4 files changed, 9 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
