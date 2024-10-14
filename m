Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF5BECFC500
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 07:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prZdQWAf9vsMMc0Sy2LlMzwvkQoalF9M+8vBs6y2XW4=; b=ecSfcV7MQ7bqfu
	PE1XkyEJ6pQBSwaCR22IDENxjx8SdRyJFbjUDAraSw49dAi5grV2x8Xa1ntIa+34FJiCQA3sN74Mb
	nmc0uTCPB74SvyZmuzSwrQVkY1GDd7PiAAYyKoxQtDf3J6gQpgqOGY0UZa8LwKFiZ1LGx9p9BK2Fo
	mDfJkPxJhADcB5TeaLcDUjIkkhSX40shD+SaTrO/90oh6kkChrQXJA0kmWQSwjKYoDar3yzpXTvI+
	Dom6WLyMmdlfvJRO+wYhP/jPWb+UmiCP40IjgYFGhsjuaGnk4ndrFY2iIzCo5q8VOn/WGTHhrimyZ
	dJIaLaRg9aZzQeveRygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FU3-000000043Oa-19om;
	Mon, 14 Oct 2024 07:27:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FSR-0000000435p-3o93;
	Mon, 14 Oct 2024 07:25:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 25D9FA4142A;
	Mon, 14 Oct 2024 07:25:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F8FC4CEC3;
	Mon, 14 Oct 2024 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728890734;
	bh=630SvYBhr24ZHoxQA3bnVprNqH9zzbLIObPGLAZTqE8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ePnl1BlaY3WYALF6Prgh22s0VdMLxU874Zzun9kHdOatYzYN4wHDkVRtA5usIrb6d
	 w69NwTm7Xh+WsBCsLn8pC9/r5xrs+/RneVsXhIOjOuGVDQQMi7rHhtXNPv3pBh5DIZ
	 WjqLUJ3g2vK4tJIyjUFtNGpaRp/dV0ByFIqP41DR6SurPamaJVDs2ocqwSPfOZZ+0z
	 DVVY5/vQ/u8rl4EuN3nQ0COSOSsr66SaQAu/Mu6tXiRs56ghMIt10Y7PRvX9UpUQx2
	 yALZbgrSScG64Jg0hHlIVpteDH2XUh83xMDsqLuZPlNUN26c0bsgkYvYKeHVBmrB+U
	 LVUi9q0jPMGqQ==
Date: Mon, 14 Oct 2024 09:25:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Andy Yan <andyshrk@163.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Jing Luo <jing@jing.rocks>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
Message-ID: <owh5aru62opaqeyjmcmhqeljafpql52rfhulfpptwp3vutgrgf@bol6fkrxt33q>
References: <20241013213305.310844-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241013213305.310844-1-cenk.uluisik@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_002536_102322_9ADCBF58 
X-CRM114-Status: GOOD (  22.95  )
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

On Sun, Oct 13, 2024 at 11:32:36PM +0200, Cenk Uluisik wrote:
> Implements a slightly modified rk3588s-orangepi-5b.dts from the vendor.
> Unfortunately the &wireless_bluetooth and &wireless_wlan overlays don't seem
> to compile, so I removed them for now:
> 
> Error: arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts:20.1-20 Label or path wireless_bluetooth not found
> Error: arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts:24.1-15 Label or path wireless_wlan not found
> 
> Bigger parts of the rk3588s-orangepi-5.dts file were moved into a new
> rk3588s-orangepi-5.dtsi file, so that both device trees from the orangepi-5 and 5b include from it and avoid including from the .dts.
> 
> How does this board differ from the original Orange Pi 5?
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates from within the eMMC
>     storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Beside that everything is exactly the same as far as I know.
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 776 +-----------------
>  ...orangepi-5.dts => rk3588s-orangepi-5.dtsi} |   5 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  18 +
>  4 files changed, 30 insertions(+), 770 deletions(-)
>  rewrite arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts (99%)
>  copy arch/arm64/boot/dts/rockchip/{rk3588s-orangepi-5.dts => rk3588s-orangepi-5.dtsi} (99%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts


> \ No newline at end of file

Hm?

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
> similarity index 99%
> copy from arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> copy to arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
> index feea6b20a6bf..739c4d9f58e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
> @@ -10,9 +10,6 @@
>  #include "rk3588s.dtsi"
>  
>  / {
> -	model = "Xunlong Orange Pi 5";
> -	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
> -
>  	aliases {
>  		ethernet0 = &gmac1;
>  		mmc0 = &sdmmc;
> @@ -763,4 +760,4 @@ &usb_host1_ohci {
>  
>  &usb_host2_xhci {
>  	status = "okay";
> -};
> +};
> \ No newline at end of file

And here


> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> new file mode 100644
> index 000000000000..049227af0252
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-orangepi-5.dtsi"
> +
> +/ {
> +	model = "Xunlong Orange Pi 5B";
> +	compatible = "rockchip,rk3588s-orangepi-5b", "rockchip,rk3588";

Bindings are before users.

> +};
> +
> +&sdhci {
> +	status = "okay";
> +};
> +
> +&sfc {
> +	status = "disabled";
> +};
> \ No newline at end of file

Patch errors here and in other places.

> -- 
> 2.46.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
