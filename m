Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD53ECD13D9
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8i9g76QF25nO9XCqXuzU3xZON/yC3s9/6R8O9flLj80=; b=bAuYyoKxf06OL/
	+mBP4SfC5csGiJKgjD7C9hzb1DTJfAHY7DlYJxe5sU+HtERQNuKVoGuzZWiz8VhBWYakljLymbZxI
	xNzoXOdjPHGDpDYd4wyZB/Jt2yh03cLpq/lrWLbeTPAHLiuyaGOLocl9eBC6tbKshc5Iy8QTsLOEx
	FR12VVVYYEW7Q9SoXZfclX/WDdKUVnH6ozEpl6M2SOCMepJ4sXsiCPOXudTjxFGg1XUU9trJqTHpZ
	1LyQL/qfE3AWaFUYX5JEmRXtC4ysTvZsDFE3BZf96i3r1BcqLtsxX1vEyHo6/7+Pm/XofiAgpjHf0
	oAUs6JOvsABLI+CpdUmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GR-000000043yL-1yK6;
	Sun, 09 Nov 2025 14:19:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GK-000000043rE-49Xe
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:28 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dk015030;
	Sun, 9 Nov 2025 23:19:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 00/14] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:45 +0000
Message-ID: <20251109141859.206835-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_278315_5DC15C9A 
X-CRM114-Status: UNSURE (   6.18  )
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

This patch series provides fixes, improvements, and other minor
changes for the Radxa ROCK 5C.

FUKAUMI Naoki (14):
  arm64: dts: rockchip: Fix the function of the blue LED for Radxa ROCK
    5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Remove rtc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5C
  arm64: dts: rockchip: Fix pmic properties for Radxa ROCK 5C
  arm64: dts: rockchip: Add missing properties for sdhci for Radxa ROCK
    5C
  arm64: dts: rockchip: Add pinctrl-names for uart2 for Radxa ROCK 5C
  arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 5C
  arm64: dts: rockchip: Fix vcc_3v3_s0 vin-supply for Radxa ROCK 5C
  arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
  arm64: dts: rockchip: Sort nodes/properties for Radxa ROCK 5C
  arm64: dts: rockchip: Enable HDMI audio for Radxa ROCK 5C
  arm64: dts: rockchip: Enable NPU for Radxa ROCK 5C
  arm64: dts: rockchip: Add eMMC to uSD module support for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 290 ++++++++++--------
 1 file changed, 157 insertions(+), 133 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
