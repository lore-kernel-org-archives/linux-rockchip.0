Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A084C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 07:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgQsECBnCzFi9MJ/vqySNjItkKHJ7eBaxdOywvdDwsY=; b=nNSMbU4GZb8zWN
	5igt1orMoKPBuTsycNx81rO6T5taYe44jw725goCnEXPT/ZyNwTKaE4K4TtMXmDxzezmS26jNya7g
	JgaCQcZGFi/uZpurXgKbFzmkwVwVeyFLNZ4XCY6OVmo967O8yT/lysLsxdQM3KHanyt5X54aNUfhQ
	XsshY6LVBVZetJg+eWeLFLcQz0pppJuWbJjdU1XVDiCYgFU2LTlsvVWdDpMsE3nHTKdBlvSovgBPP
	+Aqcdrr6DKsOOgx1utflIi0g7BjQKKhO68DefKDTEX7JSa/hibDfNTbLtsk5nI4Y0AJTs5smPIg3m
	zBI/v9j2klcdGa6hKFYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIGG-00000002lck-04UL;
	Fri, 09 May 2025 07:35:12 +0000
Received: from mail-m15591.qiye.163.com ([101.71.155.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIGC-00000002lbE-41C5;
	Fri, 09 May 2025 07:35:10 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 147cae3e8;
	Fri, 9 May 2025 15:34:58 +0800 (GMT+08:00)
Message-ID: <5a4f6229-1450-4c96-bfac-5257f66b2ddf@rock-chips.com>
Date: Fri, 9 May 2025 15:34:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250509070247.868-1-kernel@airkyi.com>
 <20250509070247.868-3-kernel@airkyi.com>
 <ccf4b15a-8399-4a7f-ae40-d01d0975921c@kernel.org>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <ccf4b15a-8399-4a7f-ae40-d01d0975921c@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUkfGVYYSUxJHhgdSBhLShpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96b3f8063203abkunm147cae3e8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M1E6Kgw*HDJWFQI4FToPDCIW
	Fx0aCUhVSlVKTE9NTExNSktPQkhMVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEJOTzcG
DKIM-Signature: a=rsa-sha256;
	b=hJ7NikvuDJyHiU7TZoYgd87OzKAxhsDgv4cKFeiFgwAnYpwpLeSMndEsG6yjBhRVE4W7w8ioYZpdvRBjJX0LT/gbPHUp9B3ZkZA+9kh6jciL3KWKe7lrhHOr8J8qyQdAE0rM7L+7JAmxljZqr+wVdMoLy7f0nS6OQxx/RUC+BZE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BQYBVB8p8nqMgWuckxW3aKVVBX+ixBeiwRuXnWXYxag=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_003509_170466_58A193A0 
X-CRM114-Status: GOOD (  13.97  )
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

Hi Krzysztof,

On 2025/5/9 15:11, Krzysztof Kozlowski wrote:
> On 09/05/2025 09:02, Chaoyi Chen wrote:
>> +
>> +  clock-names:
>> +    items:
>> +      - const: core-clk
>> +      - const: pclk
>> +      - const: spdif
>> +      - const: grf
>> +
>> +  extcon:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle to the extcon device providing the cable state for the DP PHY.
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  phys:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> Just phandle. If this is an array (but why?), you need maxItems for
> outer and inner dimensions.

I think it could be phandle or phandle-array. Since the RK3399 DP has 
two PHYs, if we put in two PHYs here, the driver will pick one PHY port 
that is already plugged into the DP for output. If we fill in only one 
PHY here, then output is only allowed on the corresponding PHY.

Will add restrictions and add more descriptions in v3.


>
>> +    description:
>> +      Phandle to the PHY device for DP output.
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description: Input of the CDN DP
>> +        properties:
>> +          endpoint@0:
>> +            description: Connection to the VOPB
>> +          endpoint@1:
>> +            description: Connection to the VOPL
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description: Output of the CDN DP
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 4
>> +
>> +  reset-names:
>> +    items:
>> +      - const: spdif
>> +      - const: dptx
>> +      - const: apb
>> +      - const: core
>> +
>> +  rockchip,grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle to GRF register to control HPD.
>> +
>> +  "#sound-dai-cells":
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - interrupts
>> +  - phys
>> +  - ports
>> +  - resets
>> +  - reset-names
>> +  - rockchip,grf
>> +
>> +additionalProperties: false
> Well, if you added dai-common $ref then this could have stayed as
> unevaluatedProperties, so you will allow names for the DAI as well.

Thanks for your clarification. Will fix in v3.


>
>
> Best regards,
> Krzysztof
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
