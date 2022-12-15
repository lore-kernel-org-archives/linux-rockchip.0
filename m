Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69CE7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 20:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJBGHdSE34ocLlrul30bDFEKE0JL3/HOCWcSikq0PPw=; b=G439V9t7kIsYWd
	I8v4D5pS/uiL1OOOTrT/KxcHxf8PnsPuT+1oKdFnW55H8kQe7AtnKkEkVON5vo+cJuOlwYVYMY7i2
	kQR/ifc8PFDq8Mi8Ac/KqVAbR0BrVlwxseaEMo525icZcnoFY7B7R8fa4clBMSzirGkH8RV68KRTK
	vAeNmLLL91d5dWfBUBpQBYnBMpQ/ssGuimT4F4+qXyuCWZIopNNcw76Qzes1mZ7vqsfApbUlChNZc
	MGDd7WcecWPQ2dFDh2sOAIVYCGxhPCAuL3Fk1yi+5EpY4ebCAEltY4iUeWUfYKSvNPPN33HYLxt92
	JPtUVPnAAzcVEnRpIgLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5v5e-00BHSc-9v; Thu, 15 Dec 2022 20:44:26 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5v5T-00BGya-0G; Thu, 15 Dec 2022 20:44:17 +0000
Received: from [192.168.0.17] (cpc76482-cwma10-2-0-cust177.7-3.cable.virginm.net [86.14.20.178])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 6E33E14022A;
	Thu, 15 Dec 2022 20:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1671136923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eNzr3o3XBuM2ARVluiGzk/KlaWpCEtA4u+GM+9nASXg=;
	b=KHp22PgWnM9kvRlxQ5yyv0xxQzwQfmrnv16OPKxTfn2i6+xgMDM29SWpe9RqwpZZyQJD/+
	3EBjAp2ts0EHbZHIeBdf0grX/HOYu/9sYQ0ryokm68xhkvf9X7CX4b9a4S9iy9zdHbEhKn
	TncaFG9uHHoCekbZ1dDvfLY+MRXt8+s=
Message-ID: <78769cf4-84cc-5195-57b8-823d9fc33794@postmarketos.org>
Date: Thu, 15 Dec 2022 20:42:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] arm64: dts: rockchip: fix input enable pinconf on rk3399
Content-Language: en-US
To: Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kernel@collabora.com
References: <20221215101947.254896-1-arnaud.ferraris@collabora.com>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <20221215101947.254896-1-arnaud.ferraris@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_124415_558742_CEAAFB43 
X-CRM114-Status: GOOD (  20.01  )
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



On 15/12/2022 10:19, Arnaud Ferraris wrote:
> When the input enable pinconf was introduced, a default drive-strength
> value of 2 was set for the pull up/down configs. However, this parameter
> is unneeded when configuring the pin as input, and having a single
> hardcoded value here is actually harmful: GPIOs on the RK3399 have
> various same drive-strength capabilities depending on the bank and port
> they belong to.
> 
> As an example, trying to configure the GPIO4_PD3 pin as an input with
> pull-up enabled fails with the following output:
> 
>    [   10.706542] rockchip-pinctrl pinctrl: unsupported driver strength 2
>    [   10.713661] rockchip-pinctrl pinctrl: pin_config_set op failed for pin 155
> 
> (acceptable drive-strength values for this pin being 3, 6, 9 and 12)
> 
> Let's drop the drive-strength property from all input pinconfs in order
> to solve this issue.
> 
> Fixes: ec48c3e82ca3 ("arm64: dts: rockchip: add an input enable pinconf to rk3399")
> Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>

Reviewed-by: Caleb Connolly <kc@postmarketos.org>

> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 92c2207e686c..59858f2dc8b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2221,13 +2221,11 @@ pcfg_input_enable: pcfg-input-enable {
>   		pcfg_input_pull_up: pcfg-input-pull-up {
>   			input-enable;
>   			bias-pull-up;
> -			drive-strength = <2>;
>   		};
>   
>   		pcfg_input_pull_down: pcfg-input-pull-down {
>   			input-enable;
>   			bias-pull-down;
> -			drive-strength = <2>;
>   		};
>   
>   		clock {

-- 
Kind Regards,
Caleb (they/them)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
