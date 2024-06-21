Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35768C2BB85
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 18:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g3M3V214mVN/6YtBxCKRgj2eUKkkJ5qy1CYZc4ziREU=; b=Id3Q7kuigMMgV4AZbSuCEj48c7
	E+Znw4mr8l9M92u/suXcdHp5ekOP8ht/o3L4viGQjc4yuKRYlZA8Jy171pUNKcW1Vel5uRoVav8HK
	sMkU1MfJd/BLJUFiEVFO5YSjaJj5HknEQF687QUCz6KTKvPR4L/pmnv+uom/XzCO6G/JV5hhKg3d5
	UvmZZeYJiTUHJ3Z1XWbvbx70/bRM6kdJlUMd6eBazBJsBCgOWsoyZsA3gkrWs0qcrzxvjqNm1NGqI
	KXM3ypyg6yNFqXFKBnYULCC2C2Ve6RcdwImxTIdNsvU4CuvIsHcFIbb843qUerzk2oGFNASpcCuJm
	7ObqtH/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKilH-0000000ACVO-0keh;
	Fri, 21 Jun 2024 18:13:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKilB-0000000ACRr-2gCy;
	Fri, 21 Jun 2024 18:13:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718993593;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oF3mZo1VFDTjJ8h7Wuq2E3h4BU0kvs78+Dm/ptq/cD8=;
	b=fbAaTOmnqaoD3oG8vocepB00x8sRNHPWzj9Hw6y3RORWi8aRrtkyfaolBJgaWalyo/t17b
	svKXjQA6eljRoko99JasfzdGExxQ9eIRlJYCsTlj6da6yje2DoQosKeJoUZupHWlGIxaaQ
	P3LPhMfHfW4kitBEe4zBl+Z1ul/Yb/lBGow8uwLFWh/O8+78WIIrJKAqD9d8xdZZMyxPm8
	4umP5ug3QHoa95y6rcJZxDsZyeaOsZGD+tJppn2sUJMm0Jlx1vLW3/aUVnF6Bvy5PTaacF
	6ODlLFtAjGXQAEtYgzWMUNvFPmoVmBwdehacUaab1/EBQhAJ4NnNnXRkaYWuyQ==
Date: Fri, 21 Jun 2024 20:13:08 +0200
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
In-Reply-To: <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
 <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
Message-ID: <173ce1663186ab8282356748abcac3f4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_111318_168126_6DBDA5F8 
X-CRM114-Status: UNSURE (   8.48  )
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

On 2024-06-21 11:57, Krzysztof Kozlowski wrote:
> On 21/06/2024 03:25, Daniel Golle wrote:
>> From: Aurelien Jarno <aurelien@aurel32.net>

[snip]

>> +	pm_runtime_set_autosuspend_delay(dev, RK_RNG_AUTOSUSPEND_DELAY);
>> +	pm_runtime_use_autosuspend(dev);
>> +	pm_runtime_enable(dev);
>> +
>> +	ret = devm_hwrng_register(dev, &rk_rng->rng);
>> +	if (ret)
>> +		return dev_err_probe(&pdev->dev, ret, "Failed to register Rockchip 
>> hwrng\n");
>> +
>> +	dev_info(&pdev->dev, "Registered Rockchip hwrng\n");
> 
> Drop, driver should be silent on success.

I respectfully disagree.  Many drivers print a single line upon
successful probing, which I find very useful.  In this particular
case, it's even more useful, because some people may be concerned
about the use of hardware TRNGs, so we should actually make sure
to announce it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
