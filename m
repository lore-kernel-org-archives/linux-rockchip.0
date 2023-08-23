Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED0AFEE49AD
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQdozRv9+XvQpCg8EgOqGBNTreRU2RkvCZiPiXkmu2E=; b=iydlxV+hdCQBkx
	T6VLp0llsFLECKiCYwauKxwBq0ee21kMJtdppTGUis4HmVjtDwJWxq57SGsB333MDq0VKr648qsDp
	qeOZV3AAD2cYzorklxDh08UGRTH+66yHe9OlcZgwt8iP2gbxqIWsWZG74ocZHcs0r6wZQXki94qB6
	Bqjq6o7gGgX6eYQDKN+w1uKF+Dw5rHCg6ggV814cx9bnhFQxohtGBzoVIcpwNu0EPViGLW2Vv55Gj
	E/QvOZAbdBRJKFZ5HnnwYekQcRFO3o7U2f2acCnCYus3KJ0dlfslyDaZWPEAUTcoSx3ArI3InP1Rh
	/Hi9yYiuI+Uk+kJ01dAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYn8i-000Yg6-2T;
	Wed, 23 Aug 2023 12:39:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYn8a-000YfF-0l;
	Wed, 23 Aug 2023 12:39:10 +0000
Received: from i53875a83.versanet.de ([83.135.90.131] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qYn8T-0003UY-66; Wed, 23 Aug 2023 14:38:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jakob Unterwurzacher <jakobunt@gmail.com>
Cc: jakob.unterwurzacher@theobroma-systems.com,
 Ermin Sunj <ermin.sunj@theobroma-systems.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] TSD: arm64: dts: rockchip: use codec as clock master
Date: Wed, 23 Aug 2023 14:38:56 +0200
Message-ID: <3763479.7s5MMGUR32@diego>
In-Reply-To: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_053904_271762_0D308A37 
X-CRM114-Status: GOOD (  22.87  )
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

Hi Jakob,

the change itself looks ok, but there are some logistic changes needed.

For one, please drop the local TSD prefix from patches submitted upstream.
The patch subject should be something like

	arm64: dts: rockchip: use codec as clock master on px30-ringneck

Am Mittwoch, 23. August 2023, 14:19:59 CEST schrieb Jakob Unterwurzacher:
> From: Ermin Sunj <ermin.sunj@theobroma-systems.com>
> 
> If the codec is not the clock master, the MCLK needs to be
> synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
> on Haikou, causing distorted audio.
> 
> Before:
> 
>  Running audioloopback.py script on Ringneck, 1kHz
>  output sine wave is not stable and shows distortion.
> 
> After:
> 
>  10h stress tests audioloopback.py failed only one time.
>  That is 0.00014% failure rate.
> 
> Signed-off-by: Ermin Sunj <ermin.sunj@theobroma-systems.com>

As sender of the patch you need to add another Signed-off-by line
of your own. With this you indicate that you were allowed to submit
the patch. So this needs two SOB-lines, one for Ermin as the original
author and one for you as the submitter.

Probably same for the second patch.


Thanks
Heiko

> ---
>  arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
> index 3a447d03e2a8..dafeef0c2dab 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
> @@ -68,8 +68,10 @@ i2s0-sound {
>  		simple-audio-card,format = "i2s";
>  		simple-audio-card,name = "Haikou,I2S-codec";
>  		simple-audio-card,mclk-fs = <512>;
> +		simple-audio-card,frame-master = <&sgtl5000_codec>;
> +		simple-audio-card,bitclock-master = <&sgtl5000_codec>;
>  
> -		simple-audio-card,codec {
> +		sgtl5000_codec: simple-audio-card,codec {
>  			clocks = <&sgtl5000_clk>;
>  			sound-dai = <&sgtl5000>;
>  		};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
