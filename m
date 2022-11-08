Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 193F0C4321E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 17:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5pYIonFtPe5LD1m16pymfRKclCFNkmmfa0mv1v/HtE=; b=32Ps7VS6g7AdqU
	JxTOTfSB9PAHYnv47RFx14P3BulkO0Sj6jW3ZveoglnA4R8MVI95Ew6uhIvBdVl1KhBUb72UyP3ve
	Y7EQpz0QmJbO8e/H14ya26owyIYrMezmpqouQnfs1CsI23ZFWUiv4X391CYhpAdrI/OTF1n13Ewoz
	+CmX91ycA0N/d4VubMbI3Y/nP/gs73AKM554xmrosZDACCq08wIK3QzyDf/voj1Giz9n88KTad5mr
	li2kFsWiUDJKM5ESnf/rKUsIbdsdiQEynDY9Wv6Yv8bdz32ezQsSIHILgkY0N5SImUWTMu4hUld2E
	2UBrLOsu9K7N2HKVp/WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBw-006z8e-13; Tue, 08 Nov 2022 17:15:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSBs-006z5a-1x
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 17:15:14 +0000
Received: from jupiter.universe (dyndsl-095-033-156-208.ewe-ip-backbone.de [95.33.156.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2E0BC6602901;
	Tue,  8 Nov 2022 17:15:07 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667927707;
	bh=LDWBRm+RmRbZ3a+FpCb+UmXdQ+0wzNjj7oK1rCF41pc=;
	h=From:To:Cc:Subject:Date:From;
	b=V2dXGiUee/xHKbO6SoC3Jsp6GQfzb2anNKgi6X2BVoGXMleYssdvc9P7QELKQdJST
	 oNSKm2R5HkK4wxhEdaVJ75oLOgalg8HHOcyWsLoPn8QJ0KjUl467Bd7MhQMcqDpI7d
	 DUWZaSSSOe5u09mchpM84HEk008v/3Yx+S5Gcmwd8nP/GbgJHKi/rBgbsDXyNNzn0Z
	 /vqWxVD723SGJkTJlZ6D1Nqf1IDor6yQ3mn6gKRnJztiaZDX/V+GkihHP8c7RlWkOn
	 B9cX1NH/wBANoRwPztJosRxyb4ZX8a4wYIpvnX2FfJOJvmIxRdC3MEqYPSo29kHKZS
	 7cOpF4Q31KvJQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0E0DF480078; Tue,  8 Nov 2022 18:15:05 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/5] Initial rk3588 DT
Date: Tue,  8 Nov 2022 18:14:55 +0100
Message-Id: <20221108171500.99599-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_091512_275050_541299F8 
X-CRM114-Status: GOOD (  13.94  )
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

Hi,

This adds initial rk3588(s) DT including two different board
devicetrees. This patchset has a couple of dependencies:

 * clock support
   https://lore.kernel.org/all/20221018151407.63395-1-sebastian.reichel@collabora.com/

 * dt binding fixes
   https://lore.kernel.org/all/20221107173310.60503-1-sebastian.reichel@collabora.com/
   https://lore.kernel.org/all/20221107180231.73663-1-sebastian.reichel@collabora.com/
   https://lore.kernel.org/all/20221021172012.87954-1-sebastian.reichel@collabora.com/

Even with that there is still one warning from the DT check:

$ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb rockchip/rk3588s-rock-5a.dtb
  DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
/home/sre/src/collabora/rode/linux-rockchip-upstream/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:
    ethernet@fe1c0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'mdio',
    'power-domains', 'reg', 'reset-names', 'resets', 'rx-queues-config', 'snps,axi-config', 'snps,mixed-burst',
    'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'stmmac-axi-config', 'tx-queues-config' were unexpected)
	From schema: /home/sre/src/collabora/rode/linux-rockchip-upstream/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml

This is for gmac1. gmac0 has the same properties and there is no warning. Also
rk3588s (and thus the Rock 5A) has only gmac1 and there is no warning for the
Rock 5A. It looks like the for some reason the referenced "snps,dwmac.yaml#"
is only checked for the first node. I think it's a bug in dt-validate.

-- Sebastian

Jianqun Xu (1):
  arm64: dts: rockchip: Add rk3588 pinctrl data

Kever Yang (2):
  arm64: dts: rockchip: Add base DT for rk3588 SoC
  arm64: dts: rockchip: Add rk3588-evb1 board

Sebastian Reichel (2):
  dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
  arm64: dts: rockchip: Add rock-5a board

 .../devicetree/bindings/arm/rockchip.yaml     |   10 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    2 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  156 +
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     |  516 +++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   62 +
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 3403 +++++++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   63 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 1678 ++++++++
 9 files changed, 5895 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
