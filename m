Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B371FC07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 08:24:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46F71613C8
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 08:24:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46F71613C8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzb5F1ECh4PCWNcg/XUrXOi03rcf3HQTzcb3jwgks38=; b=mtuvmTJINfjadr
	VwespVMEe6DXy+xCzYisAZ2z4ji2+5pNavQXHfAOC0BSI9QXlLDaG2IIwWKYesW2uwult4lGh3bn2
	VTId5IiKeRmUbuaCbRL9+zzwezI975gnhzyExnyf1WaTBUSYnQKD459mFX3SnlOr6NAYel0zlt0B5
	m1wCwC82BInY4nxwDSU9i/9tY9oTqfTT8REOs+ShMWFdg8cU3UkjubF+OIaDkpGmh6OGQurMkpY7H
	3tNXxudvLEwjsd1MSbkKh8zNCr3YP4H5VffHnyMHOKQ0TM2Ea1zkpVfsv4Hj6xp44i7rVmE1lJJ3d
	abNKlrBSx0ZgacaCG/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Jtj-008E7f-79; Mon, 05 Jul 2021 08:24:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0Jpv-008CEe-OP; Mon, 05 Jul 2021 08:20:18 +0000
Received: from p5b127e67.dip0.t-ipconnect.de ([91.18.126.103]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m0Jpr-0008HJ-Q8; Mon, 05 Jul 2021 10:20:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org, jagan@amarulasolutions.com,
 xiaobo <peterwillcn@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 xiaobo <peterwillcn@gmail.com>, Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: arm64: make the system run light
 heartbeat
Date: Mon, 05 Jul 2021 10:20:10 +0200
Message-ID: <2067728.irdbgypaU6@phil>
In-Reply-To: <20210705050614.75564-1-peterwillcn@gmail.com>
References: <20210705050614.75564-1-peterwillcn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_012015_896686_FD541C70 
X-CRM114-Status: GOOD (  20.95  )
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

Am Montag, 5. Juli 2021, 07:06:14 CEST schrieb xiaobo:
> Make the system run light heartbeat, remove the wrong supply voltage.

as mentioned in the other patch, this patch also does too many things
at once ... and includes unrelated changes like removing that FriendlyElec
header from the top comment.

Similarly a commit message should explain the "why" the change is needed.
The file previously defined 3 LEDs, with your change only 2, so does the
board only have 2 LEDs?

And when you're removing the vcc3v3 supply voltage, this should be
a separate patch and describe why defining that voltage is wrong.


Also please version your patches, as I got this patch 2 times with
1 hour distance, without any mention what changed between them.

The way this should look like is:

----- 8< -----
[PATCH v2] arm64: dts: ...

Commit message

---
changes in v2:
- foo

 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 49 ++++++-------------
 1 file changed, 15 insertions(+), 34 deletions(-)
[...]
----- 8< -----

> 
> Signed-off-by: xiaobo <peterwillcn@gmail.com>

Also please adjust the Signed-off-by line + patch authorship
to reflect your name :-)

I.e. below we can see
 + * Copyright (C) 2020 Xiaobo Tian <peterwillcn@gmail.com>

so Signed-off-by and author should match this please.

You can set this in the git config globally for future work:
$ git config --global user.name "Xiaobo Tian"
$ git config --global user.email peterwillcn@gmail.com

and also for individual commits that already exist with
$ git commit --amend --author="Xiaobo Tian <peterwillcn@gmail.com>"


Thanks
Heiko



> ---
>  .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 49 ++++++-------------
>  1 file changed, 15 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index fa5809887643..899c6a0fc6a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -1,14 +1,15 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
> - * FriendlyElec NanoPC-T4 board device tree source
> - *
> + * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
>   * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
>   * (http://www.friendlyarm.com)
>   *
> + * Copyright (c) 2016 Arm Ltd.
>   * Copyright (c) 2018 Collabora Ltd.
>   *
>   * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
>   * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
> + * Copyright (C) 2020 Xiaobo Tian <peterwillcn@gmail.com>
>   * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
>   */
>  
> @@ -21,28 +22,6 @@ / {
>  
>  	/delete-node/ display-subsystem;
>  
> -	gpio-leds {
> -		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
> -
> -		/delete-node/ led-0;
> -
> -		lan_led: led-lan {
> -			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> -			label = "green:lan";
> -		};
> -
> -		sys_led: led-sys {
> -			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> -			label = "red:sys";
> -			default-state = "on";
> -		};
> -
> -		wan_led: led-wan {
> -			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> -			label = "green:wan";
> -		};
> -	};
> -
>  	gpio-keys {
>  		pinctrl-0 = <&reset_button_pin>;
>  
> @@ -72,6 +51,18 @@ &i2c4 {
>  	status = "disabled";
>  };
>  
> +&leds {
> +	lan_led: led-1 {
> +		gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> +		label = "green:lan";
> +	};
> +
> +	wan_led: led-2 {
> +		gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		label = "green:wan";
> +	};
> +};
> +
>  &pcie0 {
>  	max-link-speed = <1>;
>  	num-lanes = <1>;
> @@ -80,16 +71,10 @@ &pcie0 {
>  
>  &pinctrl {
>  	gpio-leds {
> -		/delete-node/ status-led-pin;
> -
>  		lan_led_pin: lan-led-pin {
>  			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  
> -		sys_led_pin: sys-led-pin {
> -			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
>  		wan_led_pin: wan-led-pin {
>  			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> @@ -127,7 +112,3 @@ &uart0 {
>  &usbdrd_dwc3_0 {
>  	dr_mode = "host";
>  };
> -
> -&vcc3v3_sys {
> -	vin-supply = <&vcc5v0_sys>;
> -};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
