Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A56EC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yAUNOglXxNftxNw2rYGTVNsS43Pq6mSv4Yn8kNAk7lc=; b=v8mth21t6voh5O
	x55cxiFoI9ucyz6FdnaD9KdTpaSstUTRKWyr+QYroICGR72DCJ7CwUnNR+G4SQ/3VV/ymnw8yncQp
	8vH0k2pZo/LHxsuacUePRnA5yOfJ+pbcOzLtC8ejJE6mLfbXhcgh6st0INhgdH4j1sKWSXcun4IX8
	jlbP6RqiSvrvoL0ZtDrAeMGvJpwRxcFwjYDn6ff6OGblUSOJf3hDqjO5Ra60BcAbdLuYhxc8Lf1jQ
	QwA9SiJ7BRJ4fxKdPU0xRdUubogAp/3vmimAiqmJvTj7aVT2QtdiQetZrd1De9wWD5r31IiCQIL/2
	IC4cnJpu5Br+SQfR6Tyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrEj-005waT-LV; Sat, 12 Nov 2022 14:11:57 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrEY-005wTX-O7; Sat, 12 Nov 2022 14:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=qDnpKfCINF8AaQCM/kdrtaCelB7JbA9OSxlcTKm9qWQ=; b=pNulBD0gRNWpXF4O08o85Nzx/h
	LZR1zb0kVwNQXbGunQUaplLJIu0Zn1xOZjQJizpv07a/KfEhzHtqnUI7eeWoR/04uxvIMie0y2lxI
	fL1F0gy0GeEJtcmAKt2nn3mUUi/nza8wNegRPq8YW7myY9NgnNSrnt3QmlMD82DZg1H6CKwwKymYG
	t0VTWA6AzJZaCEhqY/1G0T17nkSuSn4Ce6kceqnX6+SmGTS2pDlgdBm5XbDZa+aPaMbQ70gnYUOp5
	oVmvzrFh9yHw5odv4rE+I2ad4X+s+XXu7dIGRcB87nkMJdxxyD+YCz4fYtxeqb/1fG+GGUVzrVpCZ
	0uNOOnSQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE5-00AbQy-GS; Sat, 12 Nov 2022 15:11:17 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE4-00FxDe-2G;
	Sat, 12 Nov 2022 15:11:16 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>
Cc: linux-crypto@vger.kernel.org (open list:HARDWARE RANDOM NUMBER GENERATOR CORE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v1 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Sat, 12 Nov 2022 15:10:56 +0100
Message-Id: <20221112141059.3802506-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061146_802861_2775DC5A 
X-CRM114-Status: GOOD (  12.11  )
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

Rockchip SoCs used to have a random number generator as part of their
crypto device, and support for it has to be added to the corresponding
driver.

However newer Rockchip SoCs like the RK3568 have an independent True
Random Number Generator device. This patchset adds a driver for it and
enable it in the device tree.

Aurelien Jarno (3):
  dt-bindings: RNG: Add Rockchip RNG bindings
  hwrng: add Rockchip SoC hwrng driver
  arm64: dts: rockchip: add DT entry for RNG to RK356x

 .../devicetree/bindings/rng/rockchip-rng.yaml |  62 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   9 +
 drivers/char/hw_random/Kconfig                |  14 +
 drivers/char/hw_random/Makefile               |   1 +
 drivers/char/hw_random/rockchip-rng.c         | 251 ++++++++++++++++++
 5 files changed, 337 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/rockchip-rng.yaml
 create mode 100644 drivers/char/hw_random/rockchip-rng.c

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
