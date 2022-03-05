Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0C9C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 11:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ZA9cgkJou298ZpsZhuAUFKrWg2tGdK40QtfdjZ7/L4=; b=AEE36IcmjlgMng
	Y3N5Qur/JhJfbwUTgZOLdpek5+EmjiJVN8m+n3DAPPzG8CfDieTzzLXT59rV10aw3h/AysrDevsBf
	WaUxodmrKflm9zpd6+Ti1WVjSJHspZSIacYyXtkKIoO8K/kMaXRMgHy/N/jMLT/4oNB8a0w06tmC5
	uQJ1BmUoltoBiE32hhl02r5MuLlUlqjT1hlD2Vsg1u+K42oJEhaod5380Ro2GQBYrLzMBN6bEqHyR
	Pp+d0C1zMXtEpgx2LN7Yh8jOZQVmL+EVPb4q/q6OrA3AP0srw65qoxdgqiv6KYFgd+QCVluAQnQKO
	XBqL14kU3ivJpwa/6guA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQSYb-00DEQR-9x; Sat, 05 Mar 2022 11:26:41 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQSYM-00DEJd-Mm; Sat, 05 Mar 2022 11:26:28 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout3.routing.net (Postfix) with ESMTP id 144C86049C;
 Sat,  5 Mar 2022 11:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646479580;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6gwriWaFi6MV5ObTftZoDnQjQ5jbHMHJHeQVs8bkt4c=;
 b=qEQuBz2SlAGt32/+NH/oMu13nPzwzTLS61QznyjSBVW5uO+dVrAWNaIgsZkUoHDdOa9odP
 WMm50lW0X1JkT/RKCIw2G6zpVQ1d+tWqaZI/8AdO+hhWF0IskeeYIxR9ld6aUNkyZNHxpl
 enjuPuSVwjeSlxbHkkIBZ34TEHYAqsU=
Received: from localhost.localdomain (fttx-pool-217.61.157.101.bambit.de
 [217.61.157.101])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id CA68010040E;
 Sat,  5 Mar 2022 11:26:18 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v5 0/5] Add sata nodes to rk356x
Date: Sat,  5 Mar 2022 12:26:02 +0100
Message-Id: <20220305112607.257734-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 5dcd9dc4-35e0-4c59-b894-336e52342d89
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_032626_913100_31AAE093 
X-CRM114-Status: GOOD (  12.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series converts the binding for ahci-platform to yaml and adds
sata nodes to rockchip rk356x device trees.

v5:
  DTS:
  - drop broadcom-patch as it is already applied
  - add fix for marvell
  YAML:
  - change subject
  - drop brcm,iproc-ahci from standalone enum
  - fix reg address in example 2
  - move clocknames next to clocks, regnames to reg
  - drop interrupts description
  - drop newline from dma-coherent
  - drop max-items from ports-implemented
  - min2max in child phys
  - fix identation for compatible and sata-common
  - add additionalProperties=false for subnodes
  - pipe for paragraphs and newline after title
  - add maximum for ports-implemented (found only 0x1 as its value)
  - add phy-names to sata-ports
v4:
  YAML binding:
  - fix min vs. max
  - fix indention of examples
  - move up sata-common.yaml
  - reorder compatible
  - add descriptions/maxitems
  - fix compatible-structure
  - fix typo in example achi vs. ahci
  - add clock-names and reg-names
  DTS-Patches:
  - drop newline in dts
  - re-add clock-names
  - add soc specific compatible
  - fix sata nodename in arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
v3:
  - add conversion to sata-series
  - fix some errors in dt_binding_check and dtbs_check
  - move to unevaluated properties = false
  - add power-domain to yaml
  - move sata0 to rk3568.dtsi
  - drop clock-names and interrupt-names

Frank Wunderlich (5):
  dt-bindings: ata: ahci-platform: Convert DT bindings to yaml
  arm64: dts: marvell: fix anyOf conditional failed
  dt-bindings: ata: ahci-platform: Add power-domains property
  dt-bindings: ata: ahci-platform: Add rk3568-dwc3-ahci compatible
  arm64: dts: rockchip: Add sata nodes to rk356x

 .../devicetree/bindings/ata/ahci-platform.txt |  79 --------
 .../bindings/ata/ahci-platform.yaml           | 170 ++++++++++++++++++
 .../arm64/boot/dts/marvell/armada-7040-db.dts |   1 +
 .../boot/dts/marvell/armada-7040-mochabin.dts |   2 +
 .../marvell/armada-8040-clearfog-gt-8k.dts    |   1 +
 .../arm64/boot/dts/marvell/armada-8040-db.dts |   2 +
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   |   1 +
 .../dts/marvell/armada-8040-puzzle-m801.dts   |   2 +
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi |   2 +
 arch/arm64/boot/dts/marvell/cn9130-crb-B.dts  |   1 +
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi    |   1 +
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi    |   1 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  14 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  28 +++
 14 files changed, 226 insertions(+), 79 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
 create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
