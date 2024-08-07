Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B4A8C52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLvpd/5qw0wT8NMjVVTihlVJb15Z0hETCzEjIFOWn34=; b=grlhCyRHGb8gvE0AOshrFAcyIY
	DGLkv3WpoCKPo24x2+V/3J1pmM0I4mywkQ9+MUoz4uTcX1V3vBkkrSYnHvWHKVrdAfJgsBBal0nSq
	31xc0EWI6x0VVbI/fCC78yxl/L+a22YabGrwS913bHvPJrJ9uywJO8zU3nM1fJNKu1mMfr7FyZQHd
	H0ckhnfIvxJyvIpMOI9BmuUgNWxBEu/FAn3TqZR9axyvuNHO3pEQxvDOEt12pMCll3UC87G5SO4Ya
	8UDkxQxv+0Z3c9sLia12DcHVjPLz1stY4kQ12tM+aEhW3m3NNafojnIeblAJAscVPhoi/DdTvxKWz
	ya89Le9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sblQt-00000005xe6-32Ep;
	Wed, 07 Aug 2024 18:30:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkFt-00000005nQu-0wqi;
	Wed, 07 Aug 2024 17:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6XcVj2Oh+3ROUG9TB7T4vDLi0jPcIksfZHJmSThpdHM=; b=c8qJC5FCmJHg3OE22bpLVu3tw1
	6hetkZOM8kXKkTzm4+zC8pT9K09JIk17SkTSXsXtLCxSQIPtXwzuAOdFpnm+JdnSB19i5uIWj0pLQ
	Zz4qiTMuuzEiDRQBaor8Pf0RYciFqYAG5e1HdNIW0kKVYBqJw8kKfBX7hNGxLA+nJqLdQdzNPZxPm
	U19E3erplvbgxF4Us+um0MHEPUTJLav1FXYj/HErmHqhXG7bEePAwSsRqTO9JEnwXPWQLV0xvK/eW
	v5rkJAre9TdWt53y2NPvqjXz40R24Ba74Eb1nLIxeMUFAXDVeRtzMaQEjpeOF6qwFVowBZ/0Srew2
	8FLSxPQg==;
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkFo-00000006fN8-428a;
	Wed, 07 Aug 2024 17:15:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723050904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6XcVj2Oh+3ROUG9TB7T4vDLi0jPcIksfZHJmSThpdHM=;
	b=NIgkrNN48AxkAKnu9xZaO6uIC4wgeCmmdsCBiQen6ESjgJByDZU3wHHgpwsPY2LhURoTyu
	BPUFrrGTXQ3m6MXFC8G07a5L8Y+NnGho8zdpQFJRZiV/L9KMH9OQ9unSBGPGqIIcqorbvN
	NaYppQJjOayyIbJmdGb6gXSvL03eNHoE9bCRZRuIwzV0zjx2R0Yfc0coW+reO4Bqm1rLj8
	Qo3JWHR3T4Icpb82yDC/lkx4/zCFoLfj33KH4dujc983Fr9CWAj0Lo1sHKMphpcU2Ldq+r
	HgAYFtfFc9S5BLNJZofBxw1pmjRVtiZxGmaa2Opl5r0BJrYJ9YuGMiGly0EWSQ==
Date: Wed, 07 Aug 2024 19:15:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang
 <kever.yang@rock-chips.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <tszucs@protonmail.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
In-Reply-To: <20240807170030.1747381-1-flokli@flokli.de>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
Message-ID: <c1cd51655f783d9ec2f6f068590c2a35@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_181517_611954_3CFDBE14 
X-CRM114-Status: GOOD (  16.18  )
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

On 2024-08-07 19:00, Florian Klink wrote:
> This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
> rfkill node for M.2 Key E WiFi on rock-5b").
> 
> On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
> enable signal inside the M.2 Key E slot.
> 
> The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
> rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
> node referencing RK_PC4 on &gpio0.
> 
> Signed-off-by: Florian Klink <flokli@flokli.de>
> Tested-by: Florian Klink <flokli@flokli.de>
> Link:
> https://github.com/armbian/linux-rockchip/blob/9fbe23c9da24f236c6009f42d3f02c1ffb84c169/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> [1]

Unfortunately, this isn't how the "Link: ..." tag is to be used, or how
a reference is to be provided.  Please see the patch submission linked
below for a correct example of providing links as references.

https://lore.kernel.org/linux-rockchip/4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org/T/#u

> ---
>  arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index e74871491ef5..c3a6812cc93a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -105,6 +105,13 @@ led {
>  		};
>  	};
> 
> +	rfkill {
> +		compatible = "rfkill-gpio";
> +		label = "rfkill-pcie-wlan";
> +		radio-type = "wlan";
> +		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> +	};
> +
>  	sound {
>  		compatible = "simple-audio-card";
>  		pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
