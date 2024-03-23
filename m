Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A29C54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 21:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsf6fEgDFW60/UOH7lqRnWCPVDT2PsMLkNGB12UjXII=; b=1GEPNykgjFYlKb
	mEQkHy8Z2KCapwWRxrLsiHhC8Tog7Lzw3LtRQpq8C+JmHCQOmebA6l709AMmD504hm6gvtLxcz4/G
	/czE/wVelMjzueH03KJqhADPiAuPgBTyrCZpT2tQdhpa2cs9KIvhBbgEAMnqfJMFn5z7qiuZtfAJe
	AqTtg4FVIu5UHiePqf8ZbocB1x9rM8SboIw+cSzoWUF+ZY65Xi9gkqgvmsSMlRb2w87+4l6SFVwJM
	PoVoCPVSlSwpAdv4Yp7aPAr3HcoXB0ufP2mcLo0qHRe4SSf23d6AbqcMSnMQO/+G7LY0lpHETjLtj
	rAWfveBSdjxTEFKXmdzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro8kh-0000000BCRM-1i1p;
	Sat, 23 Mar 2024 21:18:07 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro8kd-0000000BCQO-3AD7;
	Sat, 23 Mar 2024 21:18:05 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-41477211086so23958185e9.1;
        Sat, 23 Mar 2024 14:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711228681; x=1711833481; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3jrmFxwvHn+1SRq6v+CJ783Vy+oA3qLS0/S9njDH5R0=;
        b=PGqr27oXqS1s3rbTWP4h2fE3qU9PExlLCLRVMs4Bo+memC9b8l18ifwMSnJ/fDRs9c
         ZIjHCEDuD2kAC+k0ItQTX+7HdFGJAe93gEBsBWVu/7u8FFDwlnhOwLeqMt/30+nIoMP0
         ipX4nQWBrw6a0BeMfqtdKit3iLsJ6ScWZHUsheMJmpeIYPgLpFfR3sWg9lydwa/r9t1w
         XGRMR8bZVsVL6o40c+61lr+54fWbaFIkFR0a+yeXQRwrs75VRevu4DSJADqBFaVAC47g
         bbfnbi2dHAn/KnFC7ydW1fZDlI1+zvvUCDYBB2Jv69f4eh7foKadwCM+6WJNgLwaa/g8
         f8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711228681; x=1711833481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3jrmFxwvHn+1SRq6v+CJ783Vy+oA3qLS0/S9njDH5R0=;
        b=AbP1VKA+4qj5OnvTW5JGBPJXoYgD/+u0RHQNFf8uM0xSQgZ5nMDMreSIq5U47lkuEP
         6PI3Xlnj/5PIub4XNPla3E1Aiyo44WimT1tMP8oLi4SilGNuw8CdCMAXDbUsqvF09FwB
         cn+SqkzAH74U3hlHrCa8Y99wjxt7SX3pQLeM5U11gN/6sjLxgCQcW/oxDDIUt6RFlpTE
         Vg5yeaEr8dXCuUhGmJxgnqAtxaRypFHXPUh0WPUaAIIEZYN/aCQZZ2Dva8dg8X4s+IiD
         yCdApk2sTY3gS4e4K/btsKnTlxacG8niZyjcVcfkczCS6PZNz4XI43I6BwnWSljMsfsc
         RkMQ==
X-Forwarded-Encrypted: i=1; AJvYcCV42XDeY31+GtnozQbCVVUjSvSu8yq0KNKhWDROsbTPM6sIHQVLQ9NIIY3drJS+95wGDLwWE5qEHhCfIfJH8DmqaTSsc5iYSh9tfCidICaARxZfN4YnVdRvOJTht+ZWLS23s3uh9qlaa+yQZc2VDxeeJpE8bcF/DOk=
X-Gm-Message-State: AOJu0Yz4wyDHKM1Id7h/A5tGnlu7qz1kgc5oqrAyZI5TSgfeJiVEfRSx
	OAwOOcZLHL5sdqSp03orJ1Fk2Z2HuYOGJpoGsFuIk3O+4pL6egs7RA0hisA=
X-Google-Smtp-Source: AGHT+IHAU5vY0etGgtJzkwrqVnlIHq+OT7B0xJ8ln/HDYHEfgXRUTbvf8Bsh0WGUNXkLlj/OuFG+Hg==
X-Received: by 2002:a05:600c:a43:b0:412:d68c:8229 with SMTP id c3-20020a05600c0a4300b00412d68c8229mr2670298wmq.39.1711228680572;
        Sat, 23 Mar 2024 14:18:00 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:9d72:900:89e2:b7c1? ([2a02:810b:f40:4600:9d72:900:89e2:b7c1])
        by smtp.gmail.com with ESMTPSA id fm17-20020a05600c0c1100b0041485a9d633sm968604wmb.25.2024.03.23.14.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 14:18:00 -0700 (PDT)
Message-ID: <5bfed075-0228-44d9-84a0-2adba47b86e4@gmail.com>
Date: Sat, 23 Mar 2024 22:17:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: mfd: Add rk816 binding
Content-Language: en-US, de-DE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Chris Zhong <zyw@rock-chips.com>,
 Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
References: <20240323132757.141861-2-knaerzche@gmail.com>
 <20240323132757.141861-4-knaerzche@gmail.com>
 <368eb339-4f0f-4471-9367-9263caa3fab7@linaro.org>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <368eb339-4f0f-4471-9367-9263caa3fab7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_141803_857391_F95C7705 
X-CRM114-Status: GOOD (  12.27  )
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


Am 23.03.24 um 15:32 schrieb Krzysztof Kozlowski:
> On 23/03/2024 14:27, Alex Bee wrote:
>> Add DT binding document for Rockchip's RK816 PMIC
>>
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>
>> +  regulators:
>> +    type: object
>> +    patternProperties:
>> +      '^(boost|dcdc[1-4]|ldo[1-6]|otg-switch)$':
>> +        type: object
>> +        $ref: /schemas/regulator/regulator.yaml#
>> +        unevaluatedProperties: false
> This is good.
>
>> +    unevaluatedProperties: false
> I missed it last time, apologies. This (second) unevaluated should be
> "additionalProperties: false" instead.
Alright. Since there are no driver changes required for this change, I'll
give the other maintainers some time to review and fix it alongside in v4.

Alex

> With this fixed:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
