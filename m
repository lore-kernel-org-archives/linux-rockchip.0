Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF26C19F32
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 05:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=INawq9pGQjAwjOyUIUsXTs+t/dp7RgbEomDe9e4vv+c=; b=Oe0cBtIe7XXdbnK8xUbjNYVqkn
	sF5Wp5zLKnwkvHuE4aEiTbRIZrPm/sSl/upAzv5LAgFay+Nn3eWyQ+yZ+rM9/23g647YV35cijcrt
	j6aaS5uW7ZLnF+3RfEH21gRYAPpkoNJOhSeZxC6V4pGr25lnJl0+y1DjzCMsQnsDM+Z4KUZj3FQ6W
	P4Fdz4xAYKEmwRGV4kVCasLDrGIZi5vt2tcOfaQ0mu3byGYA3uJblmPHAfNi1iUzDfib+G4aoxOu6
	vcXdWw0UJpHlem5wD2vwjO6Rf89JJGg3GniA9Rj4ysTMbfeYkuPbW9acR7MGdKUPTWmHEYkyPVxZ1
	zLibnxDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnWF4-00000006Lpl-0hfg;
	Thu, 27 Feb 2025 05:15:26 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnWDV-00000006LcD-0fnZ;
	Thu, 27 Feb 2025 05:13:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1740633224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jKlLjUCYt/7C/aUqa8V29qM6zcYxyzNvO3oU1xinEp8=;
	b=rnXDS1ITz7j5pdL6P+8n7fNPA479Gk8yJfvWPtE2+/sE/I/iwGI2FIj0MSQFyctqGhw+xg
	y/T92ZXJYsG9mjVaM9rAiZcANtjdpMkb55uSkqiIUWhh/WBUKyJ3wcK3ywnLWuzAfkkBsj
	Tg5vHQfSKvJ+RsfnpNnVkAKv6srOknOdZg5lHdVk4SyyQEPketV3SZyjMBNhGZSnLGgTpA
	V7+6iO8krA2trQOxU2frbjjxPzIMrjonr+T2a87mKMXzVWyttGhnltPsHpEPbnr6GWTog7
	OGJD0CQO8MefGCjC2Ff1T5IX61kTxJUSaDPY7ijjXEdF2v2bF2aEQNbtvw7jJQ==
Date: Thu, 27 Feb 2025 06:13:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dse@thaumatec.com, Heiko Stuebner
 <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add overlay for tiger-haikou
 video-demo adapter
In-Reply-To: <20250226140942.3825223-4-heiko@sntech.de>
References: <20250226140942.3825223-1-heiko@sntech.de>
 <20250226140942.3825223-4-heiko@sntech.de>
Message-ID: <9cfe09a2dc108ddac16368687d43e88d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_211349_514019_277A25AE 
X-CRM114-Status: GOOD (  14.67  )
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

Hello Heiko,

On 2025-02-26 15:09, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> This adds support for the video-demo-adapter DEVKIT ADDON CAM-TS-A01
> (https://embedded.cherry.de/product/development-kit/) for the Haikou
> devkit with Tiger RK3588 SoM.
> 
> The Video Demo adapter is an adapter connected to the fake PCIe slot
> labeled "Video Connector" on the Haikou devkit.
> 
> It's main feature is a Leadtek DSI-display with touchscreen and a 
> camera
> (that is not supported yet). To drive these components a number of
> additional regulators are grouped on the adapter as well as a PCA9670
> gpio-expander to provide the needed additional gpio-lines.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

The additions to the Makefile introduced in this patch are looking
good to me, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org> # Makefile

> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   5 +
>  .../rk3588-tiger-haikou-video-demo.dtso       | 153 ++++++++++++++++++
>  2 files changed, 158 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index db6017272ff1..4cddb5d2807d 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -158,6 +158,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou-video-demo.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-coolpi-4b.dtb
> @@ -214,3 +215,7 @@ rk3588-rock-5b-pcie-ep-dtbs := rk3588-rock-5b.dtb \
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtb
>  rk3588-rock-5b-pcie-srns-dtbs := rk3588-rock-5b.dtb \
>  	rk3588-rock-5b-pcie-srns.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou-video-demo.dtb
> +rk3588-tiger-haikou-video-demo-dtbs := rk3588-tiger-haikou.dtb \
> +	rk3588-tiger-haikou-video-demo.dtbo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
