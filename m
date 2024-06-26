Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF657C3064D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 07:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5gPjNqMGgPTo7LW4T65vSGVLLQuPFR4PoGZf6RHugE=; b=Ub0kgaYEDiUiMs
	aEqs3pfwAr+/xWVFP26TMuBRbVM36r+ETrs/4M3SnOfFVMLiPT1oGOdgvP8QW0LKwgPRTdpjstd54
	TafZ2aGnwJ8aY+pW9HGVJzHopS/BqY3k7p3MbryKKhzMHU2DdLDvXzuJwRLKOdIJtDBvSE7Okofy8
	cGdQ3KGFOZuYvCM0Jhlep/SO4UsmCVQGY3ZShVKx4rKrfAmcnbQMtOGD3pnNI8y8Tec/DNgtFoM2A
	H4hpzI2xl0U45YDbNwW7zF19LTyC85/1jtVeAhGezhfbWEMNbAbiFwknmHdai/mHqdPK6ZqZNabpX
	0lD34L852TpaUin1dlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMN7Q-00000005kHU-2GUK;
	Wed, 26 Jun 2024 07:31:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMN7H-00000005kG5-3Jbd;
	Wed, 26 Jun 2024 07:30:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D9DE6CE2072;
	Wed, 26 Jun 2024 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93957C2BD10;
	Wed, 26 Jun 2024 07:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719387052;
	bh=zOVMpDTFFB1iUIaRHdgZB/DQUUlyw1zqiK79M86MG3c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nKkfUCB+lmo2sYtEUkKIgRw5h3aVUIBLHAOV/LHuzU9nlNwAOETQtroF13gfeHwmP
	 wxmHbDAOzTBPPO3SMYnwUbMnNgvZ9Yew0uWVW5RWs4H61MKCs1is5pMxvweiBCvKSE
	 hyqCSzWmGQZmN64vnxmVN16syltOXJ7i7HKjTQrnooCCvPA/nr4Mk6dGmCDUEz5v4F
	 MWRJ0boKr07jDQ2iWOd+NenoiDlhOFgEH744qflgFwWEbKu4fXOsiEKF4qi9VfJ3Pf
	 SSHAOR0eEDWLdAq8DzZltzLi6hkdIKJo8uB3k/KJZSXLCRXA0pET24E7K1nsf8vx3c
	 YUdKeM2Rnek6Q==
Message-ID: <ce81dc9d-bc13-45e2-828e-6570b506ed25@kernel.org>
Date: Wed, 26 Jun 2024 09:30:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: rng: Add Rockchip RNG bindings
To: Daniel Golle <daniel@makrotopia.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall
 <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Dragan Simic <dsimic@manjaro.org>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1719106472.git.daniel@makrotopia.org>
 <b28ccedac0a51f8a437f7ceb5175e3b70696c8c2.1719106472.git.daniel@makrotopia.org>
 <a31bc0f2-4f82-4e15-95b8-c17dc46e7bf5@kernel.org>
 <ZngeUxK6r0qqBj28@makrotopia.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ZngeUxK6r0qqBj28@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_003056_301433_4815BCE8 
X-CRM114-Status: GOOD (  20.55  )
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

On 23/06/2024 15:08, Daniel Golle wrote:
> Hi Krzysztof,
> 
> thank you for your patiente and repeated review of this series.
> 
> On Sun, Jun 23, 2024 at 09:03:15AM +0200, Krzysztof Kozlowski wrote:
>> On 23/06/2024 05:32, Daniel Golle wrote:
>>> From: Aurelien Jarno <aurelien@aurel32.net>
>>>
>>> Add the True Random Number Generator on the Rockchip RK3568 SoC.
>>>
>>> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
>>> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
>>
>> My comments from v2, which I reminded at v3, were not addressed.
>>
>> Respond to each of them and acknowledge that you are going to implement
>> the change.
> 
> Your comments to v1which I'm aware of are:
> https://patchwork.kernel.org/comment/25087874/

We talk about comments from v2, not v1.

> 
>>> +++ b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
>> Filename matching compatible, so "rockchip,rk3568-rng.yaml"
> 
> I've changed the filename.
> 
>>> +title: Rockchip TRNG bindings
> 
>> Drop "bindings"
> 
> I've changed the title accordingly (now: "Rockchip TRNG" in v4).
> 
>>> +description:
>>> +  This driver interface with the True Random Number Generator present in some
>>
>> Drop "This driver interface" and make it a proper sentence. Bindings are
>> not about drivers.
> 
> This has been addressed by Aurelien and further improved by me in v3.
> 
>>> +  clocks:
>>> +    minItems: 2
> 
>> Drop minItems.
> 
> Aurelien did that in v2.
> 
>>> +  clock-names:
>>> +    items:
>>> +      - const: clk
>>> +      - const: hclk
>>
>> You need to explain what are these in clocks. Also you need better
>> names. A clock name "clk" is useless.
> 
> Clocks now have meaningful names and descriptions.
> 
>>> +  reset-names:
>>> +    items:
>>> +      - const: reset
>>
>> Drop reset-names entirely, not useful.
> 
> Aurelien did so in v2.
> 
> Your comments to v2 which I'm aware of are:
> https://patchwork.kernel.org/comment/25111597/
> 
>>> Add the RNG bindings for the RK3568 SoC from Rockchip
> 
>> Use subject prefixes matching the subsystem (git log --oneline -- ...),
>> so it is rng, not RNG. Also, you are not adding all-Rockhip RNG but a
>> specific device.
>>
>> Subject: drop second, redundant "bindings".
> 
> I've changed 'RNG' into 'rng' in the subject and spelled it out in the
> commit message.

And where did you drop the redundant bindings? You just quoted the
sentence and ignored it.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
