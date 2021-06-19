Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DB8C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 22:11:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C369E61164
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 22:11:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C369E61164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbPPfaPjdNkGcVG/8NPnBCeFuMupMSEKAjPihFP3yRQ=; b=Pgs0ha0wWYDXxj
	PbLZAyYXzNqK39VOBIQf0INoN7ygud3UDsae9sThThWAGoRLRFTXPknMepZ19iWx575ayBjiqKihB
	kqy1phT0rW0APNCpMgDYsFFQTQ4ab1oXIcJz5RDOSc4afCW0uaRfFvA7o/xhlhzvosm05myAYgH84
	VowMWygsP/dVskOCWJerraeCTundtaEtXl5DGWvBoEqDKMe2q6jCx+J7wOxTGEDXcG3YNbl1Hrxri
	0ZL7y/HzCsmX8KRJiTBqZt+JtQB9kc/DdTZiQ7DjOJY79gwqhr551kG9Lh3nZYth1w4OvXm/kteqW
	HYpLVd3RCnXwEk3y6cig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lujBd-0005Sb-RC; Sat, 19 Jun 2021 22:11:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lujBR-0005Qc-Nh; Sat, 19 Jun 2021 22:11:22 +0000
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lujBJ-0000aH-CD; Sun, 20 Jun 2021 00:11:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Tianling Shen <cnsztl@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Chen-Yu Tsai <wens@csie.org>,
 Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Sun, 20 Jun 2021 00:11:12 +0200
Message-ID: <4448985.BddDVKsqQX@phil>
In-Reply-To: <20210610091357.6780-1-cnsztl@gmail.com>
References: <20210610091357.6780-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_151121_834663_943198D4 
X-CRM114-Status: GOOD (  19.34  )
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

Hi,

Am Donnerstag, 10. Juni 2021, 11:13:57 CEST schrieb Tianling Shen:
> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> stores the MAC address.
> 
> Changes in v2:
> - Added the size of EEPROM
> - Added `mac-address` cell to pass the MAC address to kernel
> - Removed `read-only` property in EEPROM node
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>

this produces errors when building the dtb:
  DTC     arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dtb
../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:84.4-22: Warning (reg_format): /i2c@ff120000/eeprom@51/mac-address@fa:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:83.31-85.5: Warning (avoid_default_addr_size): /i2c@ff120000/eeprom@51/mac-address@fa: Relying on default #address-cells value
../arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts:83.31-85.5: Warning (avoid_default_addr_size): /i2c@ff120000/eeprom@51/mac-address@fa: Relying on default #size-cells value

in the eeprom node you'll need to define #address-cells and #size-cells
for this to work.

Thanks
Heiko


> ---
>  .../boot/dts/rockchip/rk3399-nanopi-r4s.dts    | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index cef4d18b599d..50d3b11eb925 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -68,6 +68,24 @@
>  	status = "disabled";
>  };
>  
> +&gmac {
> +	nvmem-cells = <&mac_address>;
> +	nvmem-cells-names = "mac-address";
> +};
> +
> +&i2c2 {
> +	eeprom@51 {
> +		compatible = "microchip,24c02", "atmel,24c02";
> +		reg = <0x51>;
> +		pagesize = <16>;
> +		size = <256>;
> +
> +		mac_address: mac-address@fa {
> +			reg = <0xfa 0x06>;
> +		};
> +	};
> +};
> +
>  &i2c4 {
>  	status = "disabled";
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
