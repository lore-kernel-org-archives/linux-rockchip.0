Return-Path: <SRS0=o2ac=O2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2244DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 10:50:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E419161074
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 10:49:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E419161074
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vBtPVjVF6ftfEMA1vrWolBkydgjamvgS6nmLQ+CXsXU=; b=3NXJiKbfAMctjQBMQ5i/y4MyFW
	mYOH4GvDXBPuUPHkJaJviCwL2U8iC6MXx4x3rgbQk1R4JcJ2iIQWIeIwpLJBQNz9TAG+38oX1Yi4R
	ApSL4CueFro2mB+HvQ3EmwVef5Hb+dqVTzcLfC7ZmBaJFELGjqvHue1OUKPYJuxXGd/hniPTO6MYF
	QSbjl68dJl8g/YJPpUaKZLep1oIVo793K/jyVeQ8nVgfAy934siz9+rHyyiAgBaZPj0kQ+OMXyS+k
	xaKXPcw50U05EIcyoVn56FzWjroB1V5qIj8CkdbrWLEwJhmSJkZKihDJ1lcQS90g97EyKssrvfVOx
	yr1nMd8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY4Uk-00DsdQ-Vz; Wed, 06 Oct 2021 10:49:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY4UR-00Dsa0-LS; Wed, 06 Oct 2021 10:49:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF2D51FB;
 Wed,  6 Oct 2021 03:49:27 -0700 (PDT)
Received: from [10.57.22.120] (unknown [10.57.22.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3DCB3F70D;
 Wed,  6 Oct 2021 03:49:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: nanopi4: decrease Bluetooth UART
 baud rate
To: Chen-Yu Tsai <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210920175647.13008-1-wens@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <64f06ddb-cde6-d71a-7920-41c485a1d3fb@arm.com>
Date: Wed, 6 Oct 2021 11:49:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210920175647.13008-1-wens@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_034935_817168_87AA8306 
X-CRM114-Status: GOOD (  22.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-09-20 18:56, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The RK3399 does not seem to be able to properly generate the required
> 64 MHz clock for the UART to operate at 4MBd.
> 
> Drop the baud rate down to 3MBd, which can be used as the clock
> controller is able to produce a 48 MHz clock.

Hmm, I've been running mine this way (with DMA) for ages now :/

Looking at clk_summary, clk_uart0_src ends up at 800MHz off CPLL (same 
as several other significant clocks), with clk_uart0 at an exact 64MHz 
as a division of that. I stuck a scope on the UART pins of the module 
and all the edges look nicely lined up to 250ns intervals.

This is with a 5.11.4 kernel, though - I wonder if the recent fractional 
divider changes in the clock driver have changed anything?

Robin.

> Fixes: 3e2f0bb72be3 ("arm64: dts: rockchip: Add nanopi4 bluetooth")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index 8c0ff6c96e03..45ff053b119d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -699,7 +699,7 @@ bluetooth {
>   		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
>   		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
>   		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> -		max-speed = <4000000>;
> +		max-speed = <3000000>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
>   		vbat-supply = <&vcc3v3_sys>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
