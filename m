Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44ADFC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 11:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ybxdiuy9oCd3WNNe3O00663sDn56wtlb7Lw0hfQDA9o=; b=n3ygfrVrSvAIEf
	eed3EPmqvMBNXVQlkME8mFwSF8rMJ6FtRDqKD/JOq+9AwWjr6D2LaRaSCHU6GJVVInYE6yrFhY2zl
	1lnzRlBt4hf6Vc07y4xXMEVGND+1ocUQLQ5A4L+ssUs2NgzUVWiXzFsdXe6j/ooWA3QjGDUkSYYzi
	1XAojnyjk5RZjiCzWxZK2gthGeHArjAHmSQpQrBa8B7DW84kZrBtRpxbuMPSUzUzV7UF6tjUiZbAf
	FR86uv/ikshIvBfOAFmCD8W/ByGWFUKaM8hEgZOCsaW+8ZaPFnZJoLK6VuZrunCyYtevZbJ7Kxo0A
	/J95tLkkCzMTX2ITWOmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev65-0000000ClC2-3Vfs;
	Fri, 16 Aug 2024 11:26:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev64-0000000ClBs-0OQn
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Aug 2024 11:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pjkbfxq4x3XhzcLHixMbRi+ZdWlKUrjKOhvA83UDL68=; b=rSdaYisaOzkfqA64JSREmC0Op1
	tYh5+1R6knHOJm0zLMBMIsR8m+oY4iKcKDN58FbitTilpLDZQfwu/vrnlcY0010y07sOqawcv1rFk
	hFs1sEit7nYy+G55CFuZdkaMlGxJwBZdKNpDvCgdzG0SDwQTuz6YHB9NA4Ml8HNPob145YVLszbuA
	lrifH2UDOR9/LFktRf3yIO4UCp2rqwarYHORrRRVG5wd/FnNZs0uzck7zZn2h5rdHeGJStKL4cdXt
	ytNNlKXTfheE0yQvJ91jq6EpJuNx1zRv0GXcS3apCVIfhkkjYI2PVMajV1MVU3wwuTxPy7g0Q8YYq
	ZJgGe3gg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev5z-00000008dUe-1qXd
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 11:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pjkbfxq4x3XhzcLHixMbRi+ZdWlKUrjKOhvA83UDL68=; b=tmV3sjbxtOHPgp0rewkmuL+0Kn
	jtYf4/sOo4ifOrToaJxaLzV050FHbw/Fg2evo1pKtub1/At+S0kAl7xNrTlMeWJETFqjpgJju1ZLu
	knQWWpfu9/D2VO6JBVXemzX2+E5Bt6EQbnGz6SFrw6t4lavDuA5b+v10M0zPjYzxrEa2Tl9FN/DIW
	D6mRTIbBGf2Bi+wiQPoQb4hSobCAjcdYwvcJH77c1upPpu7VbBK4F1EZb4R0nHcVWKUQjpZWhbT7U
	hY0AF0VNGfIONpgAy4eq94sKv3JhUwpwqCasGL9pJFmVe9PmBroX6HnXVcCIoylVorwUusRI/ryyi
	ogmKo0qw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sev5p-000164-Ti; Fri, 16 Aug 2024 13:26:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM LEDs on
 Radxa E25
Date: Fri, 16 Aug 2024 13:26:04 +0200
Message-ID: <2335200.ElGaqSPkdT@diego>
In-Reply-To: <20240816110402.840-1-naoki@radxa.com>
References: <20240816110402.840-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_122615_731008_5B7184F4 
X-CRM114-Status: GOOD (  16.04  )
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

Am Freitag, 16. August 2024, 13:04:02 CEST schrieb FUKAUMI Naoki:
> to make multicolor PWM LEDs behavior more consistent with vendor
> kernel[1], use "pwm-leds" for it on Radxa E25.

sorry, but that is definitly not a valid reason.

A devicetree does describe actual hardware and is not a space for
configuration choices. So that whole notion to "match a kernel"
is not correct.

Looking at
https://wiki.radxa.com/Rock3/CM/CM3I/E25/getting_started
the specification table clearly designates the board's LED as
"RGB LED" - so one LED and multicolor .


Heiko


> [1] https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts#L100-L121
> 
> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 36 ++++++++++---------
>  1 file changed, 20 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 72ad74c38a2b..0b527f67bdbd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -12,26 +12,30 @@ aliases {
>  	};
>  
>  	pwm-leds {
> -		compatible = "pwm-leds-multicolor";
> +		compatible = "pwm-leds";
>  
> -		multi-led {
> -			color = <LED_COLOR_ID_RGB>;
> +		led-red {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
>  			max-brightness = <255>;
> +			pwms = <&pwm1 0 1000000 0>;
> +		};
>  
> -			led-red {
> -				color = <LED_COLOR_ID_RED>;
> -				pwms = <&pwm1 0 1000000 0>;
> -			};
> -
> -			led-green {
> -				color = <LED_COLOR_ID_GREEN>;
> -				pwms = <&pwm2 0 1000000 0>;
> -			};
> +		led-green {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			max-brightness = <255>;
> +			pwms = <&pwm2 0 1000000 0>;
> +		};
>  
> -			led-blue {
> -				color = <LED_COLOR_ID_BLUE>;
> -				pwms = <&pwm12 0 1000000 0>;
> -			};
> +		led-blue {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			max-brightness = <255>;
> +			pwms = <&pwm12 0 1000000 0>;
>  		};
>  	};
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
