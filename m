Return-Path: <SRS0=6WLT=DS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17210C433E7
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Oct 2020 10:04:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C25AA2083B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Oct 2020 10:04:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ykDzYSHb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C25AA2083B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KXG7znsuZc7OduSjabrVBN5HMS5lI+xd24Z5ZhQ5ayI=; b=ykDzYSHboc0m+q7IxyPOZuxC1
	WnFrCT7EUDEJ4rdY8Jv1VOM2N7Az4UYulealRQ4+a15Cboe8HKR0be52QKV1l5Ua7d3HfH3qJqoJb
	3RXzEOZ9RIuaMils0CNjNB50gwxBj3RhdSLEaK/lN6z1utPDgZblEFrEPHtATDXV/l8++5XfkoADY
	ALfKk8ZnlHdASMr2fvbS0qYrAmGjr5R7vv5ICvA69g+hAOliqV4Iyni3wvGBvisdznToX3uuQ8VDG
	T053lNzIOCEycPDRelJD4ct6MveTUqZhgpLjMxTa5yoMKmN7EEUD+nuRkId63/tvdOI8Wde5z7aoD
	bhbDF+rKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRYD1-0006Cu-85; Sun, 11 Oct 2020 10:04:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRYCx-0006C7-Jc; Sun, 11 Oct 2020 10:04:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 6314C1F4420C
Subject: Re: [PATCH v3] dt-bindings: power: rockchip: Convert to json-schema
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: Rob Herring <robh@kernel.org>
References: <20200921092951.945382-1-enric.balletbo@collabora.com>
 <20201007151159.GA221754@bogus>
 <0abb7d69-e522-4281-bcb7-a5d3f9372a48@collabora.com>
Message-ID: <13e60748-6c65-43bc-cf34-b3a40091f6e3@collabora.com>
Date: Sun, 11 Oct 2020 12:03:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0abb7d69-e522-4281-bcb7-a5d3f9372a48@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201011_060403_750329_443063F2 
X-CRM114-Status: GOOD (  24.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 11/10/20 11:56, Enric Balletbo i Serra wrote:
> Hi Rob,
> 
> Many thanks for your comments, some questions below.
> 
> On 7/10/20 17:11, Rob Herring wrote:
>> On Mon, Sep 21, 2020 at 11:29:51AM +0200, Enric Balletbo i Serra wrote:
>>> Convert the soc/rockchip/power_domain.txt binding document to json-schema
>>> and move to the power bindings directory.
>>>
>>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>>> ---
>>>
>>> Changes in v3:
>>> - Fixed tab errors found by bot
>>>
>>> Changes in v2:
>>> - Fixed a warning that says that 'syscon' should not be used alone.
>>> - Use patternProperties to define a new level for power-domains.
>>> - Add const values for power-domain-cells, address-cells, etc.
>>>
>>>  .../power/rockchip,power-controller.yaml      | 207 ++++++++++++++++++
>>>  .../bindings/soc/rockchip/power_domain.txt    | 136 ------------
>>>  2 files changed, 207 insertions(+), 136 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>>> new file mode 100644
>>> index 000000000000..b23ea37e2a08
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>>> @@ -0,0 +1,207 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Rockchip Power Domains
>>> +
>>> +maintainers:
>>> +  - Caesar Wang <wxt@rock-chips.com>
>>> +  - Heiko Stuebner <heiko@sntech.de>
>>> +
>>> +description: |
>>> +  Rockchip processors include support for multiple power domains which can be
>>> +  powered up/down by software based on different application scenes to save power.
>>> +
>>> +  Power domains contained within power-controller node are generic power domain
>>> +  providers documented in Documentation/devicetree/bindings/power/power-domain.yaml.
>>> +
>>> +  IP cores belonging to a power domain should contain a 'power-domains'
>>> +  property that is a phandle for the power domain node representing the domain.
>>> +
>>> +properties:
>>> +  $nodename:
>>> +    const: power-controller
>>> +
>>> +  compatible:
>>> +    enum:
>>> +      - rockchip,px30-power-controller
>>> +      - rockchip,rk3036-power-controller
>>> +      - rockchip,rk3066-power-controller
>>> +      - rockchip,rk3128-power-controller
>>> +      - rockchip,rk3188-power-controller
>>> +      - rockchip,rk3228-power-controller
>>> +      - rockchip,rk3288-power-controller
>>> +      - rockchip,rk3328-power-controller
>>> +      - rockchip,rk3366-power-controller
>>> +      - rockchip,rk3368-power-controller
>>> +      - rockchip,rk3399-power-controller
>>> +
>>> +  '#power-domain-cells':
>>> +    const: 1
>>> +
>>> +  '#address-cells':
>>> +    const: 1
>>> +
>>> +  '#size-cells':
>>> +    const: 0
>>> +
>>> +patternProperties:
>>> +  "^power-domain@[0-9]+$":
>>
>> unit-addresses are hex.
>>
> 
> As explained in the description of 'reg' is more a power domain index than a
> hexadecimal address. Same as done in
> Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> 
> Use hex pattern will give a lot of errors, i.e 'pd_edp@25' and many others will
> not match the regexes '^power-domain@[0-9a-f]+$'
> 
> Is the hex notation a must here? In that case, I assume I should change all the
> power/rk3*power.h includes to use that notation.
> 

Oops, forget about this part, not enough caffeine this morning, I was confused,
sorry.

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
