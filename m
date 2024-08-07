Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02F91C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 16:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iATJwQIJVKfv4pZ72TFaU1nAEN7BfJ3rcBo+5pI6JQE=; b=YYaKJreSqTkHkTyO3yaLlFMQDh
	p8shDRSP3mlb/XESWsdfy5CYSb2iQHGeGUERj2PosZSQja8Ion+a71eiqTg3gnl/YWOiUmI1a7aQK
	8n0qoQXkXkWl9UOcc2ejAzcpqK/QfCpY/N495roadUAX8Y48+hQyR3UyOEHpeJi7JNC+ImPbS8MtK
	ByEF+BxImm+TlIjO9UnJep3FGxmYqAOab2Uv846El/TweXNvITEe9sFukaJKuV4keRYP/XMivCqmd
	GHgUVgqGu7Avl04QDZ/iVDSdQhnUJacHvqdAG/nF0+rBc0caecritzFnEPZdNUkaGXmuLATRrOrmQ
	yKnYlyQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjVA-00000005fmS-18GN;
	Wed, 07 Aug 2024 16:27:04 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjUT-00000005fW0-1Cq4;
	Wed, 07 Aug 2024 16:26:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723047977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HXOkuk2X7XhAdN4/iJulCbZX6oDA273A62lKA1iIz4U=;
	b=rNX7w5LdyQPZYZY2Ij9Nf5MxbaxBCKvwfGbKg/y6B8KW+6SdJ4C1CkCAv+zHELJqCuYoua
	2MkHA+K1lu4Pij0s1iJfqJu6EUm5LUmyDznjQ7bPIRwfTqWf+y8hYNRHazlJkeFZtKEZjV
	8VMfP82n1KpXrlvVm07RAOWeO7u/aROgXbi5miXRYpjtjw+Dn2fToK8bs9IuYtvdzYSW3K
	fsqx9sSN3MoCWYcIhvcwcH0nBVxGiuaSevOiEPq/12+xEsAYypHbY6RqIwD5gKtuokzdqa
	Dam1QSZ6yCGMjZEwX5YaToxAVHgdVZE4qQO0FG+UQlx4abPaII2nLuXxSdsS+g==
Date: Wed, 07 Aug 2024 18:26:15 +0200
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
Subject: Re: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 E wifi on
 orangepi-5-plus
In-Reply-To: <20240807162001.1737829-1-flokli@flokli.de>
References: <20240807162001.1737829-1-flokli@flokli.de>
Message-ID: <b897efe95b80f631d0e0fba70d08d7db@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_092621_685187_4C990237 
X-CRM114-Status: GOOD (  18.08  )
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

Hello Florian,

On 2024-08-07 18:20, Florian Klink wrote:
> This follows the same logic as 82d40b141a4c7ab66, which did the same
> for rock-5b.

Please use the standard format for referencing commits, i.e. 
82d40b141a4c
("arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b").

> The GPIO pin connecting the WiFi enable signal inside the M.2 Key E 
> slot
> is the same as there.
> 
> This can be validated in
> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtsi from Armbian
> rk-5.10-rkr4 kernel, which contains a `wifi_disable` node with that 
> same
> GPIO pin.

This might be used as a reference, but please provide a permanent link
to the actual source code in the referenced downstream repository.

> Signed-off-by: Florian Klink <flokli@flokli.de>
> Tested-by: Florian Klink <flokli@flokli.de>
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
