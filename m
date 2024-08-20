Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D77BC531DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 20:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FL/NqXbfNngfiGiOiHvJqAbvuopdA8cp0vKltxmqo7Y=; b=iTtGgyfuBPKSFJ
	D3pHjP8pQvoW561bPT7pGihDanRC9x8w2GVKYAlXqVUqF485boVF0BnFSl+hv30fAwCAyIvGC5oBW
	H6Ho0uso/S/nqmUdVxMpmNTQjgRQI/zskxhFl2eoAVowhhepgx4W6WZNB4kINGPFPHb67odSkDzc0
	LasBmnZrsjMqiqeJF4z3wVOdDl6aDn3ur/57BmKGtRvPW9EaI5lg+b0PUOmj+TSKLemQYrX2hWNfw
	CBnmSVUR6BaIvuLXMKnJ25RUrs2XbhQKz2Cx5O5zIrbJA3HgN2exXw35TM2k8W+viTA/Y6+hL0+5Y
	vdBpKaYm47MC9Y/DQ/VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgVEY-00000006YGw-2w7C;
	Tue, 20 Aug 2024 20:13:38 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgVEU-00000006YGH-2MdA;
	Tue, 20 Aug 2024 20:13:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724184774; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZVs+Y9v8iAgb8VsZIuQbX9CKKvM/WebS7It5W1Ho1YArMkK/7OU7tHahr7Gy8BvkzFS5erhqgP4DqhtQm4vodpeXAhSkBt3VoQkMIGi3YxtBl+hroSz7M74hyrogpZvp3h7lxrRjg4xNMS6y4qB3QG0xTbAzVyQS/w3UApKQ/YI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724184774; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=p0PPqUn4kE/vLjURk0V8qJ4L1ZY+zB4xXma6zSgEFDc=; 
	b=PcMYEwtN2wWhL9IRg6dc8Z4PhSKnf6ze0IUH+pLssssBbH+S5dTzQf1gnzpw7cidaEXVmOon1um13lfCfXSKPTrrpiCV11uLw62vK4tb5hyyfaqEL80geaRXyLgz5sl5ywP66648i8YbKMUWtRzgtp5MGuUEXrV0yntPSgh5n+U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724184774;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=p0PPqUn4kE/vLjURk0V8qJ4L1ZY+zB4xXma6zSgEFDc=;
	b=ZAZDoM7Snoj+I4FvzpMR7qp1MbyJMsw+ORUDyyaJgj2ceUTUMXo9AnNynOmpD6OQ
	WTqo1wokrXPM+w+S+PzFDXlJsd28tLH0BQ0DkgiBFS99nysRk0Z+8sAwPrJIaijEATP
	tkSZ3KFmA1dwdDYiVAvUrRVEYe5LAZCGPh5bmbGs=
Received: by mx.zohomail.com with SMTPS id 172418477226432.528614268436854;
	Tue, 20 Aug 2024 13:12:52 -0700 (PDT)
Message-ID: <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com>
Date: Tue, 20 Aug 2024 23:12:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Conor Dooley <conor@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com>
 <20240819-bobbing-purplish-99e48baa2304@spud>
 <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com>
 <20240820-tropics-hunchback-6fdcd0b37f91@spud>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240820-tropics-hunchback-6fdcd0b37f91@spud>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_131334_638118_1C41E183 
X-CRM114-Status: GOOD (  26.40  )
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

