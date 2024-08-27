Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07BF5C54731
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 21:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HEtf2akR7HJaWu3AP/bKfrClvQVSbO/YT5+kICcNoig=; b=EFKlZQV+FK0Bwz
	Spvz9fyf+aNv41qP1phlLzKksJ6cz42W6sydmClnnHQZUivf2GfV0V/1bJMUp0g635BK4bo29bSug
	280rQoCajlqX7LKR3xYvJZo2czZlF3+0S1FioRL0fjMGM+mCo0jkkapqUWf+TmmCAPB/4onAaQeLF
	iAdsWluiRQSiV8/2/OrnoG+p5+j3NwTqLc4Y4hCdfPK+UC8KqXjrpEZcQjcEpyXNR0J7+uMqR9Sv5
	2uRvr2071HF5zolSW5KgqR/OjuG2Fee8PPxDSNMpy+fYyHmVK9EnYlNBHVFsOuVJez9ess5M+xDy3
	2tfKXhUhatwm8F2BHviw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3aV-0000000CrAw-2aLH;
	Tue, 27 Aug 2024 21:18:51 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj3aR-0000000Cr87-3BES
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 21:18:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1724793513;
 bh=YHUKJmb3UnAxZ0k+vBXUS+OxFZW8B1ZiGLNKbG0akdA=;
 b=jymOPbnCihV05dBfAQwJKm8kQXNCngh6A+WURBR6wKo0SngEKeUk7o0BSK05mPgqVmy6KVf2t
 fd0XBjnWYPRHk5yJ/4JhRirGOMra6Djrlb38MDh4rGT86Rd64JcXmjeh6X4tO2chQ5Yo+6EO5uJ
 tgQOd8Gn98jjFUfTlIcBLNi8YaUZE9P95yj8RivQYFCH/0JjK4Oe9zYKInfUjY+JJ12OiEnxL+q
 HvUIYRCfbZRsiS8x1zQkh5aY/jCpJpVcQGG6ozv3VNQZpQBDVgPhZacH0Ea/ob7Kv525O6qHOUr
 PIRCHqFw7HszXFCnzPfwxKhttY+ft3EL9Y1CFTOAyDdw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
Date: Tue, 27 Aug 2024 21:18:14 +0000
Message-ID: <20240827211825.1419820-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ce42a7ec205819dc6f1776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_141848_340080_5525B2FA 
X-CRM114-Status: UNSURE (   9.62  )
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

This series fixes wrong vendor prefix on the Hardkernel ODROID-M1 board
and adds initial support for the Hardkernel ODROID-M1S board.

The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.

Schematic for ODROID-M1S can be found at:
https://wiki.odroid.com/_media/odroid-m1s/hardware/m1s_main_rev1.0_230906.pdf

Changes in v2:
- Remove the redundant rk356x- soc prefix from board compatible
- Collect r-b tags

Jonas Karlman (4):
  dt-bindings: arm: rockchip: Correct vendor for Hardkernel ODROID-M1
  arm64: dts: rockchip: Correct vendor prefix for Hardkernel ODROID-M1
  dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
  arm64: dts: rockchip: Add Hardkernel ODROID-M1S

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-odroid-m1s.dts   | 663 ++++++++++++++++++
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    |   2 +-
 4 files changed, 671 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
