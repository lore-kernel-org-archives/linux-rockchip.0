Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE6B3CD37B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9HesUAAeYvr0MM7k0+QWgTO0FxuSqo0NOGGP1Ui11s=; b=4ts6wjh6g/0lxA
	+JG2cJcB0hJSvz6QBNLnDDHjzn1dPydanwTe8zVi1AEG1hxRkVdRdQKFyg+HQ+J4BmMOQji5rGCfi
	8cbVaj7jrU5xJumWkMT1IwIXARH20PYp9fUc75cALMjmRToL4wGqgMcu8Qo9ePJkNuCOjLbpTtw17
	ZAHhxGuE5cCbOHPnucVot2W8PoZ9eI+xTEz0QQVoQTC8+ZBJZTQQcL/u6TNxvmfx6zBIELEx8urgx
	hDkrnENBIpTWwtqUQeQj8NTlDSaq+dqs/secivAL1+Hj7oO0rgfbTMAA+rxCKqZTFo/EQSj+K/QM9
	JE4nTJkF35z+/NGwv5Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slotx-00000004K97-1mTW;
	Wed, 04 Sep 2024 12:14:21 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slosz-00000004JzE-2gRF;
	Wed, 04 Sep 2024 12:13:23 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 8841D789DF;
	Wed,  4 Sep 2024 20:13:17 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 8841D789DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725451998;
	bh=Vm1m87bDBl/nK+yI9aANRki1TovLXqNDyh/ugIwEEqg=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=QLv7ABS+UJFGUiOqbubTLaLLzujkcYA8E7NhYmtham0E6VbeZo68QgBkn64zh0N2t
	 9atU1LzoG1fWfgTpspwTy2mNF62jGSMmt+nslLTprY5DkjBiKA/hp/U605JZGNzMMp
	 pCXiCY26LgogHZCu1C+cjjlAe49i7UVAU+JPG7t0=
Message-ID: <2ec7de72-8560-430c-a6b6-5ef7ad5f5e00@classfun.cn>
Date: Wed, 4 Sep 2024 20:14:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shanghai Novotech
 Ariaboard
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-2-bigfoot@classfun.cn>
 <b9e5389f-8492-425e-bc15-35ea55c0e3b5@kernel.org>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <b9e5389f-8492-425e-bc15-35ea55c0e3b5@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_051321_980658_699D98D4 
X-CRM114-Status: GOOD (  12.53  )
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

On 2024/9/4 19:35, Krzysztof Kozlowski wrote:
> On 04/09/2024 13:14, Junhao Xie wrote:
>> Add an entry for Shanghai Novotech Ariaboard (https://ariaboard.com/)
>>
>> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
>> ---
>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> index a70ce43b3dc0..58d1a2e8b212 100644
>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> @@ -145,6 +145,8 @@ patternProperties:
>>      description: Arctic Sand
>>    "^arcx,.*":
>>      description: arcx Inc. / Archronix Inc.
>> +  "^ariaboard,.*":
>> +    description: Shanghai Novotech Co., Ltd.
> 
> This is confusing. Prefix is entirely different than company name. I
> would expect prefix like shanghainovotech.
> 
> Best regards,
> Krzysztof
> 

Thank you for your reply.
Ariaboard is a subsidiary of Shanghai Novotech, maybe it would
be better to change description to "Ariaboard"?

Shanghai Novotech: https://shanghainovotech.com/
Ariaboard: https://ariaboard.com/

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
