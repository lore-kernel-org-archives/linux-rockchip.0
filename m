Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B18E77186
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 11:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+RZprpbFeUNB4b7qsimLdkJMXLtttvcOHZqRV8lWfPA=; b=BP+0G6wpkqr3+b
	pClzMRReQDF2qdH98t9szlshKg9jbgbpCmFtpI1PBnOmIwhrx5nPTHuvyd/28+ykjQyvtxMCPITJQ
	elzbSxrmkURXTZR6abI5ZdQFF44ObxkeM/8ewBEclhQgB4AhWUKX1kRQ52AENB/lGK+G3Y7yiWMUb
	MHMPye878dyyA3wZApUfRPlnCS5Pne04d+BG4nDNs6uIim8LUZNuGYxLAxMZnag1elAUMsy57loL2
	4GIMPpl1UljDiFt0L06oWlJf5Mp5yNi3VSBueybOIIZusiUS5rNAaz1XZVL086sdl74SbJ5LQ7c4C
	ueAJaFbnLJogtvA7I7ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9KA-00000009pwh-1Euk;
	Mon, 16 Dec 2024 11:31:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K8-00000009pvR-2K25
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Dec 2024 11:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+tzWWDkNSFqdFBf1FfEHlIn083yMaJ/RmHbb1EDO3x4=; b=OdliJ3ZNC1THJojJVt7OWiKFyV
	U7Rvis4cYkgAwQJZacuKemYsubCKLugSaEI5AZq3XmXUd/XHlZGJ/xpSgEgokukDFRwTXSZy5QY8I
	FegxE4p1I78XbmpFduUcJXMcxm1HUDSLfYeIOg7nTby6rb/gHK1tHZt57IBljyMi4mDSrOEiwDQHr
	b5yrfpUiSX2OeRW+b7o/6Y22aYLhES4SPq29GV7LgICxt+cLgd7iG3OFR4a6Sbk0AXJ3ZUy5/UN6Y
	wDuyBSqCl4PHdUyxtjhRY5oimkIqs33uEMQ4E6nvdji9bySCJj5yJTXqEE6rsu2QRtN8G82VrlRxl
	8TKmrEJQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K1-0000000FtGI-1zRt
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:31:39 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOL028690;
	Mon, 16 Dec 2024 20:31:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 00/12] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:40 +0000
Message-ID: <20241216113052.15696-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_113134_890456_E11D1BE7 
X-CRM114-Status: UNSURE (   3.92  )
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

This patch series includes fixes for difference from schematic and
vendor kernel, minor improvements, cosmetic changes, etc.

FUKAUMI Naoki (12):
  arm64: dts: rockchip: Change function name for blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: Change node name for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Rename regulator for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: Add properties for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: Remove RTC and related node for Radxa ROCK 5C
  arm64: dts: rockchip: Separate pinctrl for vcc_5v0 for Radxa ROCK 5C
  arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix pmic dcdc-reg7 regulator-name for Radxa ROCK
    5C
  arm64: dts: rockchip: Fix pmic dcdc-reg10 label for Radxa ROCK 5C
  arm64: dts: rockchip: Fix proparties for pmic regulators for Radxa
    ROCK 5C
  arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 62 +++++++------------
 1 file changed, 22 insertions(+), 40 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
