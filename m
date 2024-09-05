Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ADA5CD4F20
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 05:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWgXuPb1FAsgW1TBefAZeh9Thl1dPPguQHKLzP1B4oI=; b=qRDyjN+tMwdCGl
	G+/QEReKQP+QUu2E+i2Lz1EkXNMYjiA24i0oeW9FuxZx7qXKXGNimobOULM0gaMgEBZQYdxQqMnUd
	S20TQrbQxyTz0P2tpR2n5sij4gDSKCZBIn9tsDzvuRScCVwqfF+NB/Iuo6d33hhj/NiyeX9SSQvdJ
	AHhBxmhis5Naib+BexXA35r20NJrSV7+1mZDY7gg5YFShuJVGaCPGUNfYsiTnIn8GN/ED3ify1enr
	TkVC0dc3doBYqDc/tb2bVhf3TZRxx6KuZ0OJZGZjF8MBBJg+cqkxqxxxBIyD+mpTzxjHBPVj4gCM5
	4y9FIVy3r/YOmoeeRDdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm4wf-000000072HS-0gYp;
	Thu, 05 Sep 2024 05:22:13 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm4vg-0000000723K-2MS2;
	Thu, 05 Sep 2024 05:21:14 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 68BA078946;
	Thu,  5 Sep 2024 13:21:03 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 68BA078946
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725513664;
	bh=XXl1draoGyvH7yc3+jRqYw4sfe41HP36QMPNaMT42X8=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=EfpRhp3ZjiidifZR47wrTs788mQM7P1zUbcLsfxGyk+CCaiIfGTYDkev/WmxUifX7
	 YB2DNSmyJdIYCllr4Mag9eHLZikDPg475QnyRiOVbby+Hgs2MEW7cyXJepovCtAj1C
	 7bwyx08s7kBywcTUWWyKyS7+SUWkFwCtZv8Ue6LE=
Message-ID: <38d476f2-20ba-4aea-99e3-9a2e266844e0@classfun.cn>
Date: Thu, 5 Sep 2024 13:22:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shanghai Novotech
 Ariaboard
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-2-bigfoot@classfun.cn>
 <b9e5389f-8492-425e-bc15-35ea55c0e3b5@kernel.org>
 <2ec7de72-8560-430c-a6b6-5ef7ad5f5e00@classfun.cn>
 <c2390181-d736-4691-9bb1-0383c506bb1b@kernel.org>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <c2390181-d736-4691-9bb1-0383c506bb1b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_222113_021113_E79148F7 
X-CRM114-Status: GOOD (  12.82  )
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

On 2024/9/4 21:29, Krzysztof Kozlowski wrote:
> On 04/09/2024 14:14, Junhao Xie wrote:
>> On 2024/9/4 19:35, Krzysztof Kozlowski wrote:
>>> On 04/09/2024 13:14, Junhao Xie wrote:
>>>> Add an entry for Shanghai Novotech Ariaboard (https://ariaboard.com/)
>>>>
>>>> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
>>>> ---
>>>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> index a70ce43b3dc0..58d1a2e8b212 100644
>>>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> @@ -145,6 +145,8 @@ patternProperties:
>>>>      description: Arctic Sand
>>>>    "^arcx,.*":
>>>>      description: arcx Inc. / Archronix Inc.
>>>> +  "^ariaboard,.*":
>>>> +    description: Shanghai Novotech Co., Ltd.
>>>
>>> This is confusing. Prefix is entirely different than company name. I
>>> would expect prefix like shanghainovotech.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> Thank you for your reply.
>> Ariaboard is a subsidiary of Shanghai Novotech, maybe it would
>> be better to change description to "Ariaboard"?
>>
>> Shanghai Novotech: https://shanghainovotech.com/
>> Ariaboard: https://ariaboard.com/
> 
> This does not sound like subsidiary but just name of the board family or
> product family. Their about page suggests "affiliation" but all contact
> points are for Shanghai Novotech.
> 
> I am fine with ariaboard prefix, but please provide context in commit msg.
> 

Thanks, I will add it to commit message in PATCH v2.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
