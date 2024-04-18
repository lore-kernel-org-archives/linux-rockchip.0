Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F01C6C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 16:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=49bMMCtKrGRlSwi3u+fNj/VA/6Vld/o0IvUqQuW/9sA=; b=TTUx/QoLKMReHc7JUVQmcPvYEh
	F30IfNgvZihce893j7jlzT0q+uV6IT8bHR1CrG4qhQGkgf2m6WGssC5ararDXXlS+Ssw+x5gC2lfb
	+BeAeYBgpiQaNVB58MEQvPgD3WrTk2PbFXKYtJLAIeJfEe6iv/w7ab2lC+taZ726tcUvU6KZsQUXg
	r0AUwsBMrks2gYMA2k4CNnnQ75GSyf/02ybOVP7Gq7+VbfU6Got7rt9u1LMqoz+gYT+m47nlIDcyb
	ZjavTplCcnaYLPyWucqC1wRjm8/xy/ei9n9sKfN+oKPmOV/vKZXRN8OBONDUY1UvFKzQgS2AKgj19
	SK2py2tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUis-000000032X9-0Ao8;
	Thu, 18 Apr 2024 16:34:54 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUim-000000032Tr-3RUl;
	Thu, 18 Apr 2024 16:34:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713458086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+NQH0LQd6vFWye5qS7RbP9u62onapvzjrOLajReDA2M=;
	b=yYTukEj1p6PXvVYuwtjdfzL5hvlLohtpoqT2V8L4bQgD+Xxv0/DXDkdPcL50kgQWQo+0bf
	5QInONQOQzpb5ZzLQUuXiKzkOvn8uSp/ZdizLkJBB597MJTM06OLnRdr6ZlZsc85qFf4OH
	Eh9DGJz0A09esw31lDpmaUlCemn/xmabu/qZ7iNswl0goj/VIGQmm4YoHnug5uIduRfRFk
	qXCkMLzTfsPAdFh5oRQ43TZuj01zblfpqxjNEQ+2iUutPMLTdvbui3y5+1O3m7ZmM6tqZL
	z6aFUGUcAAcARqtx5ZyDp0hrQp+tzCZTmeWI7Xqs42AwCzj95X+dcvpny/7y1g==
Date: Thu, 18 Apr 2024 18:34:45 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
In-Reply-To: <d00953aab0f1c978e3720885a6844caa@manjaro.org>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
 <d00953aab0f1c978e3720885a6844caa@manjaro.org>
Message-ID: <896b9fa5a87c5724e1f5b8b517227589@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_093449_048640_73072151 
X-CRM114-Status: GOOD (  12.18  )
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

Hello Chukun,

On 2024-04-18 17:21, Dragan Simic wrote:
> On 2024-04-18 15:01, Chukun Pan wrote:
>> According to https://radxa.com/products/rock3/3a,
>> the name of this board should be "Radxa ROCK 3A".
>> Also update compatible to match the model name.
>> 
>> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> 
> Looking good to me.  I'll send the remaining naming cleanup patches
> a bit later.

Please note that I didn't touch the ROCK 3 board(s)
in my patches. [1][2]

[1] 
https://lore.kernel.org/linux-rockchip/1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org/
[2] 
https://lore.kernel.org/linux-rockchip/1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org/

>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 99bd5e2c76a0..88e9e0011953 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -772,9 +772,9 @@ properties:
>>            - const: radxa,rock2-square
>>            - const: rockchip,rk3288
>> 
>> -      - description: Radxa ROCK3 Model A
>> +      - description: Radxa ROCK 3A
>>          items:
>> -          - const: radxa,rock3a
>> +          - const: radxa,rock-3a
>>            - const: rockchip,rk3568
>> 
>>        - description: Radxa ROCK 5 Model A
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
