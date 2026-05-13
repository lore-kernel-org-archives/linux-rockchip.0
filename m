Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FC0CD4851
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 14:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfB3bXU231G303Blq1jKo5MEX0aqoYJjrB7LAaK9JfE=; b=wk4cs3IbL0Bc6P
	gfCMolca0Jr3QQ3W5ooV1V+gU9DC3cBr16BeQk2NPstcVH+Kckksml9zq+E8OnGJXbkJEikgyPa6c
	BJLMDb41tlrPqrPgt06iSNqmXSa+IbJSZrKhuRIHLol15aGbbdIXUYO7UWza/k7C4/lUphgI38ZCX
	uX2dGbfrD2dFUmNgWibsNfQjrNoxFQMxqTGaekgv4lHGEsGJEnpkNhz3HwLXhDhcBoEcP51gfq0zW
	A+seKz+47hSdx8Uo36ygJYvpwi4gf3O0IcaKB/zbtSvCnmJp7OlL29C7NY24uKklcOqEeSzcUFO+2
	utDZhc0a+o7gd1sbg6pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAsI-00000002yRN-1B0J;
	Wed, 13 May 2026 14:47:50 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAsF-00000002yQQ-36oY;
	Wed, 13 May 2026 14:47:49 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1778683653; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z34X34TAKvlMFPBzLMiQeMxOY5tJcYfk5GXWV5byHgi+sixNHICT8IWftedkRe3lV2y7SXAmMlkhKaFJPqitasAx4iNYbtpUQwWGcOMj1mOvUo6PBeBPD1k5dJoXm95NYCY0xiV6U8geuK4r+mlvEPyIDNPXK3sWP/W97dxsA+Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1778683653; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Bq9WGORoYPZBXmUGqu1w+1NLwysPb53TwFNAairTvjw=; 
	b=ax02RYhsjy8DejWtvvKv6ZrQXBnP8G55UsSI2RCP5xiBfyC1a9tdz+zAAFUp/obKyDNAJyjSdmLwMOYfi4iAp54c9+J9I6FgIWeWv9rZjldlJfasZbe42nQjI5ZDq/KDlW4nFumKTRmPScMMjToWL6iKfzNRBFbLTBEC2AEDCf0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778683653;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Bq9WGORoYPZBXmUGqu1w+1NLwysPb53TwFNAairTvjw=;
	b=OiMQMTZxXNdQs0FIeDwRBJMbKqL5MmN/NkGiOTorI9PhSffIctLaUKLziP49bNL/
	658SrtBw1oHTQZ7GSIR349dnJU+Ly9GtCMVslND4aOZELg8+4LliZit9LHYf3B6DkUc
	xslDa0OBlqy2+r+t2W6ZFYcKTh/nl8wcg2XnWrko=
Received: by mx.zohomail.com with SMTPS id 1778683651997490.307654217934;
	Wed, 13 May 2026 07:47:31 -0700 (PDT)
Message-ID: <f59370e6-7921-4227-a8bf-ccbb9f03da23@collabora.com>
Date: Wed, 13 May 2026 16:47:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/8] media: dt-bindings: add rockchip rk3588 vicap
To: Rob Herring <robh@kernel.org>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 =?UTF-8?B?0JrRg9C30L3QtdGG0L7QsiDQnNC40YXQsNC40Ls=?=
 <mai.kuznetsov.misha@gmail.com>,
 Charalampos Mitrodimas <charmitro@posteo.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260508-rk3588-vicap-v4-0-6a6cd6f7c90b@collabora.com>
 <20260508-rk3588-vicap-v4-2-6a6cd6f7c90b@collabora.com>
 <20260513124858.GA585254-robh@kernel.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260513124858.GA585254-robh@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_074747_835274_7BD3D711 
X-CRM114-Status: UNSURE (   9.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

On 5/13/26 14:48, Rob Herring wrote:
> On Fri, May 08, 2026 at 09:31:45PM +0200, Michael Riesch wrote:
>>[...]
>>  properties:
>>    compatible:
>> -    const: rockchip,rk3568-vicap
>> +    enum:
>> +      - rockchip,rk3568-vicap
>> +      - rockchip,rk3588-vicap
>>  
>>    reg:
>>      maxItems: 1
>> @@ -26,37 +32,23 @@ properties:
>>      maxItems: 1
>>  
>>    clocks:
>> -    items:
>> -      - description: ACLK
>> -      - description: HCLK
>> -      - description: DCLK
>> -      - description: ICLK
>> +    minItems: 4
>> +    maxItems: 5
>>  
>>    clock-names:
>> -    items:
>> -      - const: aclk
>> -      - const: hclk
>> -      - const: dclk
>> -      - const: iclk
> 
> Just keep this here and add iclk1 on the end along with 'minItems: 4'.

Just to make sure I get it right: The names on the RK3588 would then be
aclk, hclk, dclk, iclk, iclk1
?

I liked that zero. But OK.

Looking into the future, the RK3576 downstream has aclk, hclk, dclk,
iclk{0-4} [0]. Again, if we rename "iclk0" -> "iclk", we can do the same
trick.

However, the RK3562 downstream has aclk, hclk, dclk, csirx{0-3} [1]. We
could rename those to iclk, as those iclks seem to refer to the CSI
hosts/receivers.

Yeah, should work I think. Will update in v5.

Best regards,
Michael

> 
>> +    minItems: 4
>> +    maxItems: 5
> 


[0]
https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot/dts/rockchip/rk3576.dtsi#L3342
[1]
https://github.com/rockchip-linux/kernel/blob/develop-6.6/arch/arm64/boot/dts/rockchip/rk3562.dtsi#L2073

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
