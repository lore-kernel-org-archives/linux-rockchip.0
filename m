Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE1BEE77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 09:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57sOBchIzDMXZk5/FskFsRgzkt0J+JVaWOmJArC94NM=; b=V7QvGAXEsz9kxb
	SMKEek/GbQe/HFlu9bTfYkyn0a1405Rp1NbBrUPEnpCZq0cLvCrWMJ3TAUQxRH4/O6Wsc5bWVX2uO
	JZoWvmBfbqu8mlAm5S4ZrAKuJ+ySIK5GnE2u8m9K6CW/ikHK4CQz8oiEmdthNvKZWP2L1RnFUN8hR
	6Dj8LVjhEI6kSaEZrYONRoC3Xl3mWTaUQPnakDsCT0sSeypcq62iaaUPnPFiNSUyTplXD5dtDR0BP
	N3Kpy49Gi/rk51uROLtJ9ibmcf+GVjoXjBfcNsGO1c77Ixs5k2t3dZ/DHZv2Uu1XvkKBQzmw6oV+z
	jh6RVMfBmrA2vybmu1uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN74T-00000009Uty-3EeD;
	Mon, 16 Dec 2024 09:07:21 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN73J-00000009UgP-3N96
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 09:06:11 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5401c52000dso4315541e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 01:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734339967; x=1734944767; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=udtSUswqtbgNebxnlihB6flWtT4NwCiX5gbi1SwETd5iICmg856PI/XgEpvJ05V+6S
         TVeqFY0k78UYNhdaOqCnb0XKBVDhmnTqAxwzYT1lSXnFoXuP9I+cAEEdsu7fXjjEdSjM
         167XXT1O08/CVYyvR9UkMbXaXsW67bZBA3+IPaudFB8bBN77HOepsZPV6zw368mjsKoo
         XhZlScAhvb65v4IqLWbAr0LQe+xvr2aSAm1rsJlwP7yOoJRz2iRC3uNnrU4dxK8lxDRF
         vVcnnQsPXCkeZcHu9ZGDoCI50t+AH1boQs0vm0v1KHf/ZfXFa1uMjH0Crw7iiD7GXGIK
         a3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734339967; x=1734944767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybFr+xBF+04SsTx9tZHOi4dPPshGyMog5vNkLi99Q50=;
        b=xQLETFaFYelJ2p4ZCfnzhRJjBjQpkYB3XiANdvS3tAYOMvg2AeTxyw84Mm0QyX6yh/
         z0+w50dgNfX2/9ui8tUOPe7xOkh74WHF+6VlEN5wSRxZTPUwBxVNYjB9aTllNdpGux4y
         butlq43SBwY3EFDeDoTk2U06LrSDgObvWsqXRDOQYLaLTHToSBEVu4nh/rdB5HiMIDGf
         2l9A7AtRkmMjAvAmDO+XGiKoFExuFAw6m/Up1mGPOnYlhSvofPFie+MUYmD+AOsZUx8Q
         eH7IAnLEOVSQMNjq9su1cY4GteDqfz6E+5fLrNXM6wBEcM71PuYUBHxVOdP6CTyXfX5D
         58xA==
X-Forwarded-Encrypted: i=1; AJvYcCUt6VKLQ4rm+pAncrjBxHukQuOJ7VHtwhn636bAFN9naRwftjhK0EQ0cEi/kzD5En26Z9YrUI/h+AisQ7c3jQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv/sy/zUWznNfeE/QpU8r9MhpwTbpjg/ANEKwTdW0QbzepBBy+
	cYdsTfwHMOpE/4s2Gb1CoC1qJOECVyQ7FlPQ98ORCL0x/RxYHaqvVPH69nt/IE4=
X-Gm-Gg: ASbGnctn10ZdPREtHNCQ3i5304lGF5uZD0XPL37xTU/89ueXdwFlw5Os28sRInMRfPy
	0xBf2UHzLtOBiQzf/YDI8pUA052voCNjQti5xac1X1n9SEO4XfpDVYp+XL/ZmUK6qmI6pyUAwGI
	0hX+HgE8RMLxG84tki+kNGWvlfTMjaXsiP/S+P26rhW1xnkQ4eFLFdX//orNRIqiHiQ6k/9dC+w
	x8bgt79D+2InQ8M4R70k03Y87TKKWXVGOElzKQDM4D/ulQojpTylQ51ThZM0884V12mALzx5LzE
	T1p5qupMRcmP5LdJlBS4JR2aT6DojYt1Fi44
X-Google-Smtp-Source: AGHT+IE2z+Yrxqh/d+CbdTI/ZEFbpY0tdfpWkjP3iId/t6e4EaPLDgQ5n81rb49OUv0YGO/PEvgPOg==
X-Received: by 2002:a05:6512:b96:b0:540:2a6e:3882 with SMTP id 2adb3069b0e04-540905616b3mr3205171e87.29.1734339966797;
        Mon, 16 Dec 2024 01:06:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c00166sm768988e87.159.2024.12.16.01.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 01:06:05 -0800 (PST)
Date: Mon, 16 Dec 2024 11:06:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <ay2im4itrj3k4p2ksobgsk77b7m4laaxctkfcpffqxj5ttxenm@mzdizmf3mlcb>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241216031225.3746-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_010609_864654_5EF667C9 
X-CRM114-Status: GOOD (  16.83  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Dec 16, 2024 at 11:12:24AM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Add edp-panel node
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Remove brightness-levels and default-brightness-level properties in
>   backlight node.
> - Add the detail DT changes to commit message.
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..5c1ea25b6524 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -120,6 +121,18 @@ backlight: backlight {
>  		pwms = <&pwm12 0 25000 0>;
>  	};
>  
> +	edp_panel: edp-panel {
> +		compatible = "lg,lp079qx1-sp0v";

Please use aux-bus and a generic "edp-panel" entry for newer platforms
instead of declaring the panel on the platform bus. Placing eDP panels
on the platform bus has been deprecated for quite a while.

> +		backlight = <&backlight>;
> +		power-supply = <&vcc3v3_lcd_edp>;
> +
> +		port {
> +			panel_in_edp: endpoint {
> +				remote-endpoint = <&edp_out_panel>;
> +			};
> +		};
> +	};
> +
>  	combophy_avdd0v85: regulator-combophy-avdd0v85 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "combophy_avdd0v85";

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
