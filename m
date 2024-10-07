Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C926CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikw17GrK1vzUVLWi/ToP3WpwiVb9wxyXGCucNHvEehA=; b=zBq7hk8t6uFgTg
	JB0OVND+aQhoxWtcfgVSVbARTCImatqLwQLY8vVQxmiPAzVtwCierh9LeyIdII6ax2aWHGRVPLdT+
	G0MgXsH8OM0xKeZIRuu5p7xtJXQ+4MJ2VrYhi6rtHByRfjywRypET6V6LAJcjvsvVwRckRs10ZPRy
	IuOmZ1EBIw1xwCaLcTeTKzRt+8SuUMijKwNM5NmyiJJIG0M3SpGXmxSh1+V3yTaT0LBnXoEqagjwY
	4ez6PsXJVwxi1136+XUx0d4tES7cVwkT42GpqCUX9SJTMtWV3ehOmqwlwxbiKYP9xll/bXyrXihaz
	ul2RKKUhN0jKOBCxPrsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoSl-00000002eQk-3k9i;
	Mon, 07 Oct 2024 14:11:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoNX-00000002cwJ-2338;
	Mon, 07 Oct 2024 14:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HiOsDH8bD3eEMDvsRSDIBuRwHXY1ZAV2zq7VMShOysU=; b=WSHbpCP2/o0YiUGRkFUWljcjVx
	cuexaRT32ZS63jq+m68dq42nDZgPZtBHQrproiGuESz+FdyNyDyQtTDIJoZ4XXhNxvAqcvcIG4JNB
	UkyX3yNcmhCR4dZswfAF0Bef4hRh1xyevfj210Fx9ON9BxRFoCvD21BT3H9kwilPDWzjJ9oIDB+ck
	dBMUt5sM/VrnxT0HFkjp2v8XJTrd0ZRAETfRUaJ/YB4CAZfViQf3GMBR2IcaF7a0UZhKyW59XfgyL
	l6C9kc0mnLXgGeiTH5OPdAwj4gUa8pubvb8Tk7rfJIvCaAAWvgyvpuVXCkU/Lu1t7ecNQKtchanT2
	2AWZhxIA==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxoNU-0000tA-SA; Mon, 07 Oct 2024 16:06:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Fix wakeup prop names on brcm BT nodes
Date: Mon, 07 Oct 2024 16:06:24 +0200
Message-ID: <6096052.lOV4Wx5bFT@diego>
In-Reply-To: <20241007105657.6203-5-didi.debian@cknow.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
 <20241007105657.6203-5-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_070627_562234_D3F5C1B2 
X-CRM114-Status: GOOD (  16.35  )
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

Am Montag, 7. Oktober 2024, 12:28:18 CEST schrieb Diederik de Haas:
> The "brcm,bluetooth.yaml" binding has 'device-wakeup-gpios' and
> 'host-wakeup-gpios' property names.
> Fix the ones where '*-wake-gpios' was used.
> 
> Note that the "realtek,bluetooth.yaml" binding does use the
> '*-wake-gpios' property names.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

parts of the commit conflict with a previous one from me ;-) [0]


[0] https://lore.kernel.org/linux-arm-kernel/20240930210112.1993625-7-heiko@sntech.de/T/#m59bdb72d6c22f85fe79716761fedaea2a2e1c73e

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts  | 4 ++--
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> index 0c18406e4c59..16fd98698db3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -450,8 +450,8 @@ bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&pmucru CLK_RTC_32K>;
>  		clock-names = "ext_clock";
> -		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index de4c082dce07..7381bb751852 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -684,8 +684,8 @@ bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&rk817 1>;
>  		clock-names = "lpo";
> -		device-wake-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> +		device-wakeup-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
>  		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>  		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
>  		pinctrl-names = "default";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
