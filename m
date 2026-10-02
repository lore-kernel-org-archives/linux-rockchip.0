Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E99CCA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 14:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1xC/6vcYojA8ZukInORcgp3ULWBmmz127bTYm3BIt9k=; b=1tE0YhqLOeOuFI
	0gwW65I+OdlYPpN99i7T5Tks9lPe+Hqzu30NaJxwi/yyvgNb7t1eiXJtLzD0qmTTbA+UOUqnpmKTR
	YplF69T1oONsSEOcarE4acTCh0ufFuTnFkfVU2wis/hHIVwOTigyVppRWXGNDjkBIfG9TzR9FqyAl
	sITLm0bpcJmGSezL/obCmsbmEOdKNjfS1KrvQa9UwIvI1HvNMiSjIpVFR0cmzUPhQaybWAyFOQmAz
	giCtBF4Dz5J858xSuBpJ+nVye9BW4kd27m5Z/f88kXOCQ+9iwEnk7lzgaykFmMbFPD4k1cmGhQdbU
	natu+CfmktwT5tUBj73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCdrV-0000000BjYh-0jKI;
	Fri, 02 Oct 2026 14:03:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCdrM-0000000BjS7-23w1;
	Fri, 02 Oct 2026 14:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=J+tYcXPbOxaIBDKGbBQGTpSuvi0uZa0xzFEPBfG60do=; b=Ouw9q+8R52UUZub73RUz2y31dP
	qJcTaJlczTIpgOxKmq4VRCi6mMCPcwrFRhV6oN2JWcrEk8yuoudzcsYzvCoHGJemDqUaKCPH8J6FX
	gh+XEPw4Fal++Ife9RqjRMfeKd4+nuvVariukHzGn3fd33G4yoR3Tzcj816FMTxlDZS2Du7Lzt4do
	OyrlWb2GIxZ4jhGvQQANLhxtKhkDFbHRBtY3Gm17dEl70qgyuOE+VUI2JDJRYB15aHncZKBpjqKFR
	4T8/SgkEwwvxPP/9UQUFEMx4Z8hgdqdI8E50xMCSN4HgtPzgIJT5EOlPRMmJyIsNGA0Cjgl4kSmfK
	8554L3tg==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	damon.ding@rock-chips.com
Subject: [PATCH v6 0/2] Add RK3588 Tiger DisplayPort carrier
Date: Fri,  2 Oct 2026 16:03:28 +0200
Message-ID: <20261002140330.2904616-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_070336_537994_2C84C794 
X-CRM114-Status: GOOD (  13.60  )
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

A board that allows easy testing of the Analogix eDP controller on the
RK3588. Requires Damon's recent work on hotplugging the eDP controller
displays [0].

Concerning displays, my current setup is

  DP-carrier -> DP-port -> DP-to-eDP converter from Aliexpress -> eDP panel

which produces a nice 1080p image.

changes in v6:
- address comments from Quentin
- Remove misleading dp/hdmi hpd pins (as they would have inverted levels
- drop dp-connector label - it's optional and the board is not labeled
- drop redundant uart2 pinctrl-0 setting

changes in v5:
- didn't take a year since v4 ;-)
- drop wrong quotes around Rob's Rb
- drop wrong link-trailers that slipped into v4
- disable mmu600_pcie for the time being
- move hpd-gpio back to the dp-connector where it belongs
  With v3 of the hpd series, this now works as expected

changes in v4:
- move hpd-gpio down the the analogix-dp node
  As stated in commit cb640b2ca546 ("drm/bridge: display-connector: don't
  set OP_DETECT for DisplayPorts") the dp-connector can't just read the
  hpd-gpio and mark that as monitor detected, instead 

changes in v3:
- rebase on top of 6.17-rc1
- still should wait on the analogix bridge support

changes in v2:
- collect Ack/Review for binding
- address Quentin's comments
  - sorting in Makefile and dp-connector properties
  - ethernet alias
  - drop data-lanes comment

[0] https://lore.kernel.org/dri-devel/20260928081418.3605775-1-damon.ding@rock-chips.com

Heiko Stuebner (2):
  dt-bindings: arm: rockchip: add RK3588 DP carrier from Theobroma
    Systems
  arm64: dts: rockchip: add RK3588 DP carrier from Theobroma Systems

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3588-tiger-displayport-carrier.dts      | 110 ++++++++++++++++++
 3 files changed, 115 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-displayport-carrier.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
