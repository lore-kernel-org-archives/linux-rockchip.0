Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E70AE77181
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6EGttOAg9W5gU6Wv+Gd9+wZCtBOQul5EDg0npGdbmlI=; b=b3Q7P9PnpxGGD9
	Ru+g6n2sX2NsGr2VV2eb0xzHqOmxCYrxpIV734y9kApmNb6hEtuLJ/sL6M4+X7RN7ywYs/9DAgfOp
	QmXv55yryYfD1ykV96CQ0IJBoMCJxEXB/Zhn2wXwiXq5BlyruqF5YRGdVwCO/Pc7LVPAj6QfG5UK6
	F27WZI6aahv7qedanlUQLabwzlCWcnw+Uwe8nEKtSepWiTLZyQpLj1iPGMyCGc3tXnVyun2pnlKEZ
	tnojMvXKrvC5IINOmk8/FwcNjhAygqrW1THN1dKjg7AQMz8rmg2rOVwKbf8QPPahw3tpUvr2rS/Eh
	YVEQ3EqYhYnmB5ff0/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdYS-00000007tt0-0CJq;
	Mon, 09 Dec 2024 13:12:04 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdF5-00000007nYR-0ntS
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:52:07 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ0031943;
	Mon, 9 Dec 2024 21:51:39 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 00/12] arm64: dts: rockchip: refine dts for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:19 +0000
Message-ID: <20241209125131.4101-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_045203_558653_29DE9631 
X-CRM114-Status: UNSURE (   5.18  )
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

this patch series includes fixes for difference from schematic and
vendor kernel, minor improvements, cosmetic changes, etc.

FUKAUMI Naoki (12):
  arm64: dts: rockchip: change function name for blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: change node name for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: fix property for pwm-fan for Radxa ROCK 5C
  arm64: dts: rockchip: rename regulator for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: add properties for pcie2x1l2 for Radxa ROCK 5C
  arm64: dts: rockchip: remove RTC and related node for Radxa ROCK 5C
  arm64: dts: rockchip: separate pinctrl for vcc_5v0 for Radxa ROCK 5C
  arm64: dts: rockchip: add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: fix pmic dcdc-reg7 regulator-name for Radxa ROCK
    5C
  arm64: dts: rockchip: fix pmic dcdc-reg10 label for Radxa ROCK 5C
  arm64: dts: rockchip: fix proparties for pmic regulators for Radxa
    ROCK 5C
  arm64: dts: rockchip: sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 62 +++++++------------
 1 file changed, 22 insertions(+), 40 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
