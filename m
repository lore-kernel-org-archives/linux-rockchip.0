Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F01F0C54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 13:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rgLovzTBk4M7M2VyGXCuPtiZ3Xegz/XoBgye6zTL+c=; b=uuwcRdUQ61l51q
	W8CiElBP9FaQIkMCcY5LMbPqkfZwY67egxQO7raPg3v6esSulJtHu+TBLXJqrLI3C1ZuV0dlt46+r
	/52SrpdWjagdDbcs/MfDf8ncDwzXqZ2vS7gX1kLNUD5AFgkpSHK2KBYx4SIYhSOX0Fk0ejdvXPTWw
	dTm4jYWNiOrCBMF1ujfDupRZjHrT7ZY8Hw/4lhtrTWvD+KAKOwuTGpfK69wgJrOmSjA29Rwx12KWh
	DIw7LXEIorVsgQxqyvoOAoqbnMXJKemxXZygtNkSCoN7iQDVkwLFvsm0IUKeexTCacqbtnN7LOcu6
	qXlqlA2vhXmPs0WYX8KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivqT-0000000BMgY-1658;
	Tue, 27 Aug 2024 13:02:49 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivpe-0000000BMWy-0ThY
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 13:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724763707;
 bh=KZfENK1t3+yf0BK3gmf2/PNsiTAlFh2wSe1HI5OaUgY=;
 b=SA79Irt+xUmgatt/St6kq6eYTPLfl2YWu2miMJvMnoeO58Bbucu+RiziPbx65PC3HlkvJJCgu
 pGY/L2CAl07IQns4igfBfQ3bkBrmFC1G8K9Vv+DtdJY/8REEjxAH295BzNibxYYx4RxV1vi9MmL
 izaKWywy3DkgffdDzm0G6NnOJfX2mde+V8st6vz+y8KJSv5EDd0Pht41Fm+3cxW3kxZZ2OtNyGQ
 AUSwBtUJxC1xOgM7tx3gKBcerjX7gEqiqIlI4taOjly+1RGskyT8uIibUi/pgW0IMeTLWTcGAK0
 MEooJtNofL5bSxxQnxpHLdvVLMSCny46jYSFxMb+5sTQ==
Message-ID: b6c7513e-26c3-4f9d-bdb4-c4710bea5820@kwiboo.se
Date: Tue, 27 Aug 2024 15:01:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
To: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <66ccebeb.d40a0220.356790.58caSMTPIN_ADDED_BROKEN@mx.google.com>
 <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org>
 <99731A50-58FA-4829-9785-339051E791B2@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <99731A50-58FA-4829-9785-339051E791B2@sntech.de>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66cdce388a3cb1214853bd7e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_060158_196978_9393A654 
X-CRM114-Status: GOOD (  16.33  )
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

On 2024-08-27 13:44, Heiko Stuebner wrote:
> Am 27. August 2024 13:29:34 MESZ schrieb Jonas Karlman <jonas@kwiboo.se>:
>> Hi Krzysztof,
>>
>> On 2024-08-27 08:52, Krzysztof Kozlowski wrote:
>>> On 26/08/2024 22:55, Jonas Karlman wrote:
>>>> The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
>>>> RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
>>>> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.
>>>>
>>>> Add devicetree binding documentation for the Hardkernel ODROID-M1S board.
>>>>
>>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>>> ---
>>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>>>  1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> index f08e9f2f5dfc..9e29a5ecc94d 100644
>>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> @@ -598,6 +598,11 @@ properties:
>>>>            - const: hardkernel,rk3568-odroid-m1
>>>>            - const: rockchip,rk3568
>>>>  
>>>> +      - description: Hardkernel Odroid M1S
>>>> +        items:
>>>> +          - const: hardkernel,rk3566-odroid-m1s
>>>
>>> hardkernel,odroid-m1s
>>>
>>> Why adding SoC name to the board? Can it be Odroid M1S with RK3568?
>>
>> No, the M1S (rk3566) is a variant of the M1 (rk3568) with less features
>> and the smaller SoC package, fully agree that hardkernel,odroid-m1s is
>> better, will use it in a v2.
>>
>> I mainly wanted to keep it consistent to other Hardkernel Odroid boards.
>> - hardkernel,rk3326-odroid-go2
>> - hardkernel,rk3326-odroid-go2-v11
>> - hardkernel,rk3326-odroid-go3
>> - rockchip,rk3568-odroid-m1 (hardkernel,rk3568-odroid-m1)
>>
>> If you agree to a vendor prefix change of rockchip,rk3568-odroid-m1,
>> maybe we can also drop the soc name from that compatible at the same
>> time? E.g. change it to hardkernel,odroid-m1.
> 
> I'd also agree with going with compatibles without the soc name in it. It is an ABI break but I think except the chrome devices no other board actually uses that part of the compatible ?

U-Boot and the FIT spec [1] does have a FIT_BEST_MATCH feature that use
the board compatible to find the best matching FIT configuration.
Guessing this is a feature of FIT that the chrome devices use.

I have recently learnt that the OpenWrt project use the board compatible
to validate if a system upgrade package/image can be applied to the
currently running system.

OpenWrt does not have an image/target for the ODROID-M1 (or other
Hardkernel boards), so this ABI breakage should not affect OpenWrt users.

I do not know of any other actual use of the board compatible.

[1] https://fitspec.osfw.foundation/#select-a-configuration-to-boot

Regards,
Jonas

> 
> 
>> Regards,
>> Jonas
>>
>>>
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
