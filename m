Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0568C83005
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogZMxw7bkugN+Y8rYGJDmMZdKjMNZzMvcMIecF/ExeM=; b=nWenDpq7zRBioG
	uDcUkdFhGHiBPssJBhi+SAM8TeM61E0V/2rQ86uUXpsTGj+84iExe3+BIp9shPi180pdH0tIxvwoC
	2Rh0ipDEqHWARHuLAi+W1RWzZ3vDwu6GKOazXPmstDo0OKTX/CrN6GOUnU5YSplhzHoUqmkoQziXA
	dOhETqvq+e6ghFgDOVxJ6Y1FZT1a/LMHr3Ng5k4zBC+RjKfEQjgP9M3rAdf8nX7bVnehEV7AWKmDC
	OxK7QwH7C4XlKixnnkVe6SzKze+UTI3JUuerUSZbgTF799QpbgMsCg6p0SjKy3tHF5v4dyIRy2sJZ
	Slmu/MlsWVIT34q7H6og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cnB-0035B4-0Y;
	Mon, 12 Jun 2023 08:20:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cn8-0035AP-2b
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 08:20:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-977cc662f62so592846466b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 01:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558045; x=1689150045;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YuaFtQBhTySWcwWuBPWolxBfBrmsW/EltaLg5KhduEM=;
        b=prYV4Vfp+twLytv23bFpM/12uJ6o15SuH+KBCBEGZup97xeepSjtAAvrTD944DaozP
         dCjjc9Ujk6QS+CQF86cl3MlHaFd5UN5kuHsSWjm4vXGlHVc98S6yQt5ZO28R8vq4WPys
         ihK3woQF+UTH2aZsmhsFj/2qo41/3UH27bQTAGAcJTy+wCNJh1SNneIfI5ouoCjXxz+p
         59gTP01LhXBhWowWJMccPaFA70F8edGy5v1/j5ztzutzZJh6+SRIOTNumpVbECOYmCeG
         v2oIk9ltHs6P5LtcA5oGycO1Qpc4+Cx2+bPqcDqSQRPvAMRG6wk+98bjnDeq7G4fJjKC
         SWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558045; x=1689150045;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YuaFtQBhTySWcwWuBPWolxBfBrmsW/EltaLg5KhduEM=;
        b=VfS1DmfSMGoh8R1XI7XeGnCBltdErr0fIzFHSb4n77BUI8ANCrFmUT0T4GOISHrHJq
         ovCmkkBEvcgf5454SqGXsbH24btyT+SGKcry4SATqs6YG8yupU5UnHL7mE3NL5j0QY+L
         W1lRw0PSm6ENQLLPOpB22zjnL4epvWlq+SvnED3STRVz8Ug107O/rYSAAz0WiPF0B9mp
         p6agVgXZS4gqBmTKgE3mCyJCGdenIse3AV1jJ0W5RjgmexfZeDU6JKVdrx11qmZP/KqQ
         8UnAJUTgaH4DM5nQVML3D2mdpEn4mIvjF040iPFxbiymGWcL5uEJ0U63qRYBXA6rv16u
         IerQ==
X-Gm-Message-State: AC+VfDwLSD03L1nvQ9ZyCOMiVpIi7IpqZDP/MPwGRSQPsjbElARTCtT7
	r1XP/JnXYiQm+Z0wTvmgfJ909A==
X-Google-Smtp-Source: ACHHUZ7CqvoolRP6p9vsNBwdjEzm/1deg6tIoE5CeBdTRO5Vjig2Mx8w6tz8HJgvL11K7BItxZRBYg==
X-Received: by 2002:a17:907:985:b0:94e:e5fe:b54f with SMTP id bf5-20020a170907098500b0094ee5feb54fmr8999595ejc.23.1686558045382;
        Mon, 12 Jun 2023 01:20:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ot25-20020a170906ccd900b00965f5d778e3sm4800684ejb.120.2023.06.12.01.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:20:44 -0700 (PDT)
Message-ID: <b5201498-f61b-c431-536d-6cfdce8c731f@linaro.org>
Date: Mon, 12 Jun 2023 10:20:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
 <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
In-Reply-To: <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012046_871132_ECC81283 
X-CRM114-Status: GOOD (  12.11  )
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

On 12/06/2023 10:18, Krzysztof Kozlowski wrote:
> On 08/06/2023 18:22, Sebastian Reichel wrote:
>> Add PHY transmit and receive clocks as described by the
>> DW SATA AHCI HW manual.
>>
>> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>> ---
>>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> index c1457910520b..34c5bf65b02d 100644
>> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
>> @@ -31,11 +31,11 @@ properties:
>>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>>        clock, etc.
>>      minItems: 1
>> -    maxItems: 4
>> +    maxItems: 6
>>  
>>    clock-names:
>>      minItems: 1
>> -    maxItems: 4
>> +    maxItems: 6
>>      items:
>>        oneOf:
>>          - description: Application APB/AHB/AXI BIU clock
>> @@ -48,6 +48,10 @@ properties:
>>            const: pmalive
>>          - description: RxOOB detection clock
>>            const: rxoob
>> +        - description: PHY Transmit Clock
>> +          const: asic
>> +        - description: PHY Receive Clock
>> +          const: rbc
> 
> Conor's comment was not resolved. Adding entries in the middle breaks
> existing users and commit msg does not explain this.

Wait, this is oneOf, not a list. Damn context.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
