Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A111C7EE21
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 14:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//1t0zdx8KuSwmF+FzUJQISajKyjWGyIXNdpDBGkjkY=; b=z3gaqvvmOQi97M
	4vOowJrwujSPTlngUdp9Vz8RyY2lXMIW3i9gEbYvprzwYazIxef7sTtoNoocKz+iKkcGgPa0QrnDs
	46KUwVnp4HisiS8ZIq+GoyrHkHipAJH/11+NzreVrhhPDB4oI2JmHUKfxBZ955h//zL5Ir5bou9ME
	B6iNhdNxyEsnp0M2bWB6d7n1T1Zjq8dtjxKlhqbW7LXFL2/AuoqhTAuwK2X4xKjuiBXcqvJ8FxKCQ
	pmjQ+iE0hb5exS4W9uFH9JzINtKtbqXbNW1jX49EiebRhLfkM9StOKsjKjbdIbOTf5r7ac8D4nK5a
	C3BQL5UsVMFEscAhYVGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puZji-0083Y0-1d;
	Thu, 04 May 2023 14:15:10 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puZje-0083Vr-0k;
	Thu, 04 May 2023 14:15:07 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A01CC66056DB;
	Thu,  4 May 2023 15:14:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683209699;
	bh=y4FvvvnzdeNkci3XHhof6BvR49moH0azvrIsG0BQSCQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LHsGk9z+LHxHKeZg/XLV6IG62c1f808AthAGn5ZNZ31bhRXcptxe4ZmfIddqtDNNE
	 756X+D82mKbzroAoAnLKrHHBrI3S3mLXxauBpp3DATIRccxFXjgiIakEBegFrjcfM+
	 tu+yO1/YZD6MqNKjkCCUSdu+6JBijBv9ZsYxtZcEchQCkuGYTGK3CBMtz1/1eZG4Lh
	 b1wHI1DhUy+I1tVhQD3Jjryo8BYwWCuHh0/bofmwc0nDaWpw1SKIH7q1foSmR5U6z5
	 UKc2SPP/jyUlFyWa6U6yhQ4pHq0TdV/GwtNMYtEh8+FSP7vNIx37Iw9wuGKw4Ccupr
	 Zg209zS/q2RHQ==
Message-ID: <a5d4a5be-b658-d9fe-59b8-69199329446d@collabora.com>
Date: Thu, 4 May 2023 17:14:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for
 RK3588
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
 <0678c24c-33ae-7e99-7bb6-d15dc5a7ed76@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <0678c24c-33ae-7e99-7bb6-d15dc5a7ed76@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_071506_448672_898D1E0F 
X-CRM114-Status: GOOD (  14.49  )
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

On 5/3/23 09:28, Krzysztof Kozlowski wrote:
> On 01/05/2023 10:43, Cristian Ciocaltea wrote:
>> Document the OTP memory found on Rockchip RK3588 SoC.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../bindings/nvmem/rockchip-otp.yaml          | 71 ++++++++++++++++---
>>  1 file changed, 60 insertions(+), 11 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
>> index 658ceed14ee2..84a11382c6e7 100644
>> --- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
>> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
>> @@ -9,34 +9,31 @@ title: Rockchip internal OTP (One Time Programmable) memory
>>  maintainers:
>>    - Heiko Stuebner <heiko@sntech.de>
>>  
>> -allOf:
>> -  - $ref: nvmem.yaml#
>> -
>>  properties:
>>    compatible:
>>      enum:
>>        - rockchip,px30-otp
>>        - rockchip,rk3308-otp
>> +      - rockchip,rk3588-otp
>>  
>>    reg:
>>      maxItems: 1
>>  
>>    clocks:
>>      minItems: 3
>> -    maxItems: 3
>> +    maxItems: 4
>>  
>>    clock-names:
>> -    items:
>> -      - const: otp
>> -      - const: apb_pclk
>> -      - const: phy
>> +    minItems: 3
>> +    maxItems: 4
>>  
>>    resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 3
>>  
>>    reset-names:
>> -    items:
>> -      - const: phy
>> +    minItems: 1
>> +    maxItems: 3
>>  
>>  required:
>>    - compatible
>> @@ -46,6 +43,58 @@ required:
>>    - resets
>>    - reset-names
>>  
>> +allOf:
>> +  - $ref: nvmem.yaml#
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,px30-otp
>> +              - rockchip,rk3308-otp
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 3
>> +          maxItems: 3
>> +        clock-names:
>> +          items:
>> +            - const: otp
>> +            - const: apb_pclk
>> +            - const: phy
>> +        resets:
>> +          maxItems: 1
>> +        reset-names:
>> +          items:
>> +            - const: phy
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3588-otp
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 4
>> +          maxItems: 4
>> +        clock-names:
>> +          items:
>> +            - const: otpc
>> +            - const: apb
>> +            - const: arb
>> +            - const: phy
> 
> Keep the same order of clocks as in older variants, so you can keep the
> list in top-level place and here only minItems: 4.
> 
>> +        resets:
>> +          minItems: 1
>> +          maxItems: 3
>> +        reset-names:
>> +          items:
>> +            - const: otpc
> 
> Shouldn't this be phy?

It seems there is no reset for PHY, or at least I couldn't find any
reference in the RK3588 TRM, nor in the downstream driver implementation.

Thanks for reviewing! I will prepare v2 with all the requested changes.

Kind regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
