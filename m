Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3411BC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXTM3DNAztecdj4BxgMJF8ZhNpDukKjXTN1h0isHoXY=; b=uChONd5eKAR/OH
	NTwN4obJLaoDmulyu798maAhEWBYoqguYmdqfP/B0yu23CqxqO5NsP4j4P34WQsAPAVr9m+SAQ/pE
	e4BaRfL0sAD7Yyqc6ONC5w3XMfmunawerLK5Z4+VOXuOB3PJcVYS90tM3c4VppUR6SiSPXMIr6ytk
	L18BEB6B4CS9rJPK9UZdPze9R9aDW0SaVmDXTso7ijUIPPmtQR5niaeTvZ9tX1RVja8FQubCm3LiF
	nudulGtlQJxbxgAx0e6gjYRca+dcOK2bLpjqSG6gxq7pBosikNeZvaWLoFHd30wC/yEldVZHOR1YZ
	91Uo8Xq+ZRh4WcX/ttPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romdP-00000000biT-40GW;
	Mon, 25 Mar 2024 15:53:15 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romdM-00000000bhP-2Y8C
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711381990;
	bh=6qkwxJanykJAHfSSb7L1wdhXBNycnlwWLBxVXpMf/ic=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CviebTFYvAdoJ4BAnSe4jHHEcyB/fzp+SFRkba/W0B53M13oFyvxhAzjbdkHe1p0w
	 74lBB1oKoUWzwD1d1M25ir2oo4Wfu4VW4wGVkbRnkjgxtGjbdeOtuvT7oc/MmUUO7x
	 1TB7qFW+EucAo/5qLsvYJmvvL+OzRJtIwONQK/UKO7ed2IVsY+/o8/TyQL/dX9kRjl
	 iMXAChnd/9SbI54p3Lrw4zMZAX+6uS814cMoK2dgQK0s2ASZ5co1REj8m4xvsr+a5c
	 PytTPYJcQY1rVNYmC+S6LusJboHEua1fw+KvixoaNoLgOKnSVV7vAW4sNblPCbYXj6
	 /SojULNn2PCwg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4152337813B7;
	Mon, 25 Mar 2024 15:53:10 +0000 (UTC)
Date: Mon, 25 Mar 2024 16:53:08 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v1 4/4] arm64: dts: rockchip: rk3588-evb1: Enable GPU
Message-ID: <20240325165308.483b01b3@collabora.com>
In-Reply-To: <20240325153850.189128-5-sebastian.reichel@collabora.com>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
	<20240325153850.189128-5-sebastian.reichel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_085312_826403_50DA8A52 
X-CRM114-Status: GOOD (  18.81  )
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

On Mon, 25 Mar 2024 16:37:21 +0100
Sebastian Reichel <sebastian.reichel@collabora.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Enable the Mali GPU in the RK3588 EVB1.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> index de30c2632b8e..b51a17b404f3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -281,6 +281,12 @@ &gmac0_rgmii_clk
>  	status = "okay";
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu_s0>;
> +	sram-supply = <&vdd_gpu_mem_s0>;
> +	status = "okay";
> +};
> +
>  &i2c2 {
>  	status = "okay";
>  
> @@ -484,12 +490,15 @@ rk806_dvs3_null: dvs3-null-pins {
>  
>  		regulators {
>  			vdd_gpu_s0: dcdc-reg1 {
> +				regulator-always-on;

IIRC, this is only needed because of some bug in the power-domain
driver (or elsewhere). Is there any other reason to flag those as
always-on? I mean, it's working but probably not ideal from a PM
standpoint, as that means the regulators will stay on even when the GPU
is idle.

>  				regulator-boot-on;
>  				regulator-min-microvolt = <550000>;
>  				regulator-max-microvolt = <950000>;
>  				regulator-ramp-delay = <12500>;
>  				regulator-name = "vdd_gpu_s0";
>  				regulator-enable-ramp-delay = <400>;
> +				regulator-coupled-with = <&vdd_gpu_mem_s0>;
> +				regulator-coupled-max-spread = <10000>;
>  				regulator-state-mem {
>  					regulator-off-in-suspend;
>  				};
> @@ -534,12 +543,15 @@ regulator-state-mem {
>  			};
>  
>  			vdd_gpu_mem_s0: dcdc-reg5 {
> +				regulator-always-on;
>  				regulator-boot-on;
>  				regulator-min-microvolt = <675000>;
>  				regulator-max-microvolt = <950000>;
>  				regulator-ramp-delay = <12500>;
>  				regulator-enable-ramp-delay = <400>;
>  				regulator-name = "vdd_gpu_mem_s0";
> +				regulator-coupled-with = <&vdd_gpu_s0>;
> +				regulator-coupled-max-spread = <10000>;
>  				regulator-state-mem {
>  					regulator-off-in-suspend;
>  				};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
