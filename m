Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D763CC48BF5
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhvCkhfqpjBPE7KQwqSinKn2yciziP3K412OWTNEfvU=; b=4MKfzDMRX7bPld
	mjFiFT0nkrrkhvxLb/34W1jQAPGQ5Sc/XckqKDAU+Q5TphD/SxSPUJrXh68Th7AY+W/2wdcO7bBLL
	Px6b/E+Ichu9B0oW4cMhdEiklH0F9vafJn3TuOyJTpRnEGGqgae4uOIZzZt7MzrwSSVfyYHNYQ2bs
	f33lReRlyfuNzHrWWEIDBTFGB2oSVzM1bzeFFv50clqUg8Bbrw9tfCt5zj/8hMCiol8A7Wahzc+f8
	XIIwDSHsyz9mixF+SdThEK4WWSPOZIM7IJoYhNS7NGdOdC7tyxy6uDBaMBMC+utNlxVqK2KNGliaS
	Rz4pabz4lhoxyNLPeOgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbFtZ-00000004tQy-2hDC;
	Sat, 17 Feb 2024 08:18:01 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbFtW-00000004tPi-2lZd
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Feb 2024 08:18:00 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a3566c0309fso337942866b.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Feb 2024 00:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708157876; x=1708762676; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CwPOpkqVqxfLP/r0/a1aV4i2KCiMxSxp2/IT7KltBkI=;
        b=Ja76Neidi8X3BmeVbMd/9OqXyBUciZlsxTqHYaoT+FY7st1dLXn6qsTx6/ZliV6h0x
         pUH4UyD4s4NG4+tGygq6Exm3Fh7mahcq3jbv3+rA/8O4GxG1zPXAxHPiVVUlB0F3QkzY
         OsYDx2zoZdiNVhaTrICSaH6aWS9JmZsbPrXGKvEm+68GM62iSn6pl5S4l/yrFxABblU+
         Q9pELMLWFOR/SviGE44gUD0xSalwgSCsTDRJp+IkhwcYuVD25X/+XtLK9FgCdClDSs2r
         yxmbqBGNs2QqKsIA6trb9y8x+tjHIQBvG6U3eUs65U0v3cIiSx0DCZSc7dlxaaPAADiK
         Uo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708157876; x=1708762676;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CwPOpkqVqxfLP/r0/a1aV4i2KCiMxSxp2/IT7KltBkI=;
        b=N+LSzY9XSF/b7SMXfd53KdC9sl6mkFol0hEUh7V9JL82ea69DVuJaK5meGp2J1rt87
         OL/XfhmWCDUSSRCVTLlAePrJuCkEytAI2eMZL60NcNidd6fJ+fJNxPhQHuWvuiLULsdl
         Wk7EtUGgaWlsiHpXJ1irHSlzZPjF533w77OMzQZxpyuR+VkXMYpouRxEsQTHQSZ5GP1Q
         aHS/xrrIxedGPwyW88MQT+gy3CvhhfAWA2ips35Q9fl/3jYgTO23dC9pTptEZjEKIqqk
         9FKvNfeJB7E+eFDWhxKIw6dbi4nayEWTLO28P3myk4/EOPIdKLeBc5H3/VI+8mHoakpF
         tk8w==
X-Forwarded-Encrypted: i=1; AJvYcCVv2Xp37m/dNSvVl3cdi20m45OGT4sGPOdu5OySRDb0R6ya984K88IyEnVpZCXle/8VG+9kKGqYeKlhUfAuhmGieKJmTJk4BYT9QAoRXzw4N1Ut
X-Gm-Message-State: AOJu0YxjKlECJ1DXLN74GOVH//wQXtu8wFhHQ8TLyReJXIqjOdY9eKxy
	0hSqv99nbn/0wD9w2VTSgW5D2+abeBwO6MFoJ7EI54Fc1Lu287B8wFEkWEQj/tk=
X-Google-Smtp-Source: AGHT+IGGyO604nMOa87jDhCkt+7xpP/CbQmeT7tQGtKi7mJxmegXZxtKs15Kc/7W6mnDxGwYMk+joA==
X-Received: by 2002:a17:906:fb9a:b0:a3d:f468:74dc with SMTP id lr26-20020a170906fb9a00b00a3df46874dcmr2241626ejb.34.1708157876107;
        Sat, 17 Feb 2024 00:17:56 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id th7-20020a1709078e0700b00a3e059c5c5fsm757086ejc.188.2024.02.17.00.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 00:17:55 -0800 (PST)
Message-ID: <0c2f4d92-afa9-46f1-844e-994bd45924ef@linaro.org>
Date: Sat, 17 Feb 2024 09:17:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] clk: rockchip: rst-rk3588: Add BIU reset
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com,
 shawn.wen@rock-chips.com, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-dt@vger.kernel.org, linux-arm@lists.infradead.org
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
 <20240216094922.257674-2-shreeya.patel@collabora.com>
 <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
 <30d2-65cf5980-3-2ec9f500@242931553>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <30d2-65cf5980-3-2ec9f500@242931553>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_001758_774236_36BF6004 
X-CRM114-Status: GOOD (  15.88  )
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

On 16/02/2024 13:48, Shreeya Patel wrote:
> On Friday, February 16, 2024 15:33 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 16/02/2024 10:49, Shreeya Patel wrote:
>>> Export hdmirx_biu soft reset id which is required by the hdmirx controller.
>>>
>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
>>> ---
>>>  drivers/clk/rockchip/rst-rk3588.c               | 1 +
>>>  include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
>>
>> Please run scripts/checkpatch.pl and fix reported warnings. Some
>> warnings can be ignored, but the code here looks like it needs a fix.
>> Feel free to get in touch if the warning is not clear.
>>
>> Please do internal review. The internal Collabora review would tell you:
>> YOU MUST run checkpatch. Then you see errors, so why do you send patch
>> with errors to the mailing list?
>>
> 
> I am sorry but what errors are you talking about?
> I don't see any errors reported by checkpatch :-
> 
> shreeya@shreeya:~/collabora/rd/rockchip/torvalds$ ./scripts/checkpatch.pl hdmirx/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch
> WARNING: DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.rst

Here.

> 
> total: 0 errors, 1 warnings, 13 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inplace.
> 
> hdmirx-v1-1602/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch has style problems, please review.
> 
> I see the above warning but that looks like a false positive to me.

Why for your patch it would be false positive and for all others would not?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
