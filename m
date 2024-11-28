Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4987AD6D24F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 00:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IZuhGf6ZZ/o+VSDDrXsAGR6vrtYDBn5x6BJPxc+Ct8o=; b=fYL09goxp+pjMR3avoPj6vaVgk
	M7v4iMnwKy4TR+moMfkA5dupKeCAXsWge5eLOk4/LLpxkJauaKBQll9+9wjUdInmF2P8OshghFxAl
	uY9UdOqpAtcSrpP+t/HO/rvj7S9I63o+XTOCUnr1B42sx3lKUB8Sa/7CXhIDnHR5Ct+Q0Ne2sPEuo
	c0WvTwFAMmSmv2tRZhse3xq5KT1UyZswkmAnyGUXCfzKsIglAS9/Q779N8kt334VvFkrnqCM4Oy8h
	ZwYa8iZih/9JudkxXpzDiP3lBEJ1YtoIFdf2JKHVRjkZSwYFDA+LsikezC8bsjXgX/l2EMIMMqy76
	lJCco9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGSYp-0000000EKg9-2eZl;
	Thu, 28 Nov 2024 00:39:11 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGSYm-0000000EKfg-2ebJ
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 00:39:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732754346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+9WEbYayF7r4dc1ciKZ8iF2OQZGu8E4gJJI8dvu5Zk8=;
	b=XrfKJCcHghg9w3phtZZMqLobPTLd6MDMumHPvKRj8dvVcfAChMaRQyTyXPEGFh/1kRM6Mm
	cDTQMjNEuMliG7/g8ROO1JGWOLFnNKnE3F9zoXOz2OSEx+urDXTsUihtzLHq+qGA3eGfKN
	CCQ8IXy+4tKu4H1iVvnLjcuEQvzzqw4xnfzAdA/EUPaPpt+75e/g5ZBG9X2OSuH+0b7oGX
	wCkxrW9Rbshve7Rn9IXLMcxiIsoVNOCRKgzQZMBEkBUrsgyAwFRJjti0jLeaBzk2t7IdoR
	eiupFTXywRm+Juvplo5zVdi9vrEr6mlOldprKce+GlTHAnTQW+U0rbZTuvVQzA==
Date: Thu, 28 Nov 2024 01:39:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
In-Reply-To: <20241119100813.78820-1-naoki@radxa.com>
References: <20241119100813.78820-1-naoki@radxa.com>
Message-ID: <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_163908_954567_F9445FE4 
X-CRM114-Status: GOOD (  12.70  )
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

On 2024-11-19 11:08, FUKAUMI Naoki wrote:
> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
> regulator.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - none
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 6da13b6b9a7b..b5460c179ef7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>  		vin-supply = <&vcc_sysin>;
>  	};
> 
> -	vcc5v_dcin: regulator-vcc5v-dcin {
> +	vcc5v_dcin: dcin: regulator-vcc5v-dcin {

I just went through the associated part of the ROCK 5C schematic,
and I was unable to see any reasons why should we introduce "dcin"
as another alias here?

The root of the ROCK 5C's power tree is labeled "5v_dcin" in the
schematic, so renaming "vcc5v_dcin" to "5v_dcin" would make sense,
but I don't see why should we add another alias.

>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v_dcin";
>  		regulator-always-on;
> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>  		regulator-boot-on;
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v_dcin>;
> +		vin-supply = <&dcin>;
>  	};
> 
>  	vcca: regulator-vcca {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
