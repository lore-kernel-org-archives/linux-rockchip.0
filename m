Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E26C2D10390
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 08:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfCNwEcy1RrTjLFDve+QptmdZhOWsZ0LSJh36esjN0Y=; b=Ksx4FTI5ibkexT
	A+n5eaHB1coSLj6MN0ZtW6SJ0N8FFxvqo2aVjRItcGF/70CR9dY0IJ1wp9DkpIR9BN0ix4tGiI4/G
	1+o1iMhlaj8aCORZe3rPSt359srMhNUR3OLdWNpfnhbbf60siTfX5QCoE5EIdGCtndRgcEpP+VeEs
	F9Qt2icW8A+1/pC7VJ+9nSRGd9Gb3fVwu+rG98zP/YahyzQ2r7a6lmgRR1Q37Q7yoKU+A6AyE/6/F
	RUmg6MIKtbQXEErGUPM5+BSu/VVBKtQ1WACNaF9rk407ARUu6xALSLyPwtaEY5uXmFkAUYlK24KTp
	JnrTMXxO2zSRNs48Bx4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOB4u-0000000Ecqd-1btG;
	Wed, 26 Nov 2025 08:40:44 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOB4q-0000000Ecpc-16D6
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Nov 2025 08:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1764146437;
 bh=U1OykPAwTcPzSFiUomqrxwP1jDvbUax2InEi27KUlKo=;
 b=KEW8IfJvpKi0/ep2eHSk0dvvTXEMLXhQXb6UVft3R4nKBOmTwDeDREAAjUcX50H694JHXEeSi
 IOYiXrfNVdkaO9v9Siso/NfTAF1Iq6Gv1SEgMS6BdVIkFXGtaufiICbs7EpNsbTtB96Vy3vQY0A
 7lJziflLQ9Kcy+bpc+Jl5YvHWjbT3b9WLZGIoRxRCpb0eR8CO+R1oCBI//O6Dn1XU/lDZcPK6Lj
 ErgGiO2YCGXK3UWrH7s6KKz+mnFIYyuwNMn2ICaL1nPeV7CweQNZqB6dpCgh8ebM0aJUfOPoZVW
 PyxwrTOV/Jw6KoKNc4xJhsCrn66QA6MB8y321bdOvuwA==
X-Forward-Email-ID: 6926bd023968ae208f5ee233
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.6.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d66f81e4-9d9f-4df8-916b-e6f68c85d813@kwiboo.se>
Date: Wed, 26 Nov 2025 09:40:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_004040_697263_A7314910 
X-CRM114-Status: GOOD (  16.09  )
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

Hi Michael,

On 11/20/2025 8:00 PM, Michael Opdenacker wrote:
> Enable the "i2c2" bus on header pins 3 (I2C_SDA_M1)
> and 5 (I2C2_SCL_M1) of the Orange Pi 3B board.
> 
> As documented on http://www.orangepi.org/img/pi3b/0719-pi3b-19.png
> such pins are the only ones offering I2C functionality
> without conflicting with other SoC blocks.

This is strictly not true, these pins are by default used as GPIO, this
patch change them to use the I2C2 func, something that should normally
be enabled in an overlay.

Functions for these pins:

	func 0		func 1

	GPIO4_B4_d	I2C2_SDA_M1
	GPIO4_B5_d	I2C2_SCL_M1

> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> index d539570f531e..e2f0ccc6dbe7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> @@ -435,6 +435,11 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c2 {
> +	pinctrl-0 = <&i2c2m1_xfer>;

pinctrl-names should also be added here.

> +	status = "okay";

As mentioned above, this should be enabled in an DT overlay not in the
board DT.

Regards,
Jonas

> +};
> +
>  &i2s0_8ch {
>  	status = "okay";
>  };
> 
> ---
> base-commit: 8e621c9a337555c914cf1664605edfaa6f839774
> change-id: 20251120-orangepi3-enable-i2c2-fe6d25ec681a
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
