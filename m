Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CF8C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 17:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4e2wmTTYnrIYQ9/U69AKoecwjFIJSzLf5qWINXrrOAc=; b=miJyPkMcEneW8q
	DDbgTB3LU5nmMw/bWv1EclwycvhncCfu1yanJKw/6pPVMZiYJzLLU+83ZWe/XJd5QeLYMnQbpzbcH
	NAwhucEX8PRD1kTtThDzAdYqjBDNKzK4rRNcM7Xp20LXGljKCJc6CTYWnN4O0iz9+kdnU7pv4Flk5
	AE9B5rur2o6ZOtfESO/MPpdOlFk2Uk8QICIz7cnzhL4m4X3BlVYmxc5K3wrl4TmCa8uy+RLzQ5P9o
	uhz9nKd8eYnThY+I4RsZX4JVCYQ5BGZYvYjf4A71mTGQuZP1HOwbViTxtUsgE3fMoRQZqKnZKUA3n
	/WSW9FbNC00GP9+T67Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnAy-0000000GZ5P-1KSE;
	Wed, 21 May 2025 17:24:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnAV-0000000GZ2g-3nXx;
	Wed, 21 May 2025 17:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=6oSDxFFtYr+MnJZ3OE1HOzLnfG4kEMq0akR2q3Fp0N0=; b=zBzNq6oZPLcwPwlncO/qTqymQx
	IFeI2aM5VvK6Tk+st2FKUQTZjp+0m/j4i5hH+KhvH1cv4SdBEq/1YHknlQsi2mR8O8HaMl15P6N7z
	eKRgwyUxRv4zeA5cr2NcZSzTaQ2Eyp5Izv/5NTKQnqNdQwnVOqxd7vIgwn4PIrDdO4hUfnqEBZDfN
	lV223zMdxu7vtKRPFI566NFQLovur3Ukl/NxKkCcguu2som5vKbcv7/yrLmkAtrdg4Xhvb1kLY7tZ
	20ab3rCtz32koBqTGnI2YWMs0rL48AWJokZY5iCebBVfK0Sjuuh4GHVgJyB0so6Jdcj21RJk/Iuoq
	oor36pqA==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uHnAT-0001ay-J5; Wed, 21 May 2025 19:23:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.16 #3
Date: Wed, 21 May 2025 19:23:48 +0200
Message-ID: <4798229.ejJDZkT8p0@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_102351_970675_C9EE383B 
X-CRM114-Status: UNSURE (   8.43  )
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

Hi soc maintainers,

please find below some sort of late fixes for some non-critical
things.

Please pull.

Thanks
Heiko


The following changes since commit 1631cbdb808963354ef6b6454bc617cd15f90718:

  arm64: dts: rockchip: Improve LED config for NanoPi R5S (2025-05-15 14:57:44 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.16-rockchip-dts64-3

for you to fetch changes up to dfab90b9580c2fbc4e8bb4ceee97cdd75832a6e7:

  arm64: dts: rockchip: move rk3562 pinctrl node outside the soc node (2025-05-20 20:57:30 +0200)

----------------------------------------------------------------
Power-domains needed for stability, dropping of unnecessary assigned-clocks
(handled by cpufreq) and fixes for dtc W=1 warnings.

----------------------------------------------------------------
Diederik de Haas (1):
      arm64: dts: rockchip: Drop assigned-clock* from cpu nodes on rk3588

Heiko Stuebner (6):
      arm64: dts: rockchip: fix rk3576 pcie unit addresses
      arm64: dts: rockchip: move rk3576 pinctrl node outside the soc node
      arm64: dts: rockchip: remove a double-empty line from rk3576 core dtsi
      arm64: dts: rockchip: move rk3528 pinctrl node outside the soc node
      arm64: dts: rockchip: fix rk3562 pcie unit addresses
      arm64: dts: rockchip: move rk3562 pinctrl node outside the soc node

Sebastian Reichel (1):
      arm64: dts: rockchip: Add missing SFC power-domains to rk3576

 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 136 +++++-----
 arch/arm64/boot/dts/rockchip/rk3562.dtsi      | 242 +++++++++---------
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 355 +++++++++++++-------------
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   6 -
 4 files changed, 367 insertions(+), 372 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
