Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1914C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 12:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8eFpcDuRGLoXE8BCtTe1BMx2ZhMZfC0Jzd5W0vJbB0=; b=gA8gr39MUv4dfP
	dKctd2M3LhG9IEaA7ndL8m/qQimecJeGE+wMZAnKdipWCuCcNeP0KyYGZ6f+JeA34GJfCfJLGVlb9
	dBBJ2IqRKNleoq5dPpQ3D8505deH/Q9EcIMtEmKrvABEohXo2rJDG4P0bz2clVv/TBP2Gh04ce0GN
	iSaGll7R2koBX9riOOFd8JVDCFRlgsFbR2L8nMcaUoUJrhFeeOtJB14gWxwOXEH7w45clmU7ng9c2
	cbgcZSprsSW3M07RzjLZ6RLU00KPtBgpO0LrEAkuMsZEfLXrc9C/jAj+XRcI5SE6XYSuV6Y81BlYu
	x/1klRZVvEym1ZCST53g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJuLt-000000019pJ-2biE;
	Wed, 19 Jun 2024 12:23:49 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJuLq-000000019n0-37WL
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 12:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718799788;
 bh=lTFCC7hkkc+0C50PCDKrHMDGubmjU2AxMieUbdYQarc=;
 b=lrfv5qeWyP+BvF0pDksfgs8RhJdzrCTt0WvcqD+CnIZI/EyCIN6giHlf5Up9KK4mvGI3hiDod
 h8VgR/uua0gdxYadYy8tunC8Tj7vAahhrRTeIX4jZKlXmq8bQsVsYxrLZoMG7geC4WOsnh7BX7A
 lH7uVjtWQgkjNJs2z1LbdNDaXG96nGSQfdgkxd1iG+2huBqXkSl9ybKs313N/0WAIRgi6qqDC4M
 Vwiu5uIaGrv/Ynvv5iGwDzZUMsB3aHZY+o60hDlvMvs2UDYfRDArxXDaamV/yq3hryAcIhVIXb0
 K438OTMEgG/EDAj5C/OnGAG7bVHbPVq7YEwU2h9e6WEQ==
Message-ID: <c35b3e80-7889-473d-8365-88436c3cb9a9@kwiboo.se>
Date: Wed, 19 Jun 2024 14:22:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3568-rock-3a
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Lee Jones
 <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, Furkan
 Kardame <f.kardame@manjaro.org>, Michael Riesch
 <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-3-fa93bc5313f4@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240619-rk809-fixes-v1-3-fa93bc5313f4@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6672cda75f5eef29994e8ae0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_052347_387755_A9A285C6 
X-CRM114-Status: GOOD (  15.49  )
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

Hi Cristian,

On 2024-06-19 13:23, Cristian Ciocaltea wrote:
> The 'mic-in-differential' DT property supported by the RK809/RK817 audio
> codec driver is actually valid if prefixed with 'rockchip,':
> 
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>   rk3568-rock-3a.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
> 
> Make use of the correct property name.
> 
> Fixes: a84ffd2ef1ff ("arm64: dts: rockchip: Fix mic-in-differential usage on rock-3a")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ebdedea15ad1..0b54dfe92d6e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -533,7 +533,7 @@ regulator-state-mem {
>  		};
>  
>  		codec {
> -			mic-in-differential;
> +			rockchip,mic-in-differential;

If I understand the schematics correctly, only one wire is connected so
this board cannot really use differential signaling, and this should
probably instead be dropped.

Regards,
Jonas

>  		};
>  	};
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
