Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 929CFC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 11:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+hthHV/4qDgdz3LwRSI3jtfzjd7Sj2nVm/26Sz77Yk=; b=LvQbb5qUq+7PB6
	Lb5oBZRqo8cWGde1sPs9Nx9bk1XFzHC79SNryGwvhpg5hLz5bNjiT8iK+yvQ45LW//RKhPUVuq8tD
	LQsGiusUbaG+aKVytESCONNCcajYYOpKPtGmJ2qYox44P3vZuHL7szBZofttN9b5OLVvsB1WgD+5i
	FXs3yNyRbee0H0JwdYQXirt+LtJ2MtDoNECyKTcFSCMxFIYbgDwXafAVBWQPp/5M9/pSFDimN/N/c
	jVgTbVJS15L+vTmbisrg8VnBJqFrDOomZYBC26ahaasMGbaeD51vEi8hESZcWc5fmQa4MllplfXYV
	0MrHSbbf3ITegcl2hzOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFBen-00000009akV-37Cx;
	Thu, 06 Jun 2024 11:51:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFBei-00000009aig-22xR;
	Thu, 06 Jun 2024 11:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717674700;
	bh=SFUVvxNAzAySqmVBXZpEMqURPC5o1K2Msw7qVhlZD7w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PZ/YEOyRAoxBUkfN+li+iJ1/+ZkdV/w7JLlLacBCUDLDV9OANKU6QDSE6wokKnPtD
	 qwp2ftm8oXkHucZwZHZ+WGygAmw9YaS+Qf5LD7/sFrWXJYJ6BSIXgsIp3D1RaVhlpK
	 Yv1I5RaN6tA/eJH9RoC3YrJqb0kzFdxNt0NwJLFhsPUZ90kCxRLGU7Zr/YOgjYGLAg
	 nLO01RDhp37BawcBVwqjb0/9zx6W66O2aiwnAq6sJ2CqftiiKydfG4mRZm652iKz5c
	 sDW6OJ7E2LTpFDMoyNAqQGcPve/jTspha6AxhF8PReN8chRmLIiUcTiSAn8JZCff37
	 GHKLT36npbhSA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7AECB37821D4;
	Thu,  6 Jun 2024 11:51:38 +0000 (UTC)
Message-ID: <260aa607-099a-4f65-ae59-c4b6ea2256f1@collabora.com>
Date: Thu, 6 Jun 2024 14:51:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] dt-bindings: display: rockchip,dw-hdmi: Add
 compatible for RK3588
To: Rob Herring <robh@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-12-f6203753232b@collabora.com>
 <20240605232206.GA3345910-robh@kernel.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240605232206.GA3345910-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_045144_833136_6D86B60C 
X-CRM114-Status: GOOD (  20.68  )
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

