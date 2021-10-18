Return-Path: <SRS0=X3cf=PG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 827E2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 16:49:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57A69610E8
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 16:49:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 57A69610E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8qSj8mhl3WKhIZJ8YUkQ9fuyVYJbhcF0jWlAbeRD4M=; b=gVny4EVCBnBAnH
	qIYZfnAE1hpvv4OeO57gYd1VPIQzp+pQ/7G2O1TT6aGV1m4z4Il95M4IvkDwPcGbGY+SWK3WE6xcJ
	BEMQjnE+mK8e2BX8pBD0joXgymmn5PB1xe65yiugTaPcxwBq9r2yGLX0yuMmWo5G5DKMTdigRM3TX
	aWVWmc4HglKjnFJWshdeWNe5J0hLSpA9misz1/zulfZ+hS2mw0SY8vSzYLYciioOLWi7+dpJNTKAa
	eYqOhnIhhwasYm7eExU+l4kbJiWd575EznX+bYLDW/SughFBMlaIBVdtuahXTmpuLWqwpeKcuiVp7
	7axCxWkaiuky48mD3xYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcVp8-00GYRe-2e; Mon, 18 Oct 2021 16:49:18 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcVp4-00GYPn-MU; Mon, 18 Oct 2021 16:49:16 +0000
Received: by mail-lf1-x135.google.com with SMTP id t9so1113969lfd.1;
 Mon, 18 Oct 2021 09:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SH0kHI8q3C1h2KdyVaYHMPS3/G5O58tP5UqzMH9EraU=;
 b=Eo1YvWYvah4YBUTfa9fZS9I5YsX6WULFGARs9Szh/UiAoIktedhxl07McLaAjTp93h
 QGSSMJhNPl70xrmINq9T1rO+IvppGW+XWLFVhJaYc7wZhD3dGXYo8jvuJ4GH2NFD+LlK
 TAxj45c3VHqomjxZggSgM1fvjFMBUyAXqUeoEFVBnrBvUobeeNdqnIlUFUPoIq7AJPb/
 r7m74Za5dNMs3B/EiIkK2un9BdsbDec5EMhu9dc5EoZvibN6Oiquc4CyII24ZVFu1j6a
 zAqesXip+V+4F6lq06aSipK9/XfRZat1IFMQGBFuSLWSOWQ50qyHGYMLpyiiIYT2XiB2
 vCJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SH0kHI8q3C1h2KdyVaYHMPS3/G5O58tP5UqzMH9EraU=;
 b=Js9Qlrc8pLDpDZTSzVeKGCfWidlDvdon1mIPZg02XkTdTUk69/CbIklJqEvH3wlC6O
 reV1RBfj2X4tnAFtTVeZ+OB6OpCC5lPGuhYTFFMjLzy6xll13xE9aMpM08wV83Wj85JK
 9DBOb3gCfOJ0M0nuwvPWMQLTVP1XU0ZCHGStAxVwxdJ7cbLB33Y/Sn2E24MlEVQ0DVx5
 V14HroBVWduWoKGL6lsbqzf9SaEjxdzC/Fohr/EA42Cmj6hzLdF9o6IAVe2+Hxd4x4Er
 bfNSgx7b8twEi75iqGCLrNO80XOdJkfB4OMb2Z2rCrPiMSqjZRK8Kx0SbkMnURfQUGVF
 s8ew==
X-Gm-Message-State: AOAM532cHgTKbyWXVNMpIxre8cViKsPqGEtPVeRdEW4Dj4a3jzgB+PsD
 Dt2bRqy2btEHfXLFT/dNUf8=
X-Google-Smtp-Source: ABdhPJw4/WfZL1h2TWZmw+Hog8tO0U9Q77OHUMcEIva5sYFlT867+XKGpU1XH6ZIr+kTks78S378gQ==
X-Received: by 2002:ac2:4f02:: with SMTP id k2mr778622lfr.455.1634575752192;
 Mon, 18 Oct 2021 09:49:12 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r17sm1444035lfe.107.2021.10.18.09.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 09:49:11 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 David Wu <david.wu@rock-chips.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 Cameron Nemo <cnemo@tutanota.com>, Robin Murphy <robin.murphy@arm.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Trevor Woerner <twoerner@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rk3328: add gpu opp table
Date: Mon, 18 Oct 2021 18:49:09 +0200
Message-ID: <3352474.ljgn2FL0hr@archbook>
In-Reply-To: <20211016154548.29555-1-twoerner@gmail.com>
References: <20211016154548.29555-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_094914_800011_AD8D858B 
X-CRM114-Status: GOOD (  20.36  )
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

On Samstag, 16. Oktober 2021 17:45:44 CEST Trevor Woerner wrote:
> Add an operating-points table and cooling entry to the GPU on the
> RK3328 SoC to improve its performance. According to its datasheet[1]
> the maximum frequency of the Mali-450 MP2 GPU found on the RK3328 SoC
> is 500MHz.
> 
> On my rock64 device, under x11, glmark2-es2 performance increased from
> around 60 to just over 100. Same device running glmark2-es2 under
> wayland/weston improved from just over 100 to just over 200.
> 
> [1] https://rockchip.fr/RK3328%20datasheet%20V1.2.pdf
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 26 +++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi index 8c821acb21ff..5e1dcf71e414
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -532,7 +532,8 @@ map0 {
>  					cooling-device = <&cpu0 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>  							 <&cpu1 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>  							 <&cpu2 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu3 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +							 <&cpu3 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&gpu 
THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>  					contribution = <4096>;
>  				};
>  			};
> @@ -617,6 +618,29 @@ gpu: gpu@ff300000 {
>  		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>  		clock-names = "bus", "core";
>  		resets = <&cru SRST_GPU_A>;
> +		operating-points-v2 = <&gpu_opp_table>;
> +		#cooling-cells = <2>;
> +	};
> +
> +	gpu_opp_table: gpu-opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <1100000>;
> +		};
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-microvolt = <1100000>;
> +		};
>  	};
> 
>  	h265e_mmu: iommu@ff330200 {

As for whether this works as described on a ROCK64 for glmark2-es2-wayland:

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

There is some stuff worth noting that LibreELEC does on this SoC[1]:

1. they use 1.05V for all OPPs up to and including 400 MHz
2. they run 500 MHz at 1.15V instead (though 1.10V seemed to work for both of 
us)
3. they disable 500 MHz because 1.15V was apparently too high for rkvdec.

3 is currently not very relevant because mainline Linux has no rkvdec node in 
the rk3328 dtsi, and we're not running at 1.15V.

I've decided to add their rkvdec dtsi patch[2] on top anyway, and saw no 
complaints from the rkvdec module while glmark2-es2-drm was running. However, 
it's not like I tried to actually hardware decode video while it was running 
because the userspace situation still won't let me without compiling entirely 
too much stuff from git. Though the rkvdec module was loaded and present.

[1]: https://github.com/LibreELEC/LibreELEC.tv/commit/
9a6be0d36ba7ff3c3d5df798682d47a1de594ac0
[2]: https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/
patches/linux/default/linux-1001-v4l2-rockchip.patch#L860-L935




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
