Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D79B0ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 19:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WF9PXLYbEtYfGOU0LDh7Nh7SsWGJaUMbYO0HbVjxKSo=; b=wfcSMPqq9QA1qB
	7oGqsUjLmw1eyYYEtq1iw8XKPPfybPwdmDGB4G1qThpBij0BJtImZjvRHqWG49kBikGfkGNkB0ojP
	eSMocMoyYlGEhKXPro2fCFUt75VuBh1EaB9dUJrMCuCRpN4WLzxbWZ8bqNs7nRzsBXPy9A9dmrQCz
	PmDc9DCDsRv0JSaexRqO+n6RLwh52JrLdwJCsE66AWfcWFhdvEc/M6yxQXE69IhrCy44Le1kJsRcc
	AAdi0S24UsOCyG5nwxB+cQMm9cc9rukWb4jm5T+ywkdpvulSIWII3N2NxqG55T8gCq2cAMgRhtt3G
	1yufvMOzQ+tfdg/q1n4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHwB-009Tbj-Hq; Mon, 05 Sep 2022 19:39:15 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHJh-008pZR-4h; Mon, 05 Sep 2022 18:59:30 +0000
Received: from [192.168.0.10] (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net [86.14.22.118])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 97379140219;
	Mon,  5 Sep 2022 18:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1662404241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LBvAqqQOyOWJbCs1+9iccQj8h42oT69uG8pHawssG8k=;
	b=bWEvj25cxDUevqNgHjeHPNntNLa7FVW97+Kuh41iluYM8+bU9GZAKGAInlZtOJ1LkyBWwt
	AsKM0+qTDfhFep3xqAYvz8tf9fTMli5hifsgZ+fG2AMfInWvLgFTHvlqjN93bpf06iDnma
	0EfoiidKVs2YT5N8wY04X8EF1a/uT1g=
Message-ID: <23985fdd-c517-6883-6da4-2582655cc4d6@postmarketos.org>
Date: Mon, 5 Sep 2022 19:57:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card controller probe on
 Pinephone Pro
Content-Language: en-US
To: Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Martijn Braam <martijn@brixit.nl>,
 Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 Arnaud Ferraris <arnaud.ferraris@gmail.com>,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <n@nfraprado.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20220904233652.3197885-1-megi@xff.cz>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <20220904233652.3197885-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_115929_380957_1C027701 
X-CRM114-Status: GOOD (  17.75  )
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



On 05/09/2022 00:36, Ondrej Jirman wrote:
> Voltage constraints on vccio_sd are invalid. They don't match the voltages
> that LDO9 can generate, and this causes rk808-regulator driver to fail
> to probe with -EINVAL when it tries to apply the constraints during boot.
> 
> Fix the constraints to something that LDO9 can be actually configured for.
> 
> Fixes: 78a21c7d5952 ("arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro")
> Signed-off-by: Ondrej Jirman <megi@xff.cz>

Reviewed-by: Caleb Connolly <kc@postmarketos.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index f00c80361377a..2e058c3150256 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -253,8 +253,8 @@ regulator-state-mem {
>   
>   			vccio_sd: LDO_REG9 {
>   				regulator-name = "vccio_sd";
> -				regulator-min-microvolt = <1710000>;
> -				regulator-max-microvolt = <3150000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
>   			};
>   
>   			vcc3v3_s0: SWITCH_REG {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
