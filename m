Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D33F1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 15:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROOKnWgFcgHP/qY7/J6IcaQlCudXzm6zuJ4jhJv9Y7M=; b=VAA9z7S3HL+QI1
	k7W8Zr4CPl8W8zB83sWkMtp0N7QNSnP+yLjB4OgMLWsPMbPL/j5CgbozAHqMeiJDtkdCt8PEvpq2o
	HMeMkxekZkVFhbe13JNULbUsmDgZyF5MYlpmwu83k8fj8AZn4WFn/afUyLJ5MlZvEHPsgezqgcXhy
	2rXenr3CCK6Dmv+ZfhYk23xwRVKsVGfSZk7ITKqnaEeoYdeWQa1O4nDeTuycDV3VQ902APElK2Sar
	vUg6Hdbs/JaRlh0z7ndIptDdB+/XldY5Ra2RCGCUvqqXDHcmQgU6b2ZEpa64MMobBRu1bHCbHaDZI
	c0CmADrxeq3FyBqtifxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNZiK-0000000GZLw-1KeD;
	Sat, 29 Jun 2024 15:10:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNZiH-0000000GZLY-1Wg0;
	Sat, 29 Jun 2024 15:10:06 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNZiD-0006CI-J5; Sat, 29 Jun 2024 17:10:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges to
 RK356x SoC dtsi
Date: Sat, 29 Jun 2024 17:10:00 +0200
Message-ID: <7679413.EvYhyI6sBW@diego>
In-Reply-To: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
References: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_081005_445443_5A6FD64F 
X-CRM114-Status: GOOD (  13.30  )
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

Hi Dragan,

Am Samstag, 29. Juni 2024, 07:11:24 CEST schrieb Dragan Simic:

> +#ifndef RK356X_GPU_NPU_SHARED_REGULATOR

is there some reason for this duplicating of opps?

The regulator framework should pick the lowest supported voltage
anyway, so it seems you're just extending them upwards a bit.

So I really don't so why we'd need to sets here.

Also the voltage-range thing makes sense for non-gpu-npu-sharing
boards, when the supplying regulator does not fully support the
direct single-value voltage.

(rk3399-puma was such a case if I remember correctly)

So I really see no reason for this duplication.


Heiko

>  		opp-200000000 {
>  			opp-hz = /bits/ 64 <200000000>;
>  			opp-microvolt = <825000>;
> @@ -222,6 +229,37 @@ opp-800000000 {
>  			opp-hz = /bits/ 64 <800000000>;
>  			opp-microvolt = <1000000>;
>  		};
> +#else
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000 825000 1000000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000 825000 1000000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000 825000 1000000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000 825000 1000000>;
> +		};
> +
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000 900000 1000000>;
> +		};
> +
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +		};
> +#endif /* RK356X_GPU_NPU_SHARED_REGULATOR */
>  	};
>  
>  	hdmi_sound: hdmi-sound {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
