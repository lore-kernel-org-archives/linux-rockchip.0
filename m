Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7151AC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 01:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m1dz/t/4rOWXJ5aL3Q3y5+PIWVCptUSTHCWI7Q8zG34=; b=kLFepMSpZraULaqwT4Req71vFE
	x26D0K5P55pxf1oEjIRGMMEoO86A/lgLfhN7eXik8FYFhz6ElJPV8pmSc62/OCqApt9M+mya9Aasb
	tafnGsopFRH4GNnbRbL63tCzh6zqnjPNrIbQ83Dr/k10VlEhPvT54t70QY4nEMXrB0T+9ZOaKDL99
	Ow60Ml5sUdXO4+BlzqwT0anBOfscOGUyhKwLei6Hog7nKP0JKMDGe93WjrYFybJ1P4Hof+7DeN3qn
	surScgfHxvpnOPAlEb4zsnZAENIQE8gVoiHlici4lfq3GHgXHN8PDgIFNaVcFQhiAztCacCOQRUs3
	xESRItOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2LFj-0000000B7Kr-2wBN;
	Thu, 02 May 2024 01:28:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2LFf-0000000B7J2-0BUP;
	Thu, 02 May 2024 01:28:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1714613322;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iVCWMANqUJGySV0avp2OJDbEbFh/XAZgzAZxpawRdKA=;
	b=AL6BY7bAhPHkOUh/+ThY+7AZ5Jy5l+EvAzMP9wr0i+3216C2W4rpKxBVinnuSxVtDqsChK
	sMvXNdslzPHl7YUbKXn+LVadBR+hDI8OgN/OdQb3H0YduRIAbcqKf0PgQZWOOQiBEB19uH
	UfScHmX5ia5a2cTj+qv1+ZhO9NAkQnp1cPA8ih4gykdcV2zU/FO2QLLBrk5TAFuQJ3fYcz
	ya2nPd6YI5/DI0Glo+4Pa3w91d1SIX+wOS+Bf/DRaoFoAoimH93Mw/bOlWTfJ31mg3JW+z
	0Kt3d3tix75+sZLQeLohycCaGMh2spEzpj4vODhAUB8wPNk8Ex/KiOBxfot84A==
Date: Thu, 02 May 2024 03:28:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>, Conor
 Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
In-Reply-To: <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
 <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
Message-ID: <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_182847_749331_5398BB06 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

Hello Folker,

On 2024-04-30 07:42, Folker Schwesinger wrote:
> On Sun Apr 28, 2024 at 2:36 PM CEST, Chukun Pan wrote:
>> [...]
>> +&sdhci {
>> +	bus-width = <8>;
>> +	max-frequency = <200000000>;
>> +	mmc-hs200-1_8v;
> 
> Out of curiosity, does this board also support HS400? From a very brief
> look this board seems quite similar to Rock 4 series boards, that do
> support HS400.

In a word, no, unfortunately.  In more detail, the Rockchip RK3566
and RK3568 SoCs support the eMMC modes up to and including HS200, but
not the HS400 mode.

>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
>> +	vmmc-supply = <&vcc_3v3>;
>> +	vqmmc-supply = <&vcc_1v8>;
>> +	status = "okay";
>> +};
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
