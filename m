Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5336EC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 08:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QwQ4RCMoeaceps80ur/KJXw7A+j8Hakr1HijcR51LI=; b=UQatH+CdmlBNJG
	MWwJiW+7meoWROIMRuTc5doa1HcytV+x/6o45j7uuKEumd/MtHtlmUpegs8vShcvgCA8O6k5dw40q
	068figKpi6LSajMuSisq5px3mLEmF3Vwq2YxhWN7Ysf2ejDx30hXeowPopumjNAxkl2yQd+6Zt8Eg
	iKsDRg1KQsJWNtTrEDAeRmYkJv1c7xjIXxJRsyIoSMzFkGNwEmaRSVWYUtbv77AOdima6mFu6pkg4
	HNLQbA8yrKa1MaEtZ89iQnlEdn0jVJtkePa2XQ746rz/z+D/eNDl+Kc14PvlQ4KRfasZlguTbftVg
	fmqENjg4TUrzZBv89qoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWvSW-008TyI-UE; Sat, 10 Sep 2022 08:03:24 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWvSV-008TUs-1i
	for linux-rockchip@lists.infradead.org; Sat, 10 Sep 2022 08:03:24 +0000
Received: by mail-lj1-x231.google.com with SMTP id r12so3070991ljg.10
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Sep 2022 01:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LsbyJCRQGv8ADJ14m4fwuin9ksJE732HC/gnyZPsMxY=;
        b=n/EewGvvQIuAe2DE83YPWVE6cnz9tF9z0jkslzZzCTr9s5K5c0quxSyDp9Lv59Hx8a
         QF1wUSxtKxcqESO1QMRcs6G3FSdYbT0+NrRZSsS+kaWDwcknV3yyt1PazGtXJ88GJwRn
         Nr7pQ8Aw/8UqevlyfjtpMc+QeUSuz5Qe9o/zqiLE9PLsG6gTkxhYhPJzqpidLjnVEwxP
         JYnKdPeOT2xwimdEcifyV3p7HS6o3BZpZMBeYrkMUYqPH2zUsvS90YYJAEWqaw0JDs+2
         w479rjYLxDFbHKQLP8rnlrVPmfAGcCDPEJ3fEtq90sJ93+ODDw3Ri8WTBrgGoQriMKgv
         uKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LsbyJCRQGv8ADJ14m4fwuin9ksJE732HC/gnyZPsMxY=;
        b=mQ0AmBHT5fZO8/7WTt0rJdLB9kUuiVGnQSP6cv9WuJHgu7e++q3zZf7u1eXOdDOImL
         Srrbxee55dLb/QPBuUQ/8bnRzvRiJALZCkIPQSGm7diyAY1C9g9hM6OsNLr3tgcAOi+N
         GeID46EHWT7Fw5zrTJrYBCZiFrbyiM2MmVUeWVWUZiRUXdcT/FztzWiUkfosEKvz7fLn
         OTYegisGk+odhM1S7oqK8XSomFclWNzpDtVBbhcpVd8tmnNqYfZMM4HNE9NtFsDdkqx2
         iEDRolNBgLcZA90J5Oc2iGmL56+op6Kgx0IwqFeuQIKFg/EsF1Bbao8IWCszxUXUSZJX
         s8ow==
X-Gm-Message-State: ACgBeo0IpIEbGFIK1m4S5dbAFofUkqzuf/Yct+GfEDsZ6+UKUIF4VrTn
	a5LDBDXHz3FzVGSKzY2WCcyL/A==
X-Google-Smtp-Source: AA6agR43KgEW7WNcuh0EnpRKVUpHw2VVjmlXH9U0fJ2jA8k6r0BNZrXvGoENxRr1SsNi6QdqK8wuXA==
X-Received: by 2002:a2e:2244:0:b0:26b:e1c0:8ae8 with SMTP id i65-20020a2e2244000000b0026be1c08ae8mr2192100lji.146.1662796996708;
        Sat, 10 Sep 2022 01:03:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v19-20020ac258f3000000b0049462af8614sm179262lfo.145.2022.09.10.01.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 01:03:16 -0700 (PDT)
Message-ID: <ee4cdfb1-8edd-a0de-5068-85de88e16c3d@linaro.org>
Date: Sat, 10 Sep 2022 10:03:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCHv3 08/14] dt-bindings: mfd: add rk806 binding
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-9-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909175522.179175-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_010323_134458_4BB21677 
X-CRM114-Status: GOOD (  10.60  )
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

On 09/09/2022 19:55, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Thank you for your patch. There is something to discuss/improve.


> +  vcc11-supply:
> +    description:
> +      The input supply for pldo-reg1, pldo-reg2 and pldo-reg3.
> +
> +  vcc12-supply:
> +    description:
> +      The input supply for pldo-reg4 and pldo-reg5.
> +
> +  vcc13-supply:
> +    description:
> +      The input supply for nldo-reg1, nldo-reg2 and nldo-reg3.
> +
> +  vcc14-supply:
> +    description:
> +      The input supply for nldo-reg4 and nldo-reg5.
> +
> +  vcca-supply:
> +    description:
> +      The input supply for pldo-reg6.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(dcdc-reg([1-9]|10)|pldo-reg[1-6]|nldo-reg[1-5])$":
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +    unevaluatedProperties: false

Sorry, for not spotting it earlier but the indentation here looks wrong.
On "patternProperties" indentation you need additionalProperties: false,
because only the patterns are allowed.

On "$ref: ....." level of indentation, you need unevaluatedProperties:
false, because you allow only properties previously evaluated (evaluated
by regulator.yaml).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
