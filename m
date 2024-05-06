Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61BC5C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 16:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zxZAX0h35czbRzUHVgzCoTf4c7ZXsf9oDFhQq2BKLA=; b=sMCzhp4Utu6Wed
	yICZiZW2DQ/JT5HKNN1Oc+wS+n1ft758T7gGZk2nUGys9oM6dkePDPpD4v1f/5XtXWDREZDGvy/lK
	Cin5dStRA0x6dmE2MWEK9uITRleaIYiZopdys7X3qiOVIhlHjEJGTAlkdkEYl8mKs0rFoRAI4f8yB
	0p+tN3UiIgwdspoIZoRHg/yyFKTfzG3o6e7hatMTJ/tus3tng4ttgLkqOanbdLCTmf+IxAiYksGjd
	PkmVgL74xI6C1DDz3k2p2jWdIkoF9wqGepQyHguBwnVNbswD9VEI3rBG9b5JTjYHZxmPIVM90UNLE
	sR54dkSI4IGEkR0dfOrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40zN-000000080ow-0Kky;
	Mon, 06 May 2024 16:14:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40zK-000000080nJ-19Ow
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 16:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1715012056;
 bh=N/kMPXOW+9pj2iXbtfmhz5wAtX8HuIAcCJSd79oIR9Y=;
 b=ul3ihFHV4SbKwJnLGHOHuXodFg8JiSVR38YAEVKiCAj/Fuwcj3kTIRiqmfoviRFYbRwAJwRk2
 FgugDDjnKi2J6AfLVfbnmt48aZpU+XgvoAxC7Wp+zrkffUe1XKbPocI6r2PcakkC6YMORSSDusv
 lZpyOnkDi306aDmUidqZiI6z9aDaVMTNbHyx9YEpVl/n3cfMvHSBKFLSMc2TrmIeVwN9xj9EEHZ
 KJWBm9+AyAv+z0duMXdynYov0kdpJ/RGXIqnK1NPZ3kvBv/kdvex87C9A+XC/fJJ14cEuyk0JsS
 t4bg2sMIwX9G6c4BSJK5RTpUurNa6rokI7siotj24tMQ==
Message-ID: <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
Date: Mon, 6 May 2024 18:14:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Heiko
 Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Chris Zhong
 <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
 <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 663901d049216dcdc6f4249f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_091450_421629_FBF11F40 
X-CRM114-Status: GOOD (  23.19  )
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

Hi Krzysztof,

On 2024-05-06 12:47, Krzysztof Kozlowski wrote:
> On 05/05/2024 15:41, Jonas Karlman wrote:
>> Similar to RK817 the RK809 also integrates a complete audio system.
>>
>> Add audio codec properties to binding to reflect this.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Except sending untested patches...

This patch was a 1:1 copy from rockchip,rk817.yaml so I expected
everything to already be correct, my bad.

Guess rockchip,rk817.yaml also needs same fixes/changes as listed below.

Will send a v2 with example fixed in a separate patch and try to fix
your remarks on this patch in v2.

> 
>> ---
>>  .../bindings/mfd/rockchip,rk809.yaml          | 34 ++++++++++++++++++-
>>  1 file changed, 33 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> index c951056b8b4d..b78e1b090105 100644
>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> @@ -12,7 +12,7 @@ maintainers:
>>  
>>  description: |
>>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
>> -  that includes regulators, an RTC, and power button.
>> +  that includes regulators, an RTC, a power button and an audio codec.
>>  
>>  properties:
>>    compatible:
>> @@ -93,6 +93,34 @@ properties:
>>          unevaluatedProperties: false
>>      unevaluatedProperties: false
>>  
>> +  clocks:
>> +    description:
>> +      The input clock for the audio codec.
> 
> No, this allows anything. You must be here specific, see example-schema.
> maxItems: 1
> 
> Drop description, redundant.
> 
>> +
>> +  clock-names:
>> +    description:
>> +      The clock name for the codec clock.
> 
> Drop description, redundant.
> 
>> +    items:
>> +      - const: mclk
>> +
>> +  '#sound-dai-cells':
>> +    description:
>> +      Needed for the interpretation of sound dais.
> 
> Drop description, redundant. Do you see it anywhere for such properties?
> 
>> +    const: 0
> 
> 
> Missing ref to dai-common in your allOf (again: take a look how other
> bindings are doing it).
> 
> 
>> +
>> +  codec:
>> +    description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 
>> +      The child node for the codec to hold additional properties. If no
>> +      additional properties are required for the codec, this node can be
>> +      omitted.
> 
> That's useless description. Describe hardware, not syntax. This must say
> what this node represents.
> 
> Anyway drop it. You do not have any resources there, so put properties
> in top level.

This just tries to follow the rockchip,rk817 binding, not fully sure
about the reasoning behind this node in the the rk817 binding.

RK809/RK817 are very similar and their schema files could possible be
merged.

> 
> 
>> +    type: object
>> +    additionalProperties: false
>> +    properties:
>> +      rockchip,mic-in-differential:
>> +        type: boolean
>> +        description:
>> +          Describes if the microphone uses differential mode.
> 
> Your description copies property name. Do not describe the syntax
> "Description describes", but say what is it.
> 
>> +
>>  allOf:
>>    - if:
>>        properties:
>> @@ -284,5 +312,9 @@ examples:
>>                      };
>>                  };
>>              };
>> +
>> +            rk809_codec: codec {
>> +                rockchip,mic-in-differential;
> 
> Missing all other properties. Make your example complete.

Noticed that the example used in this schema file is for RK808 and not
RK809 so will also add a patch that replaces/fixes the example in v2.

Regards,
Jonas

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
