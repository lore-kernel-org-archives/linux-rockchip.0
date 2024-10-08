Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BC9CF042B
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 23:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nxz+8b10VIc3auA/nUX/1zFnrFTdZtRUw9F15JOnSyk=; b=B3Dziiz6WbhzxC
	Rjlqg6XGuaE0hu0BqvSvHPuz2+OyETU8NSR7hiL5nlgce985ELdLqd70LN9htTTMRqD77CGgcLEC+
	2WnB+8l1VzdFuAZC+6OIdLRom6J6D1ZGrOYviMau46UW8r1XIM/V2A0d5xY8ZGzKPX+lVgseseS28
	dp3DvLH99Gq/gRjBEun2zDPTHZum1ZVRdxZ40VatSLy0QW85OFPV6Vl7rmPTMpowrwtH8e1oqZXll
	PK6iiONLnSuQaWPebhwwhipiAnNVSfmRX7PFnDjdAoaFdQPaQr/VH0sOO8j1hD1e1ynHq3gDMFDrR
	Hii3Cg6dpBGpj1fb5Q8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syJPf-00000007Ovi-3b02;
	Tue, 08 Oct 2024 23:14:43 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syJOK-00000007Oqr-2a0n;
	Tue, 08 Oct 2024 23:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1728429194; bh=4gS+MhjqPKU1tt8gRz2jmnAFBOY7JILysqrfZFmhEgI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=EwoM0PAit0LLo9VIh+6dqmIbzKh946EC6xOFAOLKfYKYv00TSaeYYsFVA2GvkveAl
	 DCElS7+Rq0VaIu75DsCM8EhHfVlmdhIrp7QFnmhI5mED3r9umxY+2vHWro9HgnB+xn
	 AxZcydTKpc/FYBnsjJM9zVhqe4fVk6f+SxtwbxmI=
Date: Wed, 9 Oct 2024 01:13:14 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, 
	Javier Martinez Canillas <javierm@redhat.com>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
Message-ID: <papuejgqvgsa4bmsyusux5ouuo62osmgvmnyryabyj2lsiov6w@bsj4oga5alrz>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, 
	Javier Martinez Canillas <javierm@redhat.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_161321_122892_08ABE9A8 
X-CRM114-Status: GOOD (  15.12  )
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

Hello Heiko,

On Tue, Oct 08, 2024 at 10:39:36PM GMT, Heiko Stuebner wrote:
> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
> 
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.

Reviewed-by: Ondrej Jirman <megi@xff.cz>

Thank you,
	o.

> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 1a44582a49fb..09a016ea8c76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -166,7 +166,6 @@ vcc1v8_lcd: vcc1v8-lcd {
>  		regulator-max-microvolt = <1800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
>  
>  	/* MIPI DSI panel 2.8v supply */
> @@ -178,7 +177,6 @@ vcc2v8_lcd: vcc2v8-lcd {
>  		regulator-max-microvolt = <2800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
>  
>  	vibrator {
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
