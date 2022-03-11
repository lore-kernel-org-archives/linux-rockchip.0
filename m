Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29514C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 21:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B9cDoWq8Oa6q1KXkHjRv5HZJRybIejzKiAIUUZl7+44=; b=OTXjLkUluxjM18
	3rxBgvZgHhhKsRBqucMHO5i1E8pTqCAoAnwCz6Q+DRCB0QkePloH2Wuc6a3jYQWTX8sHKtsP7ABZC
	FrMdgmRsKYPbxWBZtm3rdFUgx1qlA71TP2NuwO871oesz5iZ8Y+YSL3yRT/2lAu7xemDkxLG1l3vO
	Gkzjksa9szVzSgzBIYJpUa4mwmEqDw1idOoy3Pt6Lxf5QpZ5eQob+QO2H1l8pDTa8pN3pH1jzJtUT
	YG+eGzABrrIfjbATCMsBiYB9V3xq/X3zwuuAf0DbTt4utbP3tQkW+rtjiLiGbUjj8BtAIm5a2NQNs
	EhIRG60NR4JaCJSxToYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSmRS-000HJs-0x; Fri, 11 Mar 2022 21:04:54 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSmR2-000HBt-7K; Fri, 11 Mar 2022 21:04:29 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id B06455FD39;
 Fri, 11 Mar 2022 21:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1647032658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=dqoouwB8fBLOnpT8CCz+WpgKrPdobpaCbLTnMi6n0lU=;
 b=iPcsVWFSj21ZM3iK3XmjYgxqSVjaj9ZH8UYoNzMLz40zFttSNLDigs1B4DbQrnU15I3Nbt
 55djBEwWjJM6s1fFBehC8r5ghWNox79S2wetCsnmx4zNx+KLWgQO26pAjp0c7moO7bMPGh
 juiPmVMDo9zhwpBsxZnQgaUBMeSaLvs=
Received: from localhost.localdomain (fttx-pool-217.61.144.196.bambit.de
 [217.61.144.196])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 3A602402CA;
 Fri, 11 Mar 2022 21:04:17 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v6 0/6] Add sata nodes to rk356x
Date: Fri, 11 Mar 2022 22:03:51 +0100
Message-Id: <20220311210357.222830-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: c2271224-4634-4d57-8dd2-2e15f21c9f88
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_130428_447452_9B590EA3 
X-CRM114-Status: GOOD (  14.66  )
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

---

v6:
  - add fix for spear1340
  - fix indentation of examples
  - add compatible marvell,berlin2-ahci
  - change maximum of ports-implemented
  - add select to exclude qcom compatibles
  - drop marvell,armada-380-ahci
    it is not handled in the ahci-platform.c but ahci_mvebu.c
    and incompatible due to missing phys/target-supply

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

Frank Wunderlich (6):
  dt-bindings: ata: ahci-platform: Convert DT bindings to yaml
  arm64: dts: marvell: Fix anyOf conditional failed
  ARM: dts: spear13xx: Fix sata node name
  dt-bindings: ata: ahci-platform: Add power-domains property
  dt-bindings: ata: ahci-platform: Add rk3568-dwc-ahci compatible
  arm64: dts: rockchip: Add sata nodes to rk356x

 .../devicetree/bindings/ata/ahci-platform.txt |  79 --------
 .../bindings/ata/ahci-platform.yaml           | 189 ++++++++++++++++++
 arch/arm/boot/dts/spear1310.dtsi              |   6 +-
 arch/arm/boot/dts/spear1340-evb.dts           |   2 +-
 arch/arm/boot/dts/spear1340.dtsi              |   2 +-
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
 17 files changed, 250 insertions(+), 84 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
 create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
