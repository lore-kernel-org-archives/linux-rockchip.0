Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05403C27C79
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 21:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XQbwCxxpUnASz801Dt4eoQdiH1bzURWXHnlL6dRfrF0=; b=zAyTNzbvJvpl9k
	tuKxfbN2g1yjFlhHbQcMx7ZnkAbGfjwed82hLnefu9NA9yBaPP3LUgzxDHXIB7fM0M9zf3EsRuAZN
	vvoaECu7yorAb8hQMgubDHWPVt5ag+tpcj//zmNn12FgCb9fKdEGZNPYgcKlMeHsX77CQuF8Ip1dJ
	sQJBTyNzEfF06OxBTFzOJZqFRSrW8tKTh6scCe+8ihcawpq5qW47leR2OzxV8AjnafKjZ58m21nb4
	sgyTDRX60i1HO2bvMoBA9TBBOlfKN9lS3YgMamlvM5UVDOVWm8IQG3gFabDTHOkYtziABNdqejR0D
	aBeUaWdRBnj3LTyhL/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIxsh-00000008Nok-3srD;
	Sun, 16 Jun 2024 21:57:47 +0000
Received: from shout11.mail.de ([2001:868:100:600::f153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIxsd-00000008NlF-0M4G;
	Sun, 16 Jun 2024 21:57:44 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout11.mail.de (Postfix) with ESMTPS id 108F2240BD1;
	Sun, 16 Jun 2024 23:57:38 +0200 (CEST)
Received: from postfix03.mail.de (postfix03.bt.mail.de [10.0.121.127])
	by shout01.mail.de (Postfix) with ESMTP id E3765240D0B;
	Sun, 16 Jun 2024 23:57:37 +0200 (CEST)
Received: from smtp01.mail.de (smtp04.bt.mail.de [10.0.121.214])
	by postfix03.mail.de (Postfix) with ESMTP id BDAE880226;
	Sun, 16 Jun 2024 23:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718575057;
	bh=VA9M7v4eEcTFIGe9sguFMYB03s/n6Nk/uy2b91FlJMk=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=G4coktvcMtVw+tiddomq0c4jR1B1K91yJqg+f3MKtBTyIV9RMBs3oHFqWRqS3zCdR
	 2P0cHlWoM5so8+2k+ARxneMpqCsHp08mDZ3svfHSJz2rWQeD4zL2NKORyMR5R4Dr3K
	 ioQ/+TYCCwGecvpbXZ242PELgeFTrJutrMGsoEYw2LecLKqMM/KOfYEu50762G1h9K
	 golqrngvpN3fLsU1qXpblqLG1YMsmAmv213Y4IszVGbu1FiUH7ysh3S9gHzamvYY4O
	 Ozw/+stSXpcHMHiw8+XFnsYLKu/0GdQeNynt9hN54jZj0Bp0CeX0NkEacotkh8jn1o
	 orxecWhCs/3bg==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 79138240AC4;
	Sun, 16 Jun 2024 23:57:33 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] RK3588: FriendlyElec CM3588 NAS board support
Date: Sun, 16 Jun 2024 23:48:28 +0200
Message-ID: <20240616215354.40999-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 3762
X-purgate-ID: 154282::1718575057-057EB338-7BB368A9/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_145743_447543_A2EF1D52 
X-CRM114-Status: GOOD (  19.44  )
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

Hello!

This adds support for the FriendlyElec CM3588 NAS board.
The board's device tree makes use of the latest upstream advances on the
RK3588 like USB3 DRD and GPU support as well as the latest Rockchip PCIe
driver bifurcation fixes, but some features such as thermal management
and HDMI will have to be added later when SoC support for these features
is merged.

Issues:
1) pcie3x4 BAR 1 fails to assign, see dmesg:
   pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign

2) The device enumeration of NVMe SSDs plugged into the four PCIe M.2
slots does not follow the order of the slots on the board: The slots are
physically named from 1 to 4, top to bottom. However, they do not show
up in this same order in Linux when all slots are polulated:
   - SSD in physical slot 1 shows up as nvme0
   - SSD in physical slot 2 shows up as nvme2
   - SSD in physical slot 3 shows up as nvme1
   - SSD in physical slot 4 shows up as nvme3
This is the same order in which the data lanes are mapped for PCIe
bifurcation (dts property: data-lanes = <1 3 2 4>).
I could not solve this by using aliases for the PCIe nodes in the device
tree. Perhaps this is something that can only be solved at driver level?
I am not sure if this behaviour is even considered a bug or if this is
intended behaviour by design.

Devicetree validation:
`make CHECK_DTBS=y rockchip/rk3588-cm3588-nas.dtb` does not give any
warnings or errors, tested on Linux next-20240613.

Cheers,
Sebastian

---

Changes v3 -> v4:
- add pwm-beeper node
- add ir-receiver node
- leds: remove deprecated label props
- usbdp_phy0: add mode-switch prop
- minor fixes/comments
- collect r-b tag for patch 2
- v3: https://lore.kernel.org/linux-rockchip/20240609222428.134977-1-seb-dev@mail.de/

Changes v2 -> v3:
- add vmmc-supply and vqmmc-supply to &sdhci
- remove duplicate combphys
- add 4 times the same regulator for PCIe to reflect the schematics
- fix USB vcc_5v0_host_30_p2 to use 5V as per schematics
- usb-c-connector: disable sink power delivery, enable only source mode
- &u2phy0_otg: add phy-supply
- rename some nodes
- minor fixes and some additional helpful comments (some sugg. by Space Mayer)
- collect a-b tag for patch 1
- v2: https://lore.kernel.org/linux-rockchip/20240602211901.237769-1-seb-dev@mail.de/

Changes v1 -> v2:
- split dts into two files (CM and carrier board)
- rename fixed regulators with preferred 'regulator-' prefix
- use preferred 'gpios' property instead of 'gpio'
- add 'pinctrl-names' property for every pinctrl
- add several pwm nodes
- drop HMDI PHY and VOP support
- drop unneeded &wdt node
- remove i2c4 since it's not availabe according to the schematics
- &sdhci: drop 'full-pwr-cycle-in-suspend' flag
- &sdmmc: drop 'cap-mmc-highspeed' flag because of no-mmc
- &sdmmc: drop 'cd-gpios' property, unneeded w/ using sdmmc_det pinctrl
- &usb_host0_xhci, &usb_host2_xhci: remove default 'dr_mode' property

---

Sebastian Kropatsch (2):
  dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
  arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3588-friendlyelec-cm3588-nas.dts        | 778 ++++++++++++++++++
 .../rockchip/rk3588-friendlyelec-cm3588.dtsi  | 653 +++++++++++++++
 4 files changed, 1439 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
