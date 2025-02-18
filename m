Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F252C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 16:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+5FllbICTnNNRBHvbL+LLj/NSWEMKtx73Gh6KaZWESw=; b=jgvrvVUrbFnck1
	YNy0oFMOyoa7kSwJ9XogzCJPCcyYWorUj1YCo6SbmSE1+ke5AmiAZi572t/qsCmXxS4CcvbpanRtG
	aVDXSloBQfXCQLRLYbWPvZBxxGDq7cgzn1/sd2WTrq0gAI0m6MDKCyvBE00CEkKI0V+NNvj8Cz90U
	HsRSitOZQgAq3ccxSlESDbxvIm3i5O2S6fEljBCVLa6ynp0bRmrrxcudWQOFfXRxkO3o8YU88ebup
	XL1SW5RiYwSRdcWqUDPxtOXzokdSKTqlqKwy5lVRKcfj5gHGsA9HKyvbeLOc2joKGwu5ZgT2aBnPM
	WAsG20uAyBUeicDJrLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkQFK-00000008uou-44DR;
	Tue, 18 Feb 2025 16:14:54 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkQ84-00000008svi-085t;
	Tue, 18 Feb 2025 16:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739894842;
	bh=0K73ZkcdRvK5i5bBvBQT3dcTZxfeYnrTBCghlFqDUdc=;
	h=From:To:Cc:Subject:Date:From;
	b=Ul3mvmdNt3c5yp0JAGjna3WGQZXhVrj5Y0+b5XYRj4dSziyBL3CyuyVV5cXkoaTHo
	 EGfH7cLak7T88MqCU7YJhe+GoNUl/D50CZ/8iWgPZmqPeZn2ChAn834w58E4QkEObc
	 agx9FkxpCiNMMVWRDTum4SyNy9PNg2NV2+n7bZ/6zHP8U3OZ+dcjpN532mNeialcfv
	 xhFa44LJ17VBNzWt+vt+Ej1BHwDfXeBB8Gb9+XcO0qlkz796T2INGPTaZxqFdxKiIN
	 +3k1C7YuyXC/mTt0qBUkBK2qexUtu8qJVrz09XSrpWSffWv6OHENdqAETRX0WVnsYk
	 ugUP9XeUHm5gw==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BF89C17E1247;
	Tue, 18 Feb 2025 17:07:19 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Stephen Chen <stephen@radxa.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v5 0/2] Add Radxa Rock 4D support
Date: Tue, 18 Feb 2025 11:04:17 -0500
Message-ID: <20250218160714.140709-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_080724_217244_A0C487C7 
X-CRM114-Status: GOOD (  11.59  )
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

Add the basic support for the board. (Not officially released yet)
It is based on the Rockchip rk3576 SoC, so I haven't added the
following devices yet:
 - VOP/HDMI
 - UFS
as the support for those has not been merged yet, but are close to be
and I already validated that they work.
It will come with another patch set.

The following devices are supported and working:
 - UART
 - SD Card
 - Ethernet
 - USB
 - RTC

Changes since v4:
 - Add the correct pinctrls when needed
 - Move #clock- and #gpio- props to their corresponding props
 - Add mmc0 alias
 - Rename gpio to gpios
 - Remove unnecessary blank lines

Changes since v3:
 - Reorder nodes alphabetically
 - Add missing cpu supply

Changes since v2:
 - Move and rename snps,reset-* props to the PHY node
 - Rename phy@1 to phy-ethernet@1

Changes since v1:
 - Add missing dt bindings
 - Remove clock-frequency in rtc node
 - Add line break in pmic pinctrls

Detlev Casanova (1):
  dt-bindings: arm: rockchip: Add Radxa ROCK 4D board

Stephen Chen (1):
  arm64: dts: rockchip: Add Radxa ROCK 4D device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3576-rock-4d.dts      | 689 ++++++++++++++++++
 3 files changed, 695 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
