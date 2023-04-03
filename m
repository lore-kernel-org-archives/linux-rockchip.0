Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58E8C76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 17:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6MvGQ5Pechaqft6fuiQjtvs5sZkgJ/cw2+8SawCMRY=; b=RSMLl1niWIox5d
	LXj7m6T1xW2mWBRhcJgbSdwsqLtI2mLkfmGsf+k9s/YIGfaprcn/JcGC+vMkD0d8uDVzgqnfR7EO6
	/GDzFg6nQi5H1xi/tObjoR2yHmGMO54hGloAzF1cg8HyoXGerU0b91LYx2STidaI73/WW4E+Q6VJS
	Tby8U4bnAKgXp9hJZFZvDM0QeSMMusR4XZ7XYYIUsOnq/y/aCYFdy1gBE2AiXEFsy27/qjITiPiM1
	B3MUVL3UtqSd6FZXsUQuIPvA9OBneMiU+Uub0adTwFAtkugrsBZK9RRTQRj/Yna8RfXKF2OnGX4br
	HUZj1NZ7ozDxAstDxI+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjOPx-00G7q0-2h;
	Mon, 03 Apr 2023 17:56:33 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjOPu-00G7pI-1h;
	Mon, 03 Apr 2023 17:56:31 +0000
Received: by mail-oo1-xc30.google.com with SMTP id f7-20020a4ab647000000b0054101f316c7so1338425ooo.13;
        Mon, 03 Apr 2023 10:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680544589;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QOuaiQSK3BoOYX4eQwnchP+qwhM2uvpCv45NT7W1aF0=;
        b=NyQ061Xfwh7ujD4Nquc2Xty31UPDwgSkekIesimXAwJc3AhrdwLqIGb/1Tlw2eS03u
         cDgi8YK0T5RmATq+a0qDe1HbgBccR2xOiWf6vZ+3bweFqkYQyeywvXaEYyXc4meKs22D
         0mx8oGXsS02q+YyRshJARiNKrhjnkxunt73e7dkwphXtJ9UrJFIFXTCVuAmm5BfN+teh
         qiXBmbEk3pQYHZ6/tyxkBEIKBK7bhVTAauTFVCfA/c7decEOmU2XqdGcqGXkjNaJTJeQ
         31eABqsZ0WDDIdHRIMmIvDg4E4fG7gQYSkG2ysYrtZrkSE8MblBkInPi99rPLFYa2eJR
         2KLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680544589;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QOuaiQSK3BoOYX4eQwnchP+qwhM2uvpCv45NT7W1aF0=;
        b=Gej9JZr67atDeW3K8ORpBtgw0XsSJtKiMjxhzLI+kI4Rkf+LNsiS6Ro5AXDIhAEQ+i
         MQD1TMy0EXwnc+zX3cYrAW2WoGScmf2vbJinYMAuQVhYjwKqwa1cp0u5a5Hpjf1PKu8Q
         ftSJZgG3TxAv8dPg72fGpClTLTTz83jbpBbuQFELlmjDyNjugEY5DGfL0ryRF9DKHMQU
         xB7L4M0UN8h2JiZtyiCBSDF+KJizxvwM/OPHiksJ5nr0srKEm0yJpMpY34cRBqhhDu7D
         yL4nRnFUzJQqt8+DUPlH0pzRE0dQ29PqdyAgnlaMQAK1M2LTARvQqfY5MnW2r4nYJawR
         1clg==
X-Gm-Message-State: AAQBX9cGFB03CyZ03XFGAUnvUFwBnaTjLn8innOrHNOuVZCnFHR2BJts
	yOSAMP7lDKEQaWV/gXppj1M=
X-Google-Smtp-Source: AKy350bTyHc8XmxyYvCTHyDh/t3yPqen0MsWVzSeXuNTibNZnT59EGNTGp0cUJyIAlW8qY9G1SQS5Q==
X-Received: by 2002:a4a:4152:0:b0:53e:55a8:2a69 with SMTP id x79-20020a4a4152000000b0053e55a82a69mr248695ooa.3.1680544588900;
        Mon, 03 Apr 2023 10:56:28 -0700 (PDT)
Received: from neuromancer. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id h38-20020a4a9429000000b0051a6cb524b6sm4291364ooi.2.2023.04.03.10.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 10:56:28 -0700 (PDT)
Message-ID: <642b134c.4a0a0220.1d01a.5990@mx.google.com>
X-Google-Original-Message-ID: <ZCsTSskt2cU+VClg@neuromancer.>
Date: Mon, 3 Apr 2023 12:56:26 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_105630_601143_73C9A27B 
X-CRM114-Status: GOOD (  17.57  )
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

On Mon, Apr 03, 2023 at 01:50:52PM +0300, Cristian Ciocaltea wrote:
> Add the necessary DT changes for the Rock 5B board to enable support for
> the PWM controlled heat sink fan.

Honest question, but should we be adding this to the board file if not
every device has a PWM fan (they all have the socket for the fan, but
not the fan)? For example I have a passively cooled case that doesn't
include a fan.

Thank you,
Chris Morgan.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 95805cb0adfa..bd74d9da2c17 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -17,6 +17,14 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	fan: pwm-fan {
> +		compatible = "pwm-fan";
> +		cooling-levels = <0 95 145 195 255>;
> +		fan-supply = <&vcc5v0_sys>;
> +		pwms = <&pwm1 0 50000 0>;
> +		#cooling-cells = <2>;
> +	};
> +
>  	vcc5v0_sys: vcc5v0-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_sys";
> @@ -27,6 +35,10 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  	};
>  };
>  
> +&pwm1 {
> +	status = "okay";
> +};
> +
>  &sdhci {
>  	bus-width = <8>;
>  	no-sdio;
> -- 
> 2.40.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
