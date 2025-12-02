Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC94D116FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=daP8P3jMFchiDs6WL1P2CbwYwGP9C2u5RbApvkUvx70=; b=B1F+j/4YseaSlV
	zcGYaCdMsPM7ZdVEWXfLXlC1t6rsW1F3NGspr+fEtXIsQQFzvRJ6pDj1yI0uk0V87DUcf/GleT2UT
	25VegRKeWLYMYWzCxq5nsrvEg9it/lra3QweCVNGj+L+W0D4fRDVEtp6fdVGccSsahAwkZtiSMT9E
	DcT51KaWjbLmOG6psZ7/e9OLx8oh7gBMXaTsSesvuCPcxrGGQ9V54tx6x+7/mtzON6JKhlQtvK+jY
	Zs5vYdwu4VKJEdgq2Xf0sXqnbr2SSp7gILaxmF48wglSchSzW/KSR75y02etVmF1DxfhH5jQFdAyf
	PKXNFTC7BeYNrDrv1HXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQM5I-000000054Qz-124z;
	Tue, 02 Dec 2025 08:50:08 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQM5F-000000054Q1-3KkJ
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 08:50:07 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B28noM3008635;
	Tue, 2 Dec 2025 17:49:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, didi.debian@cknow.org, wens@kernel.org,
        nicolas.frattaroli@collabora.com, detlev.casanova@collabora.com,
        stephen@radxa.com, sebastian.reichel@collabora.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND PATCH 0/3] Add Belling EEPROMs found in Radxa boards
Date: Tue,  2 Dec 2025 08:49:38 +0000
Message-ID: <20251202084941.1785-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_005006_048514_572CF50D 
X-CRM114-Status: UNSURE (   5.71  )
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

This patch series adds Belling BL24C04A, BL24C16A, and BL24C16F EEPROM
found in Radxa boards.

FUKAUMI Naoki (3):
  dt-bindings: eeprom: at24: Add compatible for Belling
    BL24C04A/BL24C16F
  arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
  arm64: dts: rockchip: Add EEPROMs for Radxa boards

 Documentation/devicetree/bindings/eeprom/at24.yaml |  2 ++
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts      |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts   | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |  8 ++++++++
 .../arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 10 +++++++++-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts    |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts    | 14 ++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts      | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts    | 10 ++++++++++
 10 files changed, 89 insertions(+), 1 deletion(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
