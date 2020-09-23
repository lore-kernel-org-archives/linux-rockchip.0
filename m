Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7824DC4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:18:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DD9B2311A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:18:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dhPRzgzW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DD9B2311A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mbNpQO1GkLFQLIYBdVVkKy4wgY93K9c0yD5rpZXgqQw=; b=dhPRzgzWeMY9UVbyIVP8oGtLJ+
	6kqa6aDlGepWHuXiylS7CJFcgACweIo3WXCAEoOY6+RdBF6Lvso2NlhigTceCqQ6Q8I7wRSgdefkm
	K29L0ZFJMFd9UxOZe92BhrBvbxHJWI2qLY3oec1rHetYKzp6Xn9ame7hmlEna6PKsTFM0bas2QgGz
	AMuGw7RYqL8to00pP2kVKlBy31IPHML7zTJm07XS35shKyHUJrO8bHq12Crin7CH+I9+hPujXYIIA
	o6znM4LF0Pur7QjmT6mJwoodP+fLMWG7BS6Omg0qROQoQPVtHx1CSFY8dY0fQmn3szxAuxS10/Bou
	LlLxkA9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLD5c-0002Gl-EF; Wed, 23 Sep 2020 22:18:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLD5a-0002GG-Nt; Wed, 23 Sep 2020 22:18:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kLD5U-0001fd-G7; Thu, 24 Sep 2020 00:18:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dt64 changes for 5.10
Date: Thu, 24 Sep 2020 00:18:07 +0200
Message-ID: <16010805.MhVyP8KKtY@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_181814_798536_ED992AED 
X-CRM114-Status: GOOD (  13.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
List-Id: <soc.lore.kernel.org>
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below some Rockchip devicetree changes for 5.10
Please pull!

Thanks
Heiko

The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5:

  Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.10-rockchip-dts64-1

for you to fetch changes up to 30a9a8c16865d37bfc0f1859a398ba1b24eec569:

  arm64: dts: rockchip: add ir-receiver node to rk3399-khadas-edge (2020-09-23 15:39:58 +0200)

----------------------------------------------------------------
New boards NanoPi R2S, A95X-Z2 and more Rock-Pi4 variants.
Khadas-edge additions and a some fixes.

----------------------------------------------------------------
Adrian Schmutzler (1):
      arm64: dts: rockchip: replace status value "ok" by "okay"

Artem Lapkin (2):
      arm64: dts: rockchip: add spiflash node to rk3399-khadas-edge
      arm64: dts: rockchip: add ir-receiver node to rk3399-khadas-edge

David Bauer (2):
      dt-bindings: Add doc for FriendlyARM NanoPi R2S
      arm64: dts: rockchip: Add support for FriendlyARM NanoPi R2S

Jagan Teki (5):
      arm64: dts: rockchip: Fix power routing to support POE on rk3399-roc-pc
      dt-bindings: arm: rockchip: Update ROCKPi 4 binding
      arm64: dts: rockchip: Mark rock-pi-4 as rock-pi-4a dts
      arm64: dts: rockchip: Add Radxa ROCK Pi 4B support
      arm64: dts: rockchip: Add Radxa ROCK Pi 4C support

Johan Jonker (5):
      arm64: dts: rockchip: change spdif fallback compatible on rk3308
      dt-bindings: Add vendor prefix for Shenzhen Zkmagic Technology Co., Ltd.
      dt-bindings: arm: rockchip: add Zkmagic A95X Z2 description
      arm64: dts: rockchip: add rk3318 A95X Z2 board
      arm64: dts: rockchip: fix cpu-supply for rk3328-evb

 .../devicetree/bindings/arm/rockchip.yaml          |  16 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   6 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   2 +-
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts    | 374 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts        |  12 +
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 368 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi       |   2 +-
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |   2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |   4 +-
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  24 ++
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  18 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  12 +-
 ...{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} |  26 --
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts |  13 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts |  42 +++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts |  51 +++
 17 files changed, 937 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
 rename arch/arm64/boot/dts/rockchip/{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} (95%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
