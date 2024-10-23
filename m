Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CEA6D2E009
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 02:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C9HoTEbR6qvs3uWQ0H/HqkMNq+y+qOXbq8xKdYtCj1Q=; b=oes8Z8D2k1/sXQV+i148yNnMfL
	vML/lviL341DF6p1M1piSqwakjwdmwjWS7h6FtvgbAjrxxMbPcvxPtD53pZQ1sQbB50cxqoRHlBYh
	Oq0rteUm4rRnK0ouTbeinc+eOIB3B8OjJdSiM7Ka4Fg6fkYN525qDnuuQjuXaxs4OmbIr+oFCHmki
	PctrjCIkFfSD3Qu7+uhM12g7l0nbbRSuYTsPrETS21sx01RFgFS3+zURLLqrH+48QrJ5zJ/mOJFVL
	VrT60RmoTp24r6lBmziA7PnIiXI9/r6K+QpEneh8ua9kfX48Q0sBKAHxr0kIn2MwIGhtV7jTFELNL
	fFgS9EYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3R85-0000000Ci0w-2Jaj;
	Wed, 23 Oct 2024 02:29:45 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3R6Y-0000000Chsa-15OX;
	Wed, 23 Oct 2024 02:28:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729650488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YPF02x/3XuMAe6LpdRIXWrJKdwRi5Z9k99f3PM62XZ8=;
	b=mBI0CMSzZLumzLD2ffsd8EXjlhn40IUot7xmrlISwW2Udl1PSSI44IWK1dNvEkkZqKf9bJ
	RFPN1og6gAtOjg0q/awkPY+iAvij7vB/dnaonF1RBDX6QuMex/haAcTsmbGbBWF6BL2F1C
	qCWxRANtQ55qY0j/73Ylm58ltYygPpopHerSJUij8cQd0JYKK/7eMBxqY2C7taMDU7D4xM
	PhEJPGnoRdNfFsxY0etVGiDpWu6XP0Jwjhk92WiGic/A4gpF8QiCHpO9L7dtIeSKocRfUo
	Lyc2LWwxEn/vp95lWyO2Lp/sFJiKSxK7u7kuU3hu/n8iDJaMXJI5DO+yE3KzFA==
Date: Wed, 23 Oct 2024 04:28:06 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, Samuel Holland
 <samuel@sholland.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Correct GPIO polarity on brcm BT
 nodes
In-Reply-To: <20241018145053.11928-2-didi.debian@cknow.org>
References: <20241018145053.11928-2-didi.debian@cknow.org>
Message-ID: <32d1b0cd30e5464e6744f7f1d87d745d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_192810_755188_F703A029 
X-CRM114-Status: GOOD (  21.62  )
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

Hello Diederik,

On 2024-10-18 16:45, Diederik de Haas wrote:
> Paragraph "3.4 Power up Timing Sequence" of the AzureWave-CM256SM
> datasheet mentions the following about the BT_REG_ON pin, which is
> connected to GPIO0_C4_d:
> 
>   When this pin is low and WL_REG_ON is high,
>   the BT section is in reset.
> 
> Therefor set that pin to GPIO_ACTIVE_HIGH so that it can be pulled low
> for a reset.
> If set to GPIO_ACTIVE_LOW, the following errors are observed:
> 
>   Bluetooth: hci0: command 0x0c03 tx timeout
>   Bluetooth: hci0: BCM: Reset failed (-110)
> 
> So fix the GPIO polarity by setting it to ACTIVE_HIGH.
> This also matches what other devices with the same BT device have.
> 
> Fixes: a3a625086192 ("arm64: dts: rockchip: Fix reset-gpios property
> on brcm BT nodes")
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

I'm a bit late to the party, :) but just wanted to confirm that
the information provided in the patch description is correct.

> ---
> Changes in v2:
> - Better commit description with references to the datasheet
> - Dropped the (self-)blame as it's not useful to evaluate the 
> usefulness
>   of this patch
> 
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index a477bd992b40..0131f2cdd312 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -688,7 +688,7 @@ bluetooth {
>  		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
>  		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
>  		pinctrl-names = "default";
> -		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
> +		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
>  		vbat-supply = <&vcc_wl>;
>  		vddio-supply = <&vcca_1v8_pmu>;
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> index e9fa9bee995a..1e36f73840da 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> @@ -404,7 +404,7 @@ bluetooth {
>  		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
> -		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
> +		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		vbat-supply = <&vcc_3v3>;
>  		vddio-supply = <&vcc_1v8>;
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
