Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0766FE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 11:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=45TIF/2/Ejt/Vxszx47cR3ERHMSzqEEKIsW0+x2/vrQ=; b=2XIB5dsgUdsPiP
	g5EAZLXsMWuDerL5Z1qKeA5wUWIDgRKnd2NnAIMh2y6K3K1FnUzmwRwBtGUiDP2E7nyry265Oi2gI
	dfqhJYn5L92n1Z/AFr2mtqjQ3pU4u9Actu0143oER/WgO/Y8AWPg/lyPuaATa17e6j/JOhA40o6V0
	vmoyMspnlA7OtEP/Ix1Yd4V0CD8YD5bGQn61HbRAVcU9XicLlBuSdIxwP/glKqJ7/L3PtPxbY2GLY
	hjoJjOeEZUhgVYwUIWFHyCf4E9BupSYXV+3OITHsbBDfQzNqb9EHMMwKy/Gyf7VZjTQqB5Kgtuc7Z
	wDVja7eriamcXgkBHtEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9YB-00000009sP3-0n0e;
	Mon, 16 Dec 2024 11:46:11 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9Y6-00000009sNt-3FXN
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:46:08 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBjsxV028760;
	Mon, 16 Dec 2024 20:45:54 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v5 0/2] arm64: dts: rockchip: Use shared .dtsi and board-specific .dts for Radxa ROCK 5A and 5C
Date: Mon, 16 Dec 2024 11:45:45 +0000
Message-ID: <20241216114547.15892-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_034607_037397_17D66C72 
X-CRM114-Status: UNSURE (   4.93  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com, devicetree@vger.kernel.org, kever.yang@rock-chips.com, dsimic@manjaro.org, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, jbx6244@gmail.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Since Radxa ROCK 5C is slightly updated version of Radxa ROCK 5A,
almost every part of dts can be shared.

This patch series split .dts for ROCK 5C into a sharable .dtsi and a
board-specific .dts, then convert .dts for ROCK 5A to use the shared
.dtsi.

(This patch series depends on patch series for Radxa ROCK 5C[1])

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216113052.15696-1-naoki@radxa.com/

FUKAUMI Naoki (2):
  arm64: dts: rockchip: Split dts into sharable dtsi and board-specific
    dts for Radxa ROCK 5C
  arm64: dts: rockchip: Convert to use shared .dtsi for Radxa ROCK 5A

 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  40 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 869 +---------------
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 946 +-----------------
 3 files changed, 74 insertions(+), 1781 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (96%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts (98%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (95%)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
