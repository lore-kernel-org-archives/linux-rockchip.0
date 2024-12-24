Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E476E7718E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 21:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UUTLhv/WM+PCYKkCv32L3qBEYmN/OaFa/ftvVWs5EEw=; b=lrXy8SklhLqAGS
	IxUyTrwYZrVKbDL1/TCfo7vQK6JWu1j6eokG5dARowXa4KLVrqN3b7o0WP+jWBqRHqYdU8uWaBcyw
	pPaBaU9KvJelf054chHb/J1YbVZTbRQOWs2TSd3Yu5XYx5YQgnxSoNw9FylrSAPAaH4OadX14e4tL
	az30zYPLxjgLZYYZrthNOOCYLuXdMok6Od3eRSXKbXbvAbGa0ANZHGPb/lZoMiMFfU55ZIRnPFA3e
	WFo2YGU9ND8Y0LRprAUnb0ppHwKralUqcIW44E0eFJTmLP0FRQ5WSxSRW3fvZF7pyBE5EIBA5ZO0U
	hDCZeDOjmZnToWYWey2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA6-0000000CoQl-3tsB;
	Tue, 24 Dec 2024 21:09:54 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA0-0000000CoMY-2nCP
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 21:09:51 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQB031471;
	Wed, 25 Dec 2024 06:09:21 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase Radxa ROCK 5B
Date: Tue, 24 Dec 2024 21:09:09 +0000
Message-ID: <20241224210912.2121-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_130948_939591_C48DE8B8 
X-CRM114-Status: UNSURE (   6.45  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, alchark@gmail.com, michael.riesch@wolfvision.net, macromorgan@hotmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.

This patch series introduces a shared .dtsi that can be used on the
new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
ROCK 5T.

This patch series includes "arm64: dts: rockchip: Add USB-C support to
ROCK 5B" by Sebastian Reichel[1].

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/

FUKAUMI Naoki (3):
  dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Add Radxa ROCK 5B+
  arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 ...{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} |  555 +++++----
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   97 ++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 1026 ++---------------
 5 files changed, 549 insertions(+), 1135 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} (71%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
 rewrite arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts (93%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