On 6/6/24 2:22 AM, Rob Herring wrote:
> On Sat, Jun 01, 2024 at 04:12:34PM +0300, Cristian Ciocaltea wrote:
>> Document the Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX controller
>> found on Rockchip RK3588 SoC family.
>>
>> Since RK3588 uses different clocks than previous Rockchip SoCs and also
>> requires a couple of reset lines and some additional properties, provide
>> the required changes in the binding to accommodate all variants.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../display/rockchip/rockchip,dw-hdmi.yaml         | 127 +++++++++++++++------
>>  1 file changed, 90 insertions(+), 37 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> index 2aac62219ff6..60d6b815227f 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> @@ -10,12 +10,10 @@ maintainers:
>>    - Mark Yao <markyao0591@gmail.com>
>>  
>>  description: |
>> -  The HDMI transmitter is a Synopsys DesignWare HDMI 1.4 TX controller IP
>> -  with a companion PHY IP.
>> -
>> -allOf:
>> -  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
>> -  - $ref: /schemas/sound/dai-common.yaml#
>> +  For SoCs up to RK3568, the HDMI transmitter is a Synopsys DesignWare
>> +  HDMI 1.4 TX controller IP with a companion PHY IP.
>> +  The RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP)
>> +  TX controller IP and a HDMI/eDP TX Combo PHY based on a Samsung IP block.
>>  
>>  properties:
>>    compatible:
>> @@ -25,6 +23,7 @@ properties:
>>        - rockchip,rk3328-dw-hdmi
>>        - rockchip,rk3399-dw-hdmi
>>        - rockchip,rk3568-dw-hdmi
>> +      - rockchip,rk3588-dw-hdmi
>>  
>>    reg-io-width:
>>      const: 4
>> @@ -40,36 +39,6 @@ properties:
>>        A 1.8V supply that powers up the SoC internal circuitry. The pin name on the
>>        SoC usually is HDMI_TX_AVDD_1V8.
>>  
>> -  clocks:
>> -    minItems: 2
>> -    items:
>> -      - {}
>> -      - {}
>> -      # The next three clocks are all optional, but shall be specified in this
>> -      # order when present.
>> -      - description: The HDMI CEC controller main clock
>> -      - description: Power for GRF IO
>> -      - description: External clock for some HDMI PHY (old clock name, deprecated)
>> -      - description: External clock for some HDMI PHY (new name)
>> -
>> -  clock-names:
>> -    minItems: 2
>> -    items:
>> -      - {}
>> -      - {}
>> -      - enum:
>> -          - cec
>> -          - grf
>> -          - vpll
>> -          - ref
>> -      - enum:
>> -          - grf
>> -          - vpll
>> -          - ref
>> -      - enum:
>> -          - vpll
>> -          - ref
>> -
>>    ddc-i2c-bus:
>>      $ref: /schemas/types.yaml#/definitions/phandle
>>      description:
>> @@ -131,13 +100,97 @@ properties:
>>  required:
>>    - compatible
>>    - reg
>> -  - reg-io-width
>>    - clocks
>>    - clock-names
>>    - interrupts
>>    - ports
>>    - rockchip,grf
>>  
>> +allOf:
>> +  - $ref: /schemas/sound/dai-common.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3588-dw-hdmi
>> +    then:
>> +      properties:
>> +        reg:
>> +          maxItems: 1
>> +
>> +        clocks:
>> +          minItems: 1
>> +          items:
>> +            - description: APB system interface clock
>> +            # The next clocks are optional, but shall be specified in this
>> +            # order when present.
>> +            - description: TMDS/FRL link clock
>> +            - description: EARC RX biphase clock
>> +            - description: Reference clock
>> +            - description: Audio interface clock
>> +            - description: Video datapath clock
>> +
>> +        clock-names:
>> +          minItems: 1
>> +          items:
>> +            - const: pclk
>> +            - enum: [hdp, earc, ref, aud, hclk_vo1]
>> +            - enum: [earc, ref, aud, hclk_vo1]
>> +            - enum: [ref, aud, hclk_vo1]
>> +            - enum: [aud, hclk_vo1]
>> +            - const: hclk_vo1
>> +
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +
>> +        reset-names:
>> +          items:
>> +            - const: ref
>> +            - const: hdp
>> +
>> +        interrupts:
>> +          minItems: 1
>> +          maxItems: 5
>> +
>> +        rockchip,vo1_grf:
>> +          $ref: /schemas/types.yaml#/definitions/phandle
>> +          description: Some QP related data is accessed through VO1 GRF regs
>> +
>> +      required:
>> +        - resets
>> +        - reset-names
>> +        - rockchip,vo1_grf
>> +
>> +    else:
>> +      $ref: ../bridge/synopsys,dw-hdmi.yaml#
> 
> This is odd... With this plus the amount of conditional schema, I think 
> this should be a new schema doc. Doesn't have to have a common 
> schema. You can let the 2nd user of this IP block do that. 

Yes, v2 is going to be a completely separated driver implementation.

> Though if you 
> have the Synopsys spec, then it would be good to use it and be sure the 
> binding corresponds to it.

Unfortunately I don't have it.

@Andy: Could you please help identifying the properties which should
belong to a common synopsys,dw-hdmi-qp schema?

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
