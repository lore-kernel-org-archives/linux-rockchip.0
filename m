Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30F2C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 16:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6YINCJTZs1Rp9O2PofIQJYoLrNe8W6jf45p9w5UCvw=; b=X19S/ymO7oiTCg
	sfAkMoyrXqAuK15rn4wIAwjcLZx4oenff+i7xw241fEd5fh8B/ITYI4FNXWxmMCACA8B82qntazp3
	k+b2V1t4lYk5zjosXceSTbwo0qposcv/AfEPx3c0Yk9ls2pTp/0ELy0J5vvvyQOsyANHoJQeYdMFU
	8hJOKk+Na6joiYJt6SzzXF21efPOiBt6PgG9tusTljC4QpSlgYNPlyg1r/UuZm+xtjQC9pxs7S5jN
	yrqvNelM9Q3IwFXlskHD02Pb5KjzYNsH2PwMmun1XECgcOGbxo5AfVJP1vZtyIuGA0JbcUHzkgjBP
	4Meo2qN7jN6rOZGrNnPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqaCh-0000000EoeN-1lQn;
	Fri, 07 Mar 2025 16:05:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqa9U-0000000Eo4R-1WNp
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 16:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741363338;
 bh=aCrPvOluCec+vwfJ2dRCW1m+hFa1hc7eEdH3qmC/0uk=;
 b=nz3s4TS/YyiLlyFw7HTOI6xOUNvRxLTEEf2XiihY3MnekLHkGhLWoJBi81Cx2fWkB5mPFsomg
 kEzkBPaxhU3kKxQypxcI+s6Rgtfy1MFGWJ7kIlKzmhwNAk24optMF7wF5jCvvzx+fuCU5kMgVmI
 AA4QC5Y+TfQpwNbtRdQMm9GsvoOxInZL3UXEeGYDI5CKpKZAp/+s/sjbqVHAjr9FcQOzrYkQwn3
 t2LRwnUCccyKh8MERX4SoPEh5nMcgdRowctmuRgz0CJWLSgK72NjKkszEuT5/Kdo5zuhNJnkJuO
 IM5Rj2VzxMV+BzT6xZo/Po9a9WwZQoyqcK86TUh1KtOg==
X-Forward-Email-ID: 67cb18782ea74034f8b964f0
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <de2fb6c6-b053-4be9-8c44-2476c5eb26a6@kwiboo.se>
Date: Fri, 7 Mar 2025 17:01:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: net: rockchip-dwmac: Add compatible
 string for RK3528
To: Conor Dooley <conor@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Wu <david.wu@rock-chips.com>,
 Yao Zi <ziyao@disroot.org>, linux-rockchip@lists.infradead.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250306221402.1704196-1-jonas@kwiboo.se>
 <20250306221402.1704196-2-jonas@kwiboo.se>
 <20250307-tipping-womanlike-a1ce2370d8d3@spud>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250307-tipping-womanlike-a1ce2370d8d3@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_080220_431617_9F4803B8 
X-CRM114-Status: GOOD (  16.59  )
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

Hi Conor,

On 2025-03-07 16:42, Conor Dooley wrote:
> On Thu, Mar 06, 2025 at 10:13:54PM +0000, Jonas Karlman wrote:
>> Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
>> Ethernet QoS IP.
>>
>> Add compatible string for the RK3528 variant.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> I was not able to restrict the minItems change to only apply to the new
>> compatible, please advise on how to properly restrict the minItems
>> change if needed.
> 
> What do you mean by that? As in, what did you try and did not work?
> Usually you do something like
> if:
>   not:
>     compatible:
>       contains:
>         rockchip,rk3528-gmac
> then:
>   properties:
>     clocks:
>       minItems: 5
> 

Thanks, this seem to work, will use in a v2.

I tried to do something opposite and instead set minItems: 4 when
compatible contains rockchip,rk3528-gmac:

if:
  compatible:
    contains:
      rockchip,rk3528-gmac
then:
  properties:
    clocks:
      minItems: 4

but that resulted in something like:

  rockchip/rk3528-radxa-e20c.dtb: ethernet@ffbe0000: clocks: [[7, 173], [7, 172], [7, 171], [7, 170]] is too short

Regards,
Jonas

>>
>> Also, because snps,dwmac-4.20a is already listed in snps,dwmac.yaml
>> adding the rockchip,rk3528-gmac compatible did not seem necessary.
>> ---
>>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> index 05a5605f1b51..3c25b49bd78e 100644
>> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>> @@ -24,6 +24,7 @@ select:
>>            - rockchip,rk3366-gmac
>>            - rockchip,rk3368-gmac
>>            - rockchip,rk3399-gmac
>> +          - rockchip,rk3528-gmac
>>            - rockchip,rk3568-gmac
>>            - rockchip,rk3576-gmac
>>            - rockchip,rk3588-gmac
>> @@ -49,6 +50,7 @@ properties:
>>                - rockchip,rv1108-gmac
>>        - items:
>>            - enum:
>> +              - rockchip,rk3528-gmac
>>                - rockchip,rk3568-gmac
>>                - rockchip,rk3576-gmac
>>                - rockchip,rk3588-gmac
>> @@ -56,7 +58,7 @@ properties:
>>            - const: snps,dwmac-4.20a
>>  
>>    clocks:
>> -    minItems: 5
>> +    minItems: 4
>>      maxItems: 8
>>  
>>    clock-names:
>> -- 
>> 2.48.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
