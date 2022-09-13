Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2233DC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 10:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUOFqkGXDaSrDD7mGXn8KLf07dISxoKPJxi+VhCYUDE=; b=hjIoXnY5BhJlIo
	0U53vqC4ihCnaGnCk77Rz7nX/Oba7+o32H/90WahmtY6zL/eR3v04aiUEg0D6k1TSeyDWerEMFUBy
	MuaNfb5F96BVYFXRdRhltflt65+HG3evIjaIcyDPqwOT3ZAml6rV4vAdBD3WdHbAtFRTDQ7xB1E60
	qLHtO7H5ImvImXe0AownB2olyUB3x4jzWf41PPO69Y/FGDzwS/U5mSLae3cN49Kw2EziwJyEigUzl
	9pdIDNc7oo902Ux8/9YUdc4J9HY/gRCW3T03crGxsQRKV69QlZQYzKVFcxdj0THPK+w9qFzzqvmx/
	h0S+crwF+o13v0UYf0Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY39r-006Z25-MK; Tue, 13 Sep 2022 10:28:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY33Y-006Swz-CL; Tue, 13 Sep 2022 10:22:19 +0000
Received: from [185.122.133.20] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oY33V-00045I-Cl; Tue, 13 Sep 2022 12:22:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Tianling Shen <cnsztl@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
Date: Tue, 13 Sep 2022 12:22:11 +0200
Message-ID: <7426763.EvYhyI6sBW@phil>
In-Reply-To: <20220911040628.13774-1-cnsztl@gmail.com>
References: <20220911040628.13774-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_032217_792773_F9E03312 
X-CRM114-Status: GOOD (  22.12  )
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

Am Sonntag, 11. September 2022, 06:06:28 CEST schrieb Tianling Shen:
> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> stores the MAC address.
> 
> FriendlyElec ship two versions of the R4S [1]: The standard as well
> as the enterprise edition with only the enterprise edition including
> the EEPROM chip that stores the unique MAC address.

This needs to go differently.

If the eeprom is only preset on the enterprise-version, you need
a separate devicetree for it, that provides the eeprom node.

Declaring the eeprom "in error" on a device that doesn't have it,
isn't the way to go.

Look for example at rockchip/rk3399-nanopi-m4b.dts for reference
on how to do it - and also remember to add the new binding
for that board. And can also again declare the correct mac-address
cell.


Heiko

> 
> 1. https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R4S#Differences_Between_R4S_Standard_Version_.26_R4S_Enterprise_Version
> 
> Changes in v4:
> - Removed `mac-address` cell as it breaks the standard edition
> 
> Changes in v3:
> - Added address-cells and size-cells
> 
> Changes in v2:
> - Added the size of EEPROM
> - Added `mac-address` cell to pass the MAC address to kernel
> - Removed `read-only` property in EEPROM node
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index fe5b52610010..42c99573ab27 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -68,6 +68,17 @@ &emmc_phy {
>  	status = "disabled";
>  };
>  
> +&i2c2 {
> +	eeprom@51 {
> +		compatible = "microchip,24c02", "atmel,24c02";
> +		reg = <0x51>;
> +		pagesize = <16>;
> +		size = <256>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
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
