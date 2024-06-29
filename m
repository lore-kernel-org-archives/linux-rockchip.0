Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 386CAC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 05:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yf/G6tGlJzE01U90d61+i/u7NP0M1e1tdbn0qoCERvM=; b=warZzKbat4MBNwL03gseV7hkWi
	SiR7+vG8nDYyYJTpIXMmuXzADfd9TRWfNy/IO7JvBSyQFvUAWJFeqsVBNcbDgAuzkJkZVYdYQI1S2
	xAxkBNIeSaykc8YLb1kJlk2NPrHHPhhzz7v7Phc1EJITsXU4osXH3cm1Glpy+bU+7fJB2WJ70C3o8
	4yv7/rS6GoDWIrDoJU/LK6UTczqDJntaBnoRzb7uJspfFNDNsTXrgHUVE2ub47z8IcvEXrMcIr+/i
	5eoiVwkNtmbfQJf0jqIQgHfTClA6w2WCHKdx0pAqqrrHfK0XsGTuDLsozpsXiedrfif9xnxQYCmoh
	QVnbKPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNQHd-0000000FuUD-3w7t;
	Sat, 29 Jun 2024 05:05:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNQHT-0000000FuSr-054l;
	Sat, 29 Jun 2024 05:05:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719637542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gMwo9V8qLbkFXcqLqAUxMVPbvcdzo4YSJGNKNIvXkRc=;
	b=fF0zb4uvEgnZtxW8uojfDKDdIlcN8DBHzIRDoYO1jEixWBcuP6f2OHqCaFf3Npx/oFkDY5
	zKF/fIhbMJh1dx+Tbb8kw2YWXSGXEWcA14iSKGemkSa7mBxH69jyM4mQzBzvuySWBUw0ZG
	AZaaHxI32lXUED5sBi2Nz2EiCE9Mw+yYYKEZSu5wwda8TfRJEajmxd5JUYFdVNvPCOCBgp
	Ujf5hVauG4a9v6etZyISosh9mEPueww7a+mpUQAWEkcSlau8CYRv2s9OyjtJ/jSAJQo4cc
	Y+FbS7bTDQN5L0RY3o/yCk870O0SB4gu44SWBfwim0FFDwoQUKnLw3EeDf4EUg==
Date: Sat, 29 Jun 2024 07:05:41 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>, Chen-Yu Tsai
 <wens@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on
 quartz64-b
In-Reply-To: <20240628120130.24076-1-didi.debian@cknow.org>
References: <20240628120130.24076-1-didi.debian@cknow.org>
Message-ID: <bd137fb5f44b247d843e0d218a495c62@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_220547_550159_8E8F0FDE 
X-CRM114-Status: GOOD (  19.41  )
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

On 2024-06-28 14:00, Diederik de Haas wrote:
> There have been several attempts to set the dma-names property on the
> SoC level (in rk356x.dtsi), but that appears to cause problems when set
> on channels without flow control.
> 
> Quoting part of a previous attempt for clarification:
> 
>> Nah, enabling it for bluetooth is fine because you have flow control.
>> My issues have been on channels without flow control. Without DMA it
>> simply drops messages or the channel hangs until you close and reopen
>> it. With DMA, when an overflow locks up the channel it is usually
>> unavailable until the board is rebooted.
> 
> Setting it on the board level for the bluetooth connection was deemed
> safe, so do so for the Quartz64 Model B.
> 
> This fixes the following error/warning:
> 
>   of_dma_request_slave_channel: dma-names property of node
>       '/serial@fe650000' missing or empty
>   dw-apb-uart fe650000.serial: failed to request DMA
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> Link: https://libera.irclog.whitequark.org/armlinux/2024-02-29
> Link: https://lore.kernel.org/linux-rockchip/18284546.sWSEgdgrri@diego/

Thanks for this patch, it's looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index b908ce006c26..13e599a85eb8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -652,6 +652,7 @@ &tsadc {
>  };
> 
>  &uart1 {
> +	dma-names = "tx", "rx";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
