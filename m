Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE3DE7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 15:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cgeQTt7qqpYgF42AUztxN7ln7OL9Us3A2sDV+ObGvrA=; b=L6nuLfnreoLlF8yN4xXPi5kx3e
	o+7//dKsiPEuqMqV/ciwkqp7j75aP/aGFPZuxnpeSlJDj2pBj0v/D5UCrca1MtiNZ4V9LQsAePb5c
	uS7ZbAUXjtfcnlzXQ2vLLGao9fgkWWP2VIqqkUlTWqQX/peSOvJV0XkeRR+sdtbdCyVpOiuNCgZp1
	NTUPahssnftxDkLhiCZcq6yFEphxCarHtaJwe4GzfTssQghkBd7ZPKh/LNuJ4fGIC0cflOgA9ZRgr
	s9C4ax0MqV2JKEWl5v0ldt3N1ZsH5rPXpfo3zWKoHvWL0LrLdDYbMcdpX5wZe9Dw/5Dmr46Vb02l6
	DpFzkk7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKfzu-00000008RCk-3DIO;
	Mon, 09 Dec 2024 15:48:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKfzs-00000008RCE-1xcN
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 15:48:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733759307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UNbDc2+nbj0OjRywjZjUZGnKuFExxiJVLNQqpduB6xA=;
	b=wQl5oELeTbU2hPT1mMaTXQhjZpS0XPAoHPoOnPmcmQGR7VESc4+npimV6bb7w8O1CShooq
	kQzVikfQpAxbD8O+XG/nEoInqhUKx76lBMwvWKj8oeLcT+GdGYjmjkcMvZLXqkIpUrZUE1
	quY2JZHQC6lUgn+X/21hWCFqjZh5QmKqks8t6GxPBCFTYjNt5FUleg3QyHZ1hzqFqoM5MS
	RdVT12OHbRtDB5hoMDVKVbkOg+wgkcdRLJxm+uhlIOAPSo/Hn1fEtX4+32tDsuRSQZuWZW
	l7z9Z2Ss23pmFWypD8MA8DsfS5+ZE9ypOuezOpWtF273GAFTReVXLjfeHVoTcQ==
Date: Mon, 09 Dec 2024 16:48:26 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable automatic fan control on
 Rock 5A/5C
In-Reply-To: <20241209134113.4783-1-naoki@radxa.com>
References: <20241209134113.4783-1-naoki@radxa.com>
Message-ID: <99a3e08c923d26b42636ddaaa48fe08c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_074832_669527_6AD31F4B 
X-CRM114-Status: GOOD (  14.18  )
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

Hello Fukaumi,

On 2024-12-09 14:41, FUKAUMI Naoki wrote:
> Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
> managed automatically by the thermal subsystem, with a target SoC
> temperature of 65 oC and a minimum-spin interval from 55 oC to 65 oC,
> to ensure airflow when the system gets warm.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me, this DT addition follows the rather usual way
for ensuring low fan noise levels.  The patch summary and description
are also looking good now. :)  Thanks for the patch!

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
> Changes in v2
> - reword commit message (Dragan Simic)
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index 7ae032b3534c..d0b9513d56a7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -64,7 +64,7 @@ led-1 {
>  		};
>  	};
> 
> -	pwm-fan {
> +	fan: pwm-fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
> @@ -380,6 +380,36 @@ rgmii_phy1: ethernet-phy@1 {
>  	};
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			hysteresis = <2000>;
> +			temperature = <55000>;
> +			type = "active";
> +		};
> +
> +		package_fan1: package-fan1 {
> +			hysteresis = <2000>;
> +			temperature = <65000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +			trip = <&package_fan0>;
> +		};
> +
> +		map1 {
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +			trip = <&package_fan1>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20x1_2_perstn_m0>,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
