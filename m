Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FE6CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 11:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tVfg6phEyRBRxh0QRKOYKy1av40tU/qdvUthDuJn9I=; b=fg/y/SIGD0orQp
	O0JVaSEJLgulssk7OkHTaAbVZRM67kd5sP2w6Ccq0ww/Sh6YT7GDOgrKtWher5+bTlq2LREghbbVJ
	UznQPppT6g5RTWMUxUQgbXnreFKprTQgY/q/jSht0AQ+3RFxPEEPqmpvJKorVwlBlTRO/ZofMbcQC
	MuSFRblM77HhvKjmgp9beXey6mK0KEUIhofxdXfdeuVShcimmcOVivaAzAjew6OTjFmllfcaEjkGg
	82ZJXN+QbSS1qQeUcQPNE0TDe+ZQzXjzti8e9pmntozetyYE7aQBZnSciwsrMSIKJpXq+cx3ohd7u
	inOu1cxTNeF74MSUe+BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryj2-0000000FlNT-2287;
	Wed, 03 Apr 2024 11:24:16 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryiz-0000000FlKE-0Ezt
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 11:24:14 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-56dc9955091so3624446a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 04:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712143448; x=1712748248; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IO6yw321pzkaoaCqh1hl5FnjaHB5/tUUufUSj5CW6t8=;
        b=p8J7S5avGh6TlBTBGKor8ZNh9PskLaBY9R/NOympfdP4KkgzzOahqmNZmfaOjc4ixA
         XC/vfm/y4jdvX+A/5LyMPaKsnNy8POR88gAORheEQdG3GVI/KCBpti6wvVVRWA3G/NGm
         by2wVMeG1sl6mgjZ4ylcLY072k+5u41a3vm5ec8CwJIzP0Oi3aIAN2Pw4+Zaebo19oId
         kykoDy4INHX1/ueqx0y9m0DdmNvaEaGLGrGKN77kxKhFN9WpW2lyKAIlNcISHRybvUU0
         wEEUCYwxavwFUQUau5p17GbF+jjLckCeHhFdL7Kmfltiyr2WNZCygXwvw3iUVe3CJaL/
         JM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712143448; x=1712748248;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IO6yw321pzkaoaCqh1hl5FnjaHB5/tUUufUSj5CW6t8=;
        b=L0VQkFvnKkurz3GDNLU9NBtZ92ZfkACZs33pqcD7iIloJdinat9FhurA24cHKLhOui
         RB/D+kTcsvw1d6EuTnYz6lspc8AVPUW75dbx/Elq1vT+MCFmaYbLUD3AmCvJWFleUUhP
         nJsH9u4GkBea+tbv5+cRKrnHiAsApSzqktyLn9Z2zmpvHCj2d/BLx4CMat1MhljqH2Eu
         vQQcdJLeu86zHNUsUdeFJt+At13oAXRLwKAw7OoMnKQVdXdbp6Z0YgRMvkMeKCMVmrDK
         6hfEpxBnfaUNxa+mJ3kjsh5zASXUB3XPP+c48a/sfXprnVjfBtML4547L9zfO9aCBiED
         eG3w==
X-Forwarded-Encrypted: i=1; AJvYcCWALL+RYm8C0Lc6Gw4a+7RB4uFjfugmrhlvDwg3MWegv26QewuaBxJCG+cx0CepOZqkf30vUnQZzgp9fQSLLwA3XCIJTm8Vu7UZbZzVzkXgxnTs
X-Gm-Message-State: AOJu0YxcFYGT/ZAEsoIX3fs4yJvYPPgwbri6kHKPOSIDhmemtqKyKp3K
	4Ti7ewQWPCx8GjEUvvGuQITuWCeLd3Z5QfgXjqU9vxj0xkqkEyQe14EC+myuoAI=
X-Google-Smtp-Source: AGHT+IEqGdSJ246ZO00yUEFudXBJfQRgE/TyDPzINqn3RUr4Av0cbnFJpv2+C74POr8ucLFrJCfxmw==
X-Received: by 2002:a17:907:7da1:b0:a4e:6957:de25 with SMTP id oz33-20020a1709077da100b00a4e6957de25mr7013926ejc.57.1712143448058;
        Wed, 03 Apr 2024 04:24:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id wn7-20020a170907068700b00a4e533085aesm4912682ejb.129.2024.04.03.04.24.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 04:24:07 -0700 (PDT)
Message-ID: <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org>
Date: Wed, 3 Apr 2024 13:24:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl,
 heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, shawn.wen@rock-chips.com, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm@lists.infradead.org
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <35e566-660d2080-1-7eb9eb00@16488675>
 <a2f88176-b4e1-4202-843c-a00c5a2b1622@linaro.org>
 <35f774-660d3b80-3-513fcf80@97941910>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <35f774-660d3b80-3-513fcf80@97941910>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_042413_156041_123DB99B 
X-CRM114-Status: GOOD (  14.30  )
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

On 03/04/2024 13:20, Shreeya Patel wrote:
> On Wednesday, April 03, 2024 15:51 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 03/04/2024 11:24, Shreeya Patel wrote:
>>> On Thursday, March 28, 2024 04:20 IST, Shreeya Patel <shreeya.patel@collabora.com> wrote:
>>>
>>>> This series implements support for the Synopsys DesignWare
>>>> HDMI RX Controller, being compliant with standard HDMI 1.4b
>>>> and HDMI 2.0.
>>>>
>>>
>>> Hi Mauro and Hans,
>>>
>>> I haven't received any reviews so far. Hence, this is just a gentle reminder to review this patch series.
>>
>> Why did you put clk changes here? These go via different subsystem. That
>> might be one of obstacles for your patchset.
>>
> 
> I added clock changes in this patch series because HDMIRX driver depends on it.
> I thought it is wrong to send the driver patches which don't even compile?

Hm, why HDMIRX driver depends on clock? How? This sounds really wrong.
Please get it reviewed internally first.

> 
> Since you are a more experienced developer, can you help me understand what would
> be the right way to send patches in such scenarios?

I am not the substitute for your Collabora engineers and peers. You do
not get free work from the community. First, do the work and review
internally, to solve all trivial things, like how to submit patches
upstream or how to make your driver buildable, and then ask community
for the review.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
