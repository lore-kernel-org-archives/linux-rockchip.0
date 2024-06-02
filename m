Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534ACC25B74
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jun 2024 21:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiUy1wupxQSVxwisUtqW7+fIyEQO9kZHbzmJWoBM8Qg=; b=fkp+x3S/P0bIE9
	K5j/0bXGstfa4zuUG2L6WG0rYeqigD1jZGg0IBO4N7RgWYdVfMzucDSKc0EPD3tbFaLRWy4Al1O1k
	Tc9x2UNgPjE4g+Xd6Ece0SPPr0qFVtzkaVF5B5/EgFN/7nK9GRg1LVbr2N3XYpsYEadMvlVXwvf16
	0lqGqQDd7hH8JrZAsOn64LJsEpmaLMYyeALxUD9A7/CKK/dY2tN0XAxhwsVikTDZ6PRqGJx9ZLfRP
	fQrEfj+RX5PNyTxIaKONYSnXb+C3ayTW3kJJqRxBTLSXscsyuw8HPpquq0hWoBHzn/rWv0p9Iodyn
	6/GgAnLg/TnnaG2Y9gkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDsf3-0000000Ex4S-1cYE;
	Sun, 02 Jun 2024 21:22:41 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDsey-0000000Ex18-133C;
	Sun, 02 Jun 2024 21:22:37 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id 5EC0C240AF1;
	Sun,  2 Jun 2024 23:22:33 +0200 (CEST)
Received: from postfix03.mail.de (postfix03.bt.mail.de [10.0.121.127])
	by shout02.mail.de (Postfix) with ESMTP id 3D0A3240BF0;
	Sun,  2 Jun 2024 23:22:33 +0200 (CEST)
Received: from smtp01.mail.de (smtp04.bt.mail.de [10.0.121.214])
	by postfix03.mail.de (Postfix) with ESMTP id 1AC1C80065;
	Sun,  2 Jun 2024 23:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1717363353;
	bh=QGydLqg5nD7goLUdbsX1bHCF1IzK/yJxggqZg1PvGhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=JiLWe6aOXiY8MqxPHwwnpommmxQuAzd9xnFV9HqgiODg0WYoFanwH2ubKSGTvfQAn
	 r1EYSOfAzkEt2yOmIQmLqProJwZRKOVjSt9LEWzs2B75Q0mVv+5hCftr8cShGio/Ef
	 K0BXKnT3UOUxAYfX98s2xDdOMHCzHDzmchEev/TkUqkUubgFs/ehDMukTuWlOX+MSO
	 IqQco5uLmKjzJVL2aHtgGiJsoUmFUCF6xB/zA+l/6Hb2HOWq9Q9u5tSkohwQK8pNT0
	 gclExeVxIc9FrsrZ7ipI0UViFgfF92OO67qdWre1j4AAiHeUYPlSuSTuOkNFhlnUpI
	 1u4H5WACYCLtA==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 1721F2409AB;
	Sun,  2 Jun 2024 23:22:28 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Kropatsch <seb-dev@mail.de>
Subject: [PATCH v2 0/2] RK3588: FriendlyElec CM3588 NAS board support
Date: Sun,  2 Jun 2024 22:08:18 +0200
Message-ID: <20240602211901.237769-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2883
X-purgate-ID: 154282::1717363352-1CB7D338-9AE4CCBC/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_142236_480604_3FC71A1C 
X-CRM114-Status: GOOD (  18.42  )
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
Since the hardware has similarities with FriendlyElec's NanoPC T6, the
device tree for the CM3588 NAS took some inspirations from and also
partially shares some sections with the NanoPC T6 tree.

Minor issue:
The device enumeration of NVMe SSDs plugged into the four PCIe M.2 slots
does not follow the order of the slots on the board: The slots are
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
warnings or errors, tested on Linux next-20240523.

Best regards,
Sebastian Kropatsch
---

Changes in v2:
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
 .../rk3588-friendlyelec-cm3588-nas.dts        | 705 ++++++++++++++++++
 .../rockchip/rk3588-friendlyelec-cm3588.dtsi  | 660 ++++++++++++++++
 4 files changed, 1373 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
