Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F642C88E4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 09:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM8neJCS/6j9p+7FDa6GjpQrRbSU76lPRUWfeFm93V8=; b=0WAJlChHiawjJ3
	tIwc2w8k/W5bZ+PI5v7AXkK+hzRN/JTzH7RKoHUWKI54YGdV1sWrAImjCvZ5tqPPMTgieRKa8mQjq
	YtPVEauEj0MfbAu68XNxA3rHTxx7BKv22yhdTK16T8cYHXnVzuGZqCEb7x3/ajtmhsfFvJ5K0vUo0
	h4eWWtYflZH9TDHS5uK4Py3uli1t49WdtF7mzWLcs2O3XXgiDGB+FdSLVPvNbKWiPg3P89rpXpRpl
	FuiIRwvg57F3N/OW+BUuBUfdoZcxidPZem1v/m4vAPrYzEGQMqmz1KdRqIgPFrlTLrxSI2ZabwYmb
	Ag2mMMLyuoJcDkYyKUZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xvu-0000000GJ6g-3xjp;
	Fri, 11 Sep 2026 09:52:34 +0000
Received: from out-49.mta0.migadu.com ([2001:41d0:1004:224b::31] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xvr-0000000GJ5J-2Dsd
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 09:52:33 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=23/ENQ5gA857upXkBJbmjsuGG+iGltANLDGDlezshT4=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789120346; v=1; x=1789725146;
 b=Y47QMUxn0TKeXOuEheK0ycl9t9263+tQ83GEl/ItuBW7+Hyc+Qpz6IVPyLsGQYkCU6KCAiid
 gVj7eAaobAmg1BIf/3Cqy6LDdUh4cYf5lYUkdpgh/cNGRZNNhHWHr8PbWmlbGedcFVtgDcG/Qz4
 /Vjj75ZDfz5dORvuzFbMqknb4iAurd1fFuI0iXpc1JZNfVlv7WYUGFqO05h1mxSvxN4XlbvTUlF
 oD36TemK2ca0ixXx6RNDDaFU24W1G+JYQ/0yLso8vvx9DrvpLLkfpChyFjZHcetef0KdawHKcd8
 dYKERR6JsSnROndHTel9FtB0duUJNGL44M+JFIQpFKQoA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 336b87e032570366;
	Fri, 11 Sep 2026 09:52:26 +0000
X-Mizu-Trace-ID: 336b87e032570366
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Fri, 11 Sep 2026 11:52:24 +0200
Message-Id: <DLCE8BRWYCBL.2UH33L4RQMAGN@cknow-tech.com>
Cc: "Sebastian Reichel" <sebastian.reichel@collabora.com>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v5 2/7] arm64: dts: rockchip: describe PCIe RTL8125
 Ethernet on NanoPC-T6
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: <ricardo@pardini.net>, "Heiner Kallweit" <hkallweit1@gmail.com>,
 <nic_swsd@realtek.com>, "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net> <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-2-c1b9e5f10cd6@pardini.net>
In-Reply-To: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-2-c1b9e5f10cd6@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_025231_762560_5120C969 
X-CRM114-Status: GOOD (  16.33  )
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

On Thu Sep 10, 2026 at 10:07 PM CEST, Ricardo Pardini via B4 Relay wrote:
> From: Ricardo Pardini <ricardo@pardini.net>
>
> The FriendlyElec NanoPC-T6 carries two on-board Realtek RTL8125 NICs
> behind pcie2x1l0 and pcie2x1l2.
>
> Describe the fixed function nodes and attach ethernet0/ethernet1
> aliases, so that U-Boot's fdt_fixup_ethernet() can fill in the MAC
> from its ethaddr/eth1addr env. The on-NIC EEPROMs on this board are
> not pre-programmed with a unique MAC, so this gives a stable MAC
> across boots that both U-Boot and the kernel agree on.
>
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 30 ++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index cfdb5c13f8606..550358a756618 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -20,6 +20,8 @@ / {
>  	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
>  
>  	aliases {
> +		ethernet0 = &rtl_eth0;
> +		ethernet1 = &rtl_eth1;
>  		mmc0 = &sdhci;
>  		mmc1 = &sdmmc;
>  	};
> @@ -644,6 +646,20 @@ &pcie2x1l0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie2_0_rst>;

The new pinctrl reference is ``pcie_25glan_perstb_b_pin``, so this patch needs
to be rebased.

>  	status = "okay";
> +
> +	pcie@0,0 {
> +		reg = <0x200000 0 0 0 0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges;
> +		device_type = "pci";
> +		bus-range = <0x21 0x2f>;
> +
> +		rtl_eth0: ethernet@0,0 {
> +			compatible = "pci10ec,8125";
> +			reg = <0x210000 0 0 0 0>;
> +		};

Described on page 23 of the schematic titled '2.5G Ethernet B' and ``U12``
(ie RTL8125BG) is connected to LAN2 which has ``ETH2`` as label on the case.

> +	};
>  };
>  
>  &pcie2x1l1 {
> @@ -660,6 +676,20 @@ &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie2_2_rst>;

The new pinctrl reference is ``pcie_25glan_perstb_pin``.

>  	status = "okay";
> +
> +	pcie@0,0 {
> +		reg = <0x400000 0 0 0 0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges;
> +		device_type = "pci";
> +		bus-range = <0x41 0x4f>;
> +
> +		rtl_eth1: ethernet@0,0 {
> +			compatible = "pci10ec,8125";
> +			reg = <0x410000 0 0 0 0>;
> +		};

Described on page 22 of the schematic titled '2.5G Ethernet A' and ``U10``
(ie RTL8125BG) is connected to LAN1 which has ``ETH1`` as label on the case.

So this results in:
ETH1 -> rtl_eth1
ETH2 -> rtl_eth0

This sounds like a recipe for confusion and/or potential future mistakes.
I think using ``rtl_eth1`` and ``rtl_eth2`` would be less confusing, but
I'm fine with another construct which achieves a similar thing.

Cheers,
  Diederik

> +	};
>  };
>  
>  &pcie30phy {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
