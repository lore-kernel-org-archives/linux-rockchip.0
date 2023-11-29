Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E497C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 10:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcUyJJE3gntsQ5O48/GTCnwE8+FfD0dNwuiKvmXJby4=; b=hcv50lB3x46qSY
	tCsEuZojb/ep8pVPW1wpRzCLeidUmu+dur7XVnCgX/0dD+w1bLT1LlhCPYj52O6pYKsGGEQJfe3Vb
	3Q8Cn8lRJp5WO5oPCNNu7XFxfWeI4REsRSVJ//kH3wH/ln94CcxyMEama5x6TSMHCx0HNO1QloWCe
	4QJ6w6mY0370gmd0VMUIpGfLIMAH8gLqf2EJNxdlh3Eih6NCj9Xmx9u7MYhb5ql1g/I78bmBs3CpG
	g5WonAuDXs713ZFDj1WzBfc+jhB6fv7KBD0bp7imDQAAmcBxyOqf+8kAVsVWf7hYAXEuf9wdB+3T1
	GqPlYjV4qaPj88MQBd0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Hf9-007nTK-0q;
	Wed, 29 Nov 2023 10:19:23 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Hf5-007nS2-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 10:19:21 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5488bf9e193so8855358a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 02:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701253158; x=1701857958; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZgUs8TNBWSvX+Jw36S2+v7tW/A1ICX2uch1ZvXrvqmc=;
        b=vOVP+SYba/P3Mphrx6D4tIpiOuv1UnP2TuPW9/2Iw1msVUBMbFG6HPjmvTYse7kErT
         g56JgSHJOF6KmRW2O/CHxFLzWbMaan1iZbX+y6WjL7fSfgacRsfmyYw50rS4yLPdPFiL
         ESKsZEsTHxd/5IA50Sp9gO3ST90sdbeYX4kHV+TfN0eL+6trjKJRVR9XCnB0Hbc+CKY7
         GBD39EIY3MbwLuJenMkeJjPwen0aZ2eV8wRt8BHEPa/9+iGyw0dp4D6m0aGfRuMuxmCS
         4zdJ1Sv9niHZSB6FS8Fczwqlg35C/Q4uVbb5d0qBphswjwIgY+MMWaB+lszIn1vjAetS
         l2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701253158; x=1701857958;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgUs8TNBWSvX+Jw36S2+v7tW/A1ICX2uch1ZvXrvqmc=;
        b=Qd1KzHNqa3ROY7J06qHUu4CVKjwKvzvDBi0kZJY1aOS62KapHFXdq2A6NoFuXPRyN4
         sTNaeokhSaSfTSRnCF3FCLFIsUJRaFttR7DoWABaLKUZjmWbAUh0Mp1xYYLQPwRfp7os
         TxRHmyvpKI7X/rJZhhUQ5KNOgq4+SRkZcgwfyKEjX9r3bKUo4adx+JHwm2pks8qxfyyU
         0vqpCOAFqFWXfH/rHHQicnS8Z9vGNJ+HyWu/Fs7yZLpQwyjhM5qtIdyE59h0w18gzKuf
         jsFGGYdnJU7aAjR9VSzI6zeVmYQEZmX3ReRh/r14aBxFvtx7lorfW5XFd1UlhxK62X1R
         JxJA==
X-Gm-Message-State: AOJu0Yyd28wyK07RDntl1ysEiq3uK0duSQ8HHNy5lpiFUxySNnskzRQF
	dyDqIi6fDsDR5jUhpnYuVzToUQ==
X-Google-Smtp-Source: AGHT+IGGNLDD1SmsCmB/BOBGu2q2gM5rjZKR//wWsqBvJ2rQtIypG4PZ6unz3UPYelxpx5vp9P483g==
X-Received: by 2002:a50:cdda:0:b0:54b:1ca8:8520 with SMTP id h26-20020a50cdda000000b0054b1ca88520mr12005347edj.1.1701253158492;
        Wed, 29 Nov 2023 02:19:18 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id j18-20020a508a92000000b0054bbfe0c5fcsm1064282edj.94.2023.11.29.02.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 02:19:17 -0800 (PST)
Message-ID: <46f30852-4824-45b3-bf01-4a4a5ff2cff7@linaro.org>
Date: Wed, 29 Nov 2023 11:19:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Michal Simek
 <michal.simek@amd.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 workflows@vger.kernel.org, linux-doc@vger.kernel.org
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
 <ZWboWqELHbIrblnz@francesco-nb.int.toradex.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZWboWqELHbIrblnz@francesco-nb.int.toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_021919_953543_E96DCF0A 
X-CRM114-Status: GOOD (  20.82  )
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

On 29/11/2023 08:29, Francesco Dolcini wrote:
> On Sat, Nov 25, 2023 at 07:44:22PM +0100, Krzysztof Kozlowski wrote:
>> Document preferred coding style for Devicetree sources (DTS and DTSI),
>> to bring consistency among all (sub)architectures and ease in reviews.
> 
> Thank Krzysztof, we had most of this collected as BKM in some internal
> documents and it's great to see the effort to consolidate this and add
> it to the kernel documentation.
> 
>> ---
>> +Following order of properties in device nodes is preferred:
>> +
>> +1. compatible
>> +2. reg
>> +3. ranges
>> +4. Standard/common properties (defined by common bindings, e.g. without
>> +   vendor-prefixes)
>> +5. Vendor-specific properties
>> +6. status (if applicable)
>> +7. Child nodes, where each node is preceded with a blank line
> 
> On point 4, do you have a more explicit way to define what is an actual
> standard/common property? You mention the vendor-prefixes as an example,
> is this just an example or this is the whole definition?

The actual definition is: defined by common bindings, which are:
meta-schemas and schemas in dtschema, and common bindings per subsystem
(e.g. leds/common.yaml).

Lack of vendor-prefix is I think 99% accurate in this matter, but there
are some "linux," ones.

> 
> What would be the order for this for example (from an existing DTS file)?
> 
> 	reg_sdhc1_vmmc: regulator-sdhci1 {
> 		compatible = "regulator-fixed";
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&pinctrl_sd1_pwr_en>;
> 		enable-active-high;
> 		gpio = <&main_gpio0 29 GPIO_ACTIVE_HIGH>;
> 		off-on-delay-us = <100000>;
> 		regulator-max-microvolt = <3300000>;
> 		regulator-min-microvolt = <3300000>;
> 		regulator-name = "+V3.3_SD";
> 		startup-delay-us = <2000>;
> 	};
> 
> I guess the point that is not obvious to me here is where do we want
> pinctrl. I like it at position between 3 and 4, the rationale is that is
> a very frequent property and this way it will be in a similar place for
> every node.


Order here is correct but all of them are generic properties, thus this
coding style does not define ordering within.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
