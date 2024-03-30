Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FB6FCD1288
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 13:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rj5STpaotKuB0MDxVpULrrz2EOiSWOGLHXGbMG6ljo=; b=HqOoJwrvtuyQdS
	9I4JZCHT2I2LRxYfXtkqPnbm6w8wW5kWq6Fi1et61DCUiiU1PWq/mDwa4YP1yDy9+tBvHWHIJOPNr
	9GMSiokCYdXjXs9pDaCjGOZSsZ2lV8Whu03V3r+AFAwcRevdExnELRngmOnsS6dqFwr16VvKZ7ZRM
	ZyH4LTeamP7f3G8VgY6bSUxBp/kYZtZUX+v1bn/d15j9mPkvhasNIba3gFxoki8MlqCqZtD0f6Ri4
	6RlCog4PoVxDjKHNO7Uo+I8GROzrXtJd6HhnyS2RVG+jr+RzrwqRH82iDR/RevF7VWoHVnfnInBGh
	6Kui59mFsZr71couw4aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqYWK-00000003Wti-18CD;
	Sat, 30 Mar 2024 13:13:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqYWG-00000003Wsc-0DlG
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Mar 2024 13:13:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rqYWC-00075P-7J; Sat, 30 Mar 2024 14:13:08 +0100
Message-ID: <7c7138f8-b0b7-46c3-b7b2-84e01467f368@pengutronix.de>
Date: Sat, 30 Mar 2024 14:13:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove UART2 from RGB30
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
 <20231018153357.343142-4-macroalpha82@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231018153357.343142-4-macroalpha82@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_061312_259403_71377298 
X-CRM114-Status: GOOD (  20.36  )
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

Hello Chris,

On 18.10.23 17:33, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB30 has no onboard UART header, so remove the reference
> to it in the device tree. This was left on by mistake in the initial
> commit.

Do you know if the UART is perhaps available over testpoints?

If yes, having a DT-overlay upstream enabling it along with documentation could be useful.
If not, how do you do low-level debugging on the RBG30 in absence of the serial console?

Thanks,
Ahmad 

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> index 3ebc21608213..1ead3c5c24b3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> @@ -64,6 +64,10 @@ simple-audio-card,cpu {
>  
>  /delete-node/ &adc_keys;
>  
> +&chosen {
> +	/delete-property/ stdout-path;
> +};
> +
>  &cru {
>  	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
>  			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
> @@ -149,4 +153,9 @@ rk817_charger: charger {
>  	};
>  };
>  
> +/* There is no UART header visible on the board for this device. */
> +&uart2 {
> +	status = "disabled";
> +};
> +
>  /delete-node/ &vibrator;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
