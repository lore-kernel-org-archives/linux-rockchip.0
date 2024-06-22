Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241A7C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 19:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vcqwgnc0ZL9BYBu+J8ogL5xrk6S2uohucTws3br9fjQ=; b=laewjHo2PyhJmPxXjZf15Oqzsa
	n5mMpJeJnuyg6IacrGI++KH9vmvwNEPbLYhtGHAm9RIZZwTjY9wcf/FWjDrx56t8AZv7CmgY+uuWo
	/8QZcUUJUjYdOpmcNv+pEWFEwM0jMtnrM++VhRqa59oza/v0a+0UzLH+cA3Fr71MzTRjPhKGBfXAf
	l2MAID50DOmWHODGYkrM/x++fMNFiHGUmcQH3aEjM0n8pq6JktbhvT914SJvTa7YyjnyJ85vX/Qv5
	h1DbYcoX7LS81SzBEd+/AkyxPVKqoVxYbhaa/QJ3O0T4JeofI3evM6oghgd2eN2b6oyGDe0dWz8K3
	G1B4rS4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL68k-0000000Ceg4-2kc4;
	Sat, 22 Jun 2024 19:11:10 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL68e-0000000CefF-2zua;
	Sat, 22 Jun 2024 19:11:06 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719083460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tsjjMssJVG+oE9sGmhyMnAuMsLYA+R/eJrkwoODbgVM=;
	b=idOUMRHgDMpzEsj+i3s89C5EXijlVePhRa+bpbkscQNve3CaiAVRAquR5LhFjvWmhGX+6z
	irhFMpwC7zk58vCbGxXZMKq4Fvj0g55tJK2ejOgGHS5NlNN0ChmgsYhhjV3wbFq6Ne7bR2
	UL7h+0z7qTcaQJNwG8ndMIYCnJjanxHwaWmfnvoiG8b/tcyzrOvJCveyR1osDmeR1Pf2jq
	qcMWJfHwLXVHzJjhqIZUNeSAHXY6SHUeSOFAtXEQ1wkEFQp+8mBaj20wET9FHEq6PKmntC
	XEr4C5IztY+yDK2mrLwkOw1EPaSKIN5T816EVmMuaO7lWsUmcYTrvGwgpezlSQ==
Date: Sat, 22 Jun 2024 21:10:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno
 <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>, Ard
 Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
In-Reply-To: <303bc9df-c887-41d0-8613-0fa2898ab48e@kernel.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
 <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
 <173ce1663186ab8282356748abcac3f4@manjaro.org>
 <303bc9df-c887-41d0-8613-0fa2898ab48e@kernel.org>
Message-ID: <b1adbe2604561e0958bd5084fe679eea@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_121105_248549_27A855C2 
X-CRM114-Status: UNSURE (   8.39  )
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

Hello Krzysztof,

On 2024-06-22 20:05, Krzysztof Kozlowski wrote:
> On 21/06/2024 20:13, Dragan Simic wrote:
>> On 2024-06-21 11:57, Krzysztof Kozlowski wrote:
>>> On 21/06/2024 03:25, Daniel Golle wrote:
>>>> From: Aurelien Jarno <aurelien@aurel32.net>
>> 
>> [snip]
>> 
>>>> +	pm_runtime_set_autosuspend_delay(dev, RK_RNG_AUTOSUSPEND_DELAY);
>>>> +	pm_runtime_use_autosuspend(dev);
>>>> +	pm_runtime_enable(dev);
>>>> +
>>>> +	ret = devm_hwrng_register(dev, &rk_rng->rng);
>>>> +	if (ret)
>>>> +		return dev_err_probe(&pdev->dev, ret, "Failed to register 
>>>> Rockchip
>>>> hwrng\n");
>>>> +
>>>> +	dev_info(&pdev->dev, "Registered Rockchip hwrng\n");
>>> 
>>> Drop, driver should be silent on success.
>> 
>> I respectfully disagree.  Many drivers print a single line upon
>> successful probing, which I find very useful.  In this particular
> 
> No, it's duplicating existing interfaces and polluting log 
> unnecessarily
> without any useful information.

Would you, please, clarify what existing interfaces are you
referring to?

>> case, it's even more useful, because some people may be concerned
>> about the use of hardware TRNGs, so we should actually make sure
>> to announce it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