On 8/20/24 7:14 PM, Conor Dooley wrote:
> On Tue, Aug 20, 2024 at 03:37:44PM +0300, Cristian Ciocaltea wrote:
>> On 8/19/24 7:53 PM, Conor Dooley wrote:
>>> On Mon, Aug 19, 2024 at 01:29:30AM +0300, Cristian Ciocaltea wrote:
>>>> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
>>>> Quad-Pixel (QP) TX controller IP.
>>>>
>>>> Since this is a new IP block, quite different from those used in the
>>>> previous generations of Rockchip SoCs, add a dedicated binding file.
>>>>
>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> ---
>>>>  .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 170 +++++++++++++++++++++
>>>>  1 file changed, 170 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
>>>> new file mode 100644
>>>> index 000000000000..de470923d823
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
>>>
>>> Filename matching the compatible please.
>>
>> RK3588 happens to be the first Rockchip SoC using the QP TX controller, but
>> more are expected to come, e.g. RK3576.  Should we add 'rk3588-' to the
>> filename and let it being dropped when the 2nd SoC is added?
> 
> Yes to the former, no to the latter.
> 
>>
>>>> @@ -0,0 +1,170 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Rockchip DW HDMI QP TX Encoder
>>>> +
>>>> +maintainers:
>>>> +  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> +
>>>> +description:
>>>> +  Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI QP TX controller
>>>> +  IP and a HDMI/eDP TX Combo PHY based on a Samsung IP block.
>>>> +
>>>> +allOf:
>>>> +  - $ref: /schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
>>>> +  - $ref: /schemas/sound/dai-common.yaml#
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - rockchip,rk3588-dw-hdmi-qp
>>>> +
>>>> +  clocks:
>>>> +    minItems: 4
>>>> +    items:
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>
>>> Why have you chosen to do things like this?  I find it makes things less
>>> clear than reiterating the names of the required clocks.
>>
>> I've just followed the approach used in rockchip,dw-hdmi.yaml.  Personally,
>> I preferred this for making a clear distinction between common and custom
>> items, in addition to reducing content dupplication. 
>>
>> If readability is more important/desired, I will expand the items.  For
>> consistency, I assume clock-names, interrupts and interrupt-names below
>> should be treated similarly.
> 
> I don't feel particularly strongly here FWIW. If you chose to do it, do
> it for all properties, yes.

I'll leave it as is, if you don't mind.

>>>> +      # The next clocks are optional, but shall be specified in this
>>>> +      # order when present.
>>>> +      - description: TMDS/FRL link clock
>>>> +      - description: Video datapath clock
>>>
>>> I don't get what you mean by optional. You have one SoC, either they are
>>> or are not connected, unless there's multiple instances of this IP block
>>> on the SoC and some do and some do not have these clocks?
>>> Ditto for the interrupts.
>>
>> They were handled as such in vendor tree, probably assuming other SoC
>> variants might not need them.  I agree it doesn't make sense to have them
>> optional at this point.  Will fix this in the next revision.
>>
>>>> +
>>>> +  clock-names:
>>>> +    minItems: 4
>>>> +    items:
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - enum: [hdp, hclk_vo1]
>>>> +      - const: hclk_vo1
>>>> +
>>>> +  interrupts:
>>>> +    items:
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - description: HPD interrupt
>>>> +
>>>> +  interrupt-names:
>>>> +    items:
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - {}
>>>> +      - const: hpd
>>>> +
>>>> +  phys:
>>>> +    maxItems: 1
>>>> +    description: The HDMI/eDP PHY.
>>>> +
>>>> +  phy-names:
>>>> +    const: hdmi
>>>> +
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>> +
>>>> +  resets:
>>>> +    minItems: 2
>>>> +    maxItems: 2
>>>> +
>>>> +  reset-names:
>>>> +    items:
>>>> +      - const: ref
>>>> +      - const: hdp
>>>> +
>>>> +  "#sound-dai-cells":
>>>> +    const: 0
>>>> +
>>>> +  rockchip,grf:
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>> +    description:
>>>> +      Most HDMI QP related data is accessed through SYS GRF regs.
>>>> +
>>>> +  rockchip,vo1-grf:
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>> +    description:
>>>> +      Additional HDMI QP related data is accessed through VO1 GRF regs.
>>>
>>> Why are these required? What prevents you looking up the syscons by
>>> compatible?
>>
>> That is for getting the proper instance:
> 
> Ah, that makes sense. I am, however, curious why these have the same
> compatible when they have different sized regions allocated to them.

Good question, didn't notice.  I've just checked the TRM and, in both
cases, the maximum register offset is within the 0x100 range.  Presumably
this is nothing but an inconsistency, as the syscons have been added in
separate commits.

>> 	vo0_grf: syscon@fd5a6000 {
>> 		compatible = "rockchip,rk3588-vo-grf", "syscon";
>> 		reg = <0x0 0xfd5a6000 0x0 0x2000>;
>> 		clocks = <&cru PCLK_VO0GRF>;
>> 	};
>>
>> 	vo1_grf: syscon@fd5a8000 {
>> 		compatible = "rockchip,rk3588-vo-grf", "syscon";
>> 		reg = <0x0 0xfd5a8000 0x0 0x100>;
>> 		clocks = <&cru PCLK_VO1GRF>;
>> 	};
>>
>> Thanks for reviewing,
>> Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
