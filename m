Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D513C27C53
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 22:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jjN3/S/+mp9k3ORo26kvL30/eJfkzl/QBwR3n3hU30=; b=YnSFxwgiPkB+aD
	K1iHErLizu8Ly1d+dQU/2yDj/Hg3ihycP1KDAkE1L6haZhFAju9mYpFR82TRGBdFqnaqkpwiVImk9
	mxswaBs69lNAAB5iGsAAAVJZSB9rsoRxfAGZgJLGUhiUmINcncvghi2/koIzHGF+Et/3hITxRk7UE
	VGgr14zLRlFL9IFEiGJF7j3ob9DLo1dA0Ley1u7iUKxEmPGSVUcgp+57EDEZGTu9BbOF7RSw+u5Jy
	Q8KF4c6lpQN6UDuBndMrT7tt5dGHOYiNQLBMHv25OXBntwDxG+EPmAb/1sBtjZaaFvlpIg7HiIyjB
	ZB1eUuZrll3KzwHupKLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIyAK-00000008Q6R-1vJ8;
	Sun, 16 Jun 2024 22:16:00 +0000
Received: from shout11.mail.de ([2001:868:100:600::f153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIyAH-00000008Q5e-0nNp;
	Sun, 16 Jun 2024 22:15:58 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout11.mail.de (Postfix) with ESMTPS id 88A70240BD1;
	Mon, 17 Jun 2024 00:15:55 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout02.mail.de (Postfix) with ESMTP id 6C679240BC7;
	Mon, 17 Jun 2024 00:15:55 +0200 (CEST)
Received: from smtp01.mail.de (smtp02.bt.mail.de [10.0.121.212])
	by postfix01.mail.de (Postfix) with ESMTP id 4C924801B2;
	Mon, 17 Jun 2024 00:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718576155;
	bh=rPKyJRPNQHEri6DUYtwLA2PV9+52zslI4JC0bsjOPsQ=;
	h=Message-ID:Date:Subject:From:To:Cc:From:To:CC:Subject:Reply-To;
	b=7GQbT9Sk2GkiUaYehTt0B0nbQpIuKnRTk/ZgBTts8tH7l6aOTqWBidPwkY7z+TbV5
	 fHq0eaRWpkBTOg6JGqRhQcC1DCWPxiPkM9oJ+1TEYALrKr60gUIH50MPhnVcD3fkgi
	 TqhQ65SaVB3nCSazMkkQhlnUqVV0xIMxQkYqiinQDeSMuJkp3NWfNTmgO4CSSbooHS
	 4kxwil1aboGibj79OnC1n/pnQpmRYCCd6NvG7hz066TlGQTiAkOj4pHnHgYAIzyfho
	 7ZF5gILFkHXFd8TE6jhfDpTYr4kLXqtqbeLOxSEEp1tEXWXmyerzE2Q45Ssp1DAvP8
	 LJJZR27jM/x6A==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id B1C65240A21;
	Mon, 17 Jun 2024 00:15:54 +0200 (CEST)
Message-ID: <fd3652a6-d84e-4715-b114-c174fdde33c1@mail.de>
Date: Mon, 17 Jun 2024 00:15:54 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] RK3588: FriendlyElec CM3588 NAS board support
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240616215354.40999-1-seb-dev@mail.de>
In-Reply-To: <20240616215354.40999-1-seb-dev@mail.de>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 4287
X-purgate-ID: 154282::1718576155-9252C878-2F03AADF/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_151557_417965_56589A6F 
X-CRM114-Status: GOOD (  30.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Apologies for any confusions, this patch series is v4. The correct
subject line is:
[PATCH v4 0/2] RK3588: FriendlyElec CM3588 NAS board support
Apparently "git send-email -v4" doesn't add the version tag if you
haven't already added it with "git format-patch" :)

Cheers,
Sebastian

Am 16.06.2024 um 23:48 schrieb Sebastian Kropatsch:
> Hello!
> 
> This adds support for the FriendlyElec CM3588 NAS board.
> The board's device tree makes use of the latest upstream advances on the
> RK3588 like USB3 DRD and GPU support as well as the latest Rockchip PCIe
> driver bifurcation fixes, but some features such as thermal management
> and HDMI will have to be added later when SoC support for these features
> is merged.
> 
> Issues:
> 1) pcie3x4 BAR 1 fails to assign, see dmesg:
>     pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
>     pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
>     pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign
> 
> 2) The device enumeration of NVMe SSDs plugged into the four PCIe M.2
> slots does not follow the order of the slots on the board: The slots are
> physically named from 1 to 4, top to bottom. However, they do not show
> up in this same order in Linux when all slots are polulated:
>     - SSD in physical slot 1 shows up as nvme0
>     - SSD in physical slot 2 shows up as nvme2
>     - SSD in physical slot 3 shows up as nvme1
>     - SSD in physical slot 4 shows up as nvme3
> This is the same order in which the data lanes are mapped for PCIe
> bifurcation (dts property: data-lanes = <1 3 2 4>).
> I could not solve this by using aliases for the PCIe nodes in the device
> tree. Perhaps this is something that can only be solved at driver level?
> I am not sure if this behaviour is even considered a bug or if this is
> intended behaviour by design.
> 
> Devicetree validation:
> `make CHECK_DTBS=y rockchip/rk3588-cm3588-nas.dtb` does not give any
> warnings or errors, tested on Linux next-20240613.
> 
> Cheers,
> Sebastian
> 
> ---
> 
> Changes v3 -> v4:
> - add pwm-beeper node
> - add ir-receiver node
> - leds: remove deprecated label props
> - usbdp_phy0: add mode-switch prop
> - minor fixes/comments
> - collect r-b tag for patch 2
> - v3: https://lore.kernel.org/linux-rockchip/20240609222428.134977-1-seb-dev@mail.de/
> 
> Changes v2 -> v3:
> - add vmmc-supply and vqmmc-supply to &sdhci
> - remove duplicate combphys
> - add 4 times the same regulator for PCIe to reflect the schematics
> - fix USB vcc_5v0_host_30_p2 to use 5V as per schematics
> - usb-c-connector: disable sink power delivery, enable only source mode
> - &u2phy0_otg: add phy-supply
> - rename some nodes
> - minor fixes and some additional helpful comments (some sugg. by Space Mayer)
> - collect a-b tag for patch 1
> - v2: https://lore.kernel.org/linux-rockchip/20240602211901.237769-1-seb-dev@mail.de/
> 
> Changes v1 -> v2:
> - split dts into two files (CM and carrier board)
> - rename fixed regulators with preferred 'regulator-' prefix
> - use preferred 'gpios' property instead of 'gpio'
> - add 'pinctrl-names' property for every pinctrl
> - add several pwm nodes
> - drop HMDI PHY and VOP support
> - drop unneeded &wdt node
> - remove i2c4 since it's not availabe according to the schematics
> - &sdhci: drop 'full-pwr-cycle-in-suspend' flag
> - &sdmmc: drop 'cap-mmc-highspeed' flag because of no-mmc
> - &sdmmc: drop 'cd-gpios' property, unneeded w/ using sdmmc_det pinctrl
> - &usb_host0_xhci, &usb_host2_xhci: remove default 'dr_mode' property
> 
> ---
> 
> Sebastian Kropatsch (2):
>    dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
>    arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../rk3588-friendlyelec-cm3588-nas.dts        | 778 ++++++++++++++++++
>   .../rockchip/rk3588-friendlyelec-cm3588.dtsi  | 653 +++++++++++++++
>   4 files changed, 1439 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
