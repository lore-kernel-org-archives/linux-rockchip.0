Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474E7C636CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRNW27gLKApNXJmtJEmckXmJFitfPaqzWyg8RJvyDd0=; b=uAK/LtB+l8Lri6
	QhylRhPziDi5LZMUzbO/MWnQlm9Tx7LkKknAx9cbxNpqDp4/CGb0TCvvwuzIMSGmTl2qA+Shi/TuA
	jE+nMW0nboJuU5FgQqJ/EjxNQOLadKiX5CkmxfVqsoBpLxtaXX1ip5fVr6KDGZVwWH+JsJb8YJkwt
	b+ryq/zu7xEtJeT7ceKqMOo1Zx1ivD9afc/6WEPr2Ge7/lL0tyEX6DvaZW1hw+B5t/ioQnFdbVfwY
	FWOs+TGRYJjDjFLyaxcvjSYhyaKy7F4DkqMEWZCm/hkZbOzepI2yONAd/AK3+GC9P/rknHUuYkkAm
	ICCfUhkGpA9mA08GGuJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbpJ-009i6n-TS; Thu, 16 Feb 2023 10:49:21 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbi6-009eMM-Rt
	for linux-rockchip@lists.infradead.org; Thu, 16 Feb 2023 10:41:57 +0000
Received: by mail-ed1-x534.google.com with SMTP id eq11so2155327edb.6
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Feb 2023 02:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VEu9tYl9ixT0RlhKmk5fLsaHMUiQpUecJLWHV/pC3Vw=;
        b=DKbXymnOtF1XMHNi83FzONMNiNoqYbtL7TmCr1PS+KGak8EsrVXSsL0NNRcgyZGpal
         6ascZ91tN9Yb+ngczhbwHLNNLoucV1ocvvIrT+9AYzjFYmMPnvWu2lbd2jElDsQ2tMLj
         AF9zkCKZdpf6Jv9vbw1dikIeJ/Wr35mGPS4NgfdtUTxpPthlw6Xfofb+dIw0Spe1tVfD
         o/YPPzvsYXb/W89QkRqqxnpZ4wmcgtRjqTnwP5eJF0ntjaue1RRwYQmYIh432uHJDTlu
         OYblgom9b+A0JlF+iVuh5I18gr911j7CEZfh7SVhMgN6OLn4NuUNMZEnZZa7TR2Qt0rw
         O+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VEu9tYl9ixT0RlhKmk5fLsaHMUiQpUecJLWHV/pC3Vw=;
        b=Axzs1xIW5UOMvc9Hv50sQ6MEOfJzo65dDeTdTqfUHAYmsGduJ3mQJwtomGAJa8gbrS
         ZecFFsbRzmtIhDF9eNWknfxyfwbB2G25/J3mkxe8FcprfyAxlN1iZeNo+unRSmTBSarJ
         oYVEeSXP6C92CFVzDAQ9S3IyByhu12ow+P+BqKlwudXpbJ7Gj4emrMz7UrP/K77A+S/z
         WxIKA7xrWgRxQWHYdg2/GqDNwtZsZYIP9pWYXLSRlimZDu+5XVQrHaODtqFL/2kPBgSD
         +KOsuOHA9aXkotHIa816icPGqJuqTqYUpC1bBYLOrlWnNrWJXV1z8u6QjpLlkKacgHlY
         fN7Q==
X-Gm-Message-State: AO0yUKVBj7x8VZDd9rgjVFrsY+vf0Ef8z4SxeyrznVQaH/tYd19eh5ac
	ho4BR0aLLvxqnXZFc31ZZZuwkg==
X-Google-Smtp-Source: AK7set8vXxoTnXCznhpP6QpzCw4O9JO6x+mEM/Snm10J14uNMw42kLP4DGVtoqnjUdjsyMeSGP2GQA==
X-Received: by 2002:aa7:df99:0:b0:4ac:c5c1:e1ed with SMTP id b25-20020aa7df99000000b004acc5c1e1edmr5914411edy.12.1676544107911;
        Thu, 16 Feb 2023 02:41:47 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v30-20020a50a45e000000b004acbf563d88sm657183edb.15.2023.02.16.02.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:41:47 -0800 (PST)
Message-ID: <d94a8e7b-1c1e-34dc-5262-f16a260d813a@linaro.org>
Date: Thu, 16 Feb 2023 11:41:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] dt-bindings: gpio: rockchip,gpio-bank: add compatible
 string per SoC
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, brgl@bgdev.pl
Cc: linus.walleij@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <038585bd-7226-b28b-93a5-e1676a57298e@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <038585bd-7226-b28b-93a5-e1676a57298e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_024154_926743_365CF29B 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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

On 15/02/2023 22:01, Johan Jonker wrote:
> Currently all Rockchip gpio nodes have the same compatible.
> Compatible strings should be SoC related.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
