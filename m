Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EA2C3DA78
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 19:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzra4icb9wBI1UZA7hOMBqmcAhTQZqj3mLeS1zTYweA=; b=OS1j3H4isnWdpY
	g+v7o8ysTw86rQXaKb+WqIeQj4no5iqW1Z8E8q67V98uqWG9Rcm+jRquet4tT3m8ooxCCefRwAW5E
	uP/KX2iynGLrytZphuZ35KdVa95Gct846VOoE/3eBuCbNjU46P6zcyCUq+PP4QNKloCJG3wZ88vU6
	T9kjtIlKZnCwK2q+wLR1Tj+PMMSnq+eZqIbbk8LyfucNIgM1LlsBcCwiYVhYGfqvfCzaGJG0NkzDR
	ho3Fx3qH3bVj8PWoQW/yBCuM+LUWcyG2EmwmMBE2b/Em5OSmaAvqYBDfZK696fbvnjtYu/V+3pvLe
	bFh9oqdV5E6r3h9bLKzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGQCN-004HQP-NR; Fri, 13 Jan 2023 19:58:47 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGQCD-004HOj-5R; Fri, 13 Jan 2023 19:58:38 +0000
Received: by mail-ej1-x634.google.com with SMTP id v6so11704297ejg.6;
        Fri, 13 Jan 2023 11:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1Bs/TNdFi0UV3tkxYGOXoG9MLNWFUnNK4EJRg4R6c8=;
        b=gfxiiPHmcgM+/qiJjPmOsjS3s8pAL6hBxe2o+wn7fnfeOjsQ9+vJxAWUjH0NWhALDv
         2oXmyhPGfPK3WAExVSUcaWWEwVsp1mhT97stYeSiqGvVKRc6wLV70hh5ZIq6GnHjzce+
         skk82AHnBw/oUJsfxEritr7qSj+cTRgH1tdTmfuTvbiRFxdmFWw8S2xtylPpfuWcARH1
         EEVuwc+2aIY5MIdT0pZoCXijsE2trs/cQ5mRD6kqyeKhcKkycP9IB9vtlQrDRzEA/1+H
         LQ6F6zuEEwEcWPwSg1Lwp1go94f8vtWkGBPUiG7Avh3ScjRmXz4oBvs7TRTyvYLAa6JV
         F3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1Bs/TNdFi0UV3tkxYGOXoG9MLNWFUnNK4EJRg4R6c8=;
        b=Ohjznyr4hGevqGKY4IdD4YSJUenBm1o/nszIHu6cvWVgapbq9dMgu4gotWdTYbbkx7
         Yv4cpnyELWzPTS4WliTYbJAxpet0KovAOZV+9zS6YtIS6JbLMJi7xeC2AP41Etgfwa6R
         u4qhJswdHAyy+cXAFdH5osSCVFl2hFDNEi3WjziD/tP1cVldnVrBO0tdua2I3oFjVECr
         GXjBbEWm12Pn8LYp/encVf8BjvCMvQRk75ZmukerB7+LoOhcqfckgy5IE660uQ14Wsf0
         +tRXAHToem5CTrTdfie/Bsl6I+JFxXJ4lQX6RaBA4F743w/wbvhhDBJvvuzgRj5x57zV
         y0dA==
X-Gm-Message-State: AFqh2koIalpLJ+V7OAsJDR+G79LqNgBR2dUQ0kf8kpbo+sLjQ/DLlyji
	s0xDxUqetFhLkFSgoM7z+XU=
X-Google-Smtp-Source: AMrXdXvU6CwiH9dKLA45vk/7f2vTSzhztuu9DL8bz5CMA5aKgSeDgE67IjwpGrF77vk4tLriTRrFkg==
X-Received: by 2002:a17:906:b00d:b0:7c1:8ba6:6eb3 with SMTP id v13-20020a170906b00d00b007c18ba66eb3mr73926764ejy.35.1673639912295;
        Fri, 13 Jan 2023 11:58:32 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id l6-20020a170906078600b0084d381d0528sm7661277ejc.180.2023.01.13.11.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 11:58:31 -0800 (PST)
Message-ID: <8eca0d59-8db3-b66e-f219-0a256a9b0c79@gmail.com>
Date: Fri, 13 Jan 2023 20:58:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
To: Vinod Koul <vkoul@kernel.org>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, kishon@kernel.org
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
 <Y8GeBzNJvhMeh3sn@matsya>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Y8GeBzNJvhMeh3sn@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_115837_256392_0F9A1C52 
X-CRM114-Status: GOOD (  17.44  )
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



On 1/13/23 19:08, Vinod Koul wrote:
> On 29-12-22, 10:44, Johan Jonker wrote:
>> Convert rockchip-dp-phy.txt to yaml.
> 
> This series fails to apply, pls rebase

Hi Vinod, Heiko,

This serie and others must be combined in the right order to grf.yaml.
Maybe better that Heiko does that with your ACK.

Johan

===

Apply after:
  dt-bindings: soc: rockchip: grf: add rockchip,lvds.yaml

>>
>> Changed:
>>   rename file name
> 
> This should not be in change log but after the --- line
> 
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> Changed V2:
>>   Use the compatible as filename.
>> ---
>>  .../bindings/phy/rockchip,rk3288-dp-phy.yaml  | 41 +++++++++++++++++++
>>  .../bindings/phy/rockchip-dp-phy.txt          | 26 ------------
>>  2 files changed, 41 insertions(+), 26 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
>> new file mode 100644
>> index 000000000..2538235c5
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3288-dp-phy.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/rockchip,rk3288-dp-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip specific extensions to the Analogix Display Port PHY
>> +
>> +maintainers:
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +properties:
>> +  compatible:
>> +    const: rockchip,rk3288-dp-phy
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    const: 24m
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - clock-names
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3288-cru.h>
>> +    edp-phy {
>> +      compatible = "rockchip,rk3288-dp-phy";
>> +      clocks = <&cru SCLK_EDP_24M>;
>> +      clock-names = "24m";
>> +      #phy-cells = <0>;
>> +    };
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
>> deleted file mode 100644
>> index e3b4809fb..000000000
>> --- a/Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
>> +++ /dev/null
>> @@ -1,26 +0,0 @@
>> -Rockchip specific extensions to the Analogix Display Port PHY
>> -------------------------------------
>> -
>> -Required properties:
>> -- compatible : should be one of the following supported values:
>> -	 - "rockchip.rk3288-dp-phy"
>> -- clocks: from common clock binding: handle to dp clock.
>> -	of memory mapped region.
>> -- clock-names: from common clock binding:
>> -	Required elements: "24m"
>> -- #phy-cells : from the generic PHY bindings, must be 0;
>> -
>> -Example:
>> -
>> -grf: syscon@ff770000 {
>> -	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
>> -
>> -...
>> -
>> -	edp_phy: edp-phy {
>> -		compatible = "rockchip,rk3288-dp-phy";
>> -		clocks = <&cru SCLK_EDP_24M>;
>> -		clock-names = "24m";
>> -		#phy-cells = <0>;
>> -	};
>> -};
>> --
>> 2.20.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
