Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F1D6C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oYoaHnEqbTDHyxicXrFqVxlnm1nqkjocXStfjireSg=; b=r0rSxO8ncPEiFX
	Py5LoNRPekEiNqb2bHJ3Z76ee3MukfWRmyKoSFDWsLD1lIxy0Fd1quBAd7dcuk9SI2mFYc2b6AFau
	7Vy+WDe8EGW8Teiy1s+Jfqk9yAFSyc/NbZQTp3IDhulH3UAdu2UdSDT2FmOt5/r4H9RpkBe0NyTFQ
	BGCfsczQPWHiXnelsX0xyalbeCPHEYK4NZjVnwtBnF8nnOx/IXFVqJoTW7227p34Q1A3zCnQVyZln
	Ag8B/Bx2Hy0Qre3Dvvqp7hsLk0DLgtXUymEQkw30lMN8+0EUTJftld/FJnE0tUYc+6j7JNK66gt1A
	3RlTMQvsEzmbkqaMKfsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7HD6-00Emty-2f; Mon, 19 Dec 2022 14:33:44 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7H3J-00EfCv-EM; Mon, 19 Dec 2022 14:23:39 +0000
Received: by mail-ej1-x636.google.com with SMTP id n20so21961147ejh.0;
        Mon, 19 Dec 2022 06:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gkz73r1Eb7Lcu2UFxAAgyawdXAVgK+nUDNDZI6NypmI=;
        b=lrK6/UvA0iB5QyZKs21O4DDtfVksA/wJmDdFI3vbYuBtAGlQGsgPT2fh0Cf4N2QS6x
         oamZ0dNV7Qyl2NQRqZAx42e2t8jodmut605Os1ZviwfCuRiKPFa7UIqCkRYYjq5iIE55
         hEIjMexAke+0iT2SP4qc2qmrW/R0KoWPj8ALc7WK51KklI+NqE8Wf762Qu2/w/3XbJtp
         O6P7AsGQKBIiPvXrnV2bsYc6rb9mJmfvnzQYgHZX1LzfzTbSzXUhzk+m1P114Q4srqx9
         v9QAGqLXUIfVAcjksSORECeS8nRpfNkYx52r1KboWugeZ6Cx1qlSg2h8+vhuLgBQ6/vu
         ws+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gkz73r1Eb7Lcu2UFxAAgyawdXAVgK+nUDNDZI6NypmI=;
        b=oRvAUYXS8n74ieWMahYNDYaKw+GfIlqnrA38BbOZK2rhMPS5qIMYHKBdxxFTAui8V8
         og5/dP8jKu8KTD0Yzpz6VACw+awXn31usN74NMY9Xbl4Dkypj4tHtLCmiHJHyuAtU8xb
         sqjwDEKVYZIT9MzKofvMNetz3WxLTbE+Rr4RK1ku+P27ktFw1LcjAGGWJP46iZiOHbmL
         IF7skdmNDE3S7B0QYBDmqFuHE6L7J1v0Sb8o0pENfjHwzK7xtwaL2MmtGqLtrt1YDbnp
         v9u8hN+aoglFo14bCHkeAL7jNn3Elrc9yBEsb0X/QQrGGiE264++D9F6Aq5vDEKX8xAf
         QtbQ==
X-Gm-Message-State: ANoB5pkhwgIZTe2YRYHs2CZ8eG9PKXvkUXWrkEnT9SGJCrr15SlXW+d0
	GRKlZaTvRBMIArvWB7Tw2N4=
X-Google-Smtp-Source: AA0mqf4Glrj80Pn6SO+5YOa1CODh03vabAMBUtymLKCKDN//Cz/MMQ0Pk5yKzavBrdNqIg2OJ2YxFA==
X-Received: by 2002:a17:906:1711:b0:7c1:3fbd:d569 with SMTP id c17-20020a170906171100b007c13fbdd569mr33253033eje.8.1671459813432;
        Mon, 19 Dec 2022 06:23:33 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w5-20020a17090652c500b007c4fbb79535sm4399120ejn.82.2022.12.19.06.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 06:23:32 -0800 (PST)
Message-ID: <5e05a6d5-bc89-fb66-fcae-2e1194e23c12@gmail.com>
Date: Mon, 19 Dec 2022 15:23:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v3] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
 <8db62d1a-365c-d41d-90aa-4c78c5d5e9ce@linaro.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <8db62d1a-365c-d41d-90aa-4c78c5d5e9ce@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_062337_718680_257AA7F8 
X-CRM114-Status: GOOD (  19.04  )
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



On 12/19/22 14:04, Krzysztof Kozlowski wrote:
> On 19/12/2022 13:32, Johan Jonker wrote:
>> Convert rockchip-lvds.txt to YAML.
>>
>> Changed:
>>   Add power-domains property.
>>   Requirements between PX30 and RK3288
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> Changed V3:
>>   Filename matching compatible style
>>   Drop "Regulator phandle for "
>>   Specify properties and requirements per SoC
>>   Sort order and restyle
>>
>> Changed V2:
>>   Fix title
>> ---
>>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>>  2 files changed, 170 insertions(+), 92 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>> new file mode 100644
>> index 000000000..03b002a05
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>> @@ -0,0 +1,170 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,lvds.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip low-voltage differential signal (LVDS) transmitter
>> +
>> +maintainers:
>> +  - Sandy Huang <hjc@rock-chips.com>
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,px30-lvds
>> +      - rockchip,rk3288-lvds
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: pclk_lvds
>> +
>> +  avdd1v0-supply:
>> +    description: 1.0V analog power.
>> +
>> +  avdd1v8-supply:
>> +    description: 1.8V analog power.
>> +
>> +  avdd3v3-supply:
>> +    description: 3.3V analog power.
>> +
>> +  rockchip,grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description: Phandle to the general register files syscon.
>> +
>> +  rockchip,output:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    enum: [rgb, lvds, duallvds]
>> +    description: This describes the output interface.
>> +
>> +  phys:
>> +    maxItems: 1
>> +
>> +  phy-names:
>> +    const: dphy
>> +
>> +  pinctrl-names:
>> +    const: lcdc
>> +
>> +  pinctrl-0: true
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description:
>> +          Video port 0 for the VOP input.
>> +          The remote endpoint maybe vopb or vopl.
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description:
>> +          Video port 1 for either a panel or subsequent encoder.
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +required:
>> +  - compatible
>> +  - rockchip,grf
>> +  - rockchip,output
>> +  - ports
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,px30-lvds
>> +
>> +    then:
>> +      properties:
>> +        reg: false
>> +        clocks: false
>> +        clock-names: false
>> +        avdd1v0-supply: false
>> +        avdd1v8-supply: false
>> +        avdd3v3-supply: false
>> +
> 

> I see one compatible expects regmap from parent (grf is the parent here)
> and other is directly on MMIO bus. Not the best combination... Maybe
> this  should be just split to two separate bindings? Looking at driver,
> their code is also very different between these two variants.

Looking at the manufacturer tree we can expect the rest with grf parent, but also in the same driver combined with different registers and common probe.
Due to common probe I prefer one common document.

Johan

===

https://github.com/rockchip-linux/kernel/blob/develop-5.10/drivers/gpu/drm/rockchip/rockchip_lvds.c#L671


rockchip,rk3126-lvds
https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm/boot/dts/rk312x.dtsi#L914

rockchip,rk3368-lvds
https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3368.dtsi#L1196

rockchip,rk3568-lvds
https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L734

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
