Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 311CEC2BA12
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Sep 2023 20:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8D3Z9/OFwHm0lGXbHpa0080/tHaDt2Q2sC5zFqc1xk=; b=VSPB348fllZRjg
	q/Qslchg/P0oFCMpSkPJXD6CUIAqXLAKXoCbS3fXqaesq6hMtII2l7+YcYc/EuOazYEYWyZ4LBIvA
	QwGmMnro9ux4X+j0ndXNkNj4dH/0mjMLpvgrfYGW7G1YWiOcRNcY0efXc+luPPsQ/AQ4l/B/u/Aj/
	AU0IGNVpSyOV+XMa7epvwXL7PWQlbovrHok9QRDT2wnpvEFDHel+p4Z9EXqGhKGdeR3xkvm8Xq2/U
	oj3rWGYGxlOiYwpxB1493wgL7RfkIlxh6rmSdXYSUI6ne+FLCYWq749h/22It9yw5sF3I73RgrMLv
	A5j8ZyEwyxuJh3A8LoIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhc0G-00CoNY-2E;
	Sat, 16 Sep 2023 20:34:56 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhc0D-00CoND-3C
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Sep 2023 20:34:55 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-401b393ddd2so37432945e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Sep 2023 13:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896491; x=1695501291; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qqUJAMMP6nTdqVaHY2YdLMWi5v1gO3qldLnRJmNMzJk=;
        b=vicMRnypxwDbpGwetofJcAXAM4MIOAMDcbXq2jNo98EvbMdCuznpzq1VlHG69I+qAF
         mRNimrOpbG1kyo4VHWQmrfbxu/0MDwoIe9skIaLv3zeAWMotjdVIW6e26tqJZ2zDW8/w
         RVYvaLb/yoD1KChpKtWitbM3rn2By4m7eN+FVBjwG8AxBOCcmLO0CkOpBEHPnuX3GEDJ
         C3V8cW5MiGttl8rKq8NXYHO3rnl7Z05p6HwAoiqkIIGB/FHcyxgvII4cpBgfwftFgN8h
         E2CHmHvj1KlxiAn9rl8OvpHL32hz8tDAvH+8TzCv8gj+TJZ4D+4Q35jo7zSi4o56NQXp
         U8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896491; x=1695501291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qqUJAMMP6nTdqVaHY2YdLMWi5v1gO3qldLnRJmNMzJk=;
        b=CwTjzxq6vyRFShqu1DtNxxYdWy/muu29h7tUBaxnHKdFsq4rV7n/7ONnJAOKHqeba0
         1IbyjsazTEkeUN8zKC+XZ5pRVPS6rifdR+tkHpC/LxwlWg04oFYskLmjGH2XWR0RVS5l
         KBFskZzz4vuTKTQ3r53Q/2/CLyORzXM1gXiSkeFD8DP/YM6FTXu7XZvj4Y9/TDR+QFpp
         CsEoSYiYgtuS/z2+iwo7oOdR1ctzDkGgv+ec8CbL9PI19L6dvI+rMa1RB/6A21EnYYEb
         XJmu4OFoqViIF6oS5a///tMH3u6h21R9HYolhH38Aqx47IRLKHNcrxdwOM0wBGf6OJba
         IkuQ==
X-Gm-Message-State: AOJu0YxiDc/ij9w/bwDUke+z6peR2ibKZbGQU3TSscqnAG7APmlXF/bh
	nHvGJ+uM+j8sXSKmFjujRgiFwQ==
X-Google-Smtp-Source: AGHT+IH6tnx25efyoNQVuboYkjl4DLIeQ5FaN6lxvZji5sMlHpTpVieQ8XHgvg3Gc7p8LCV1xU7IqQ==
X-Received: by 2002:adf:ec4f:0:b0:314:4237:8832 with SMTP id w15-20020adfec4f000000b0031442378832mr4507382wrn.48.1694896490877;
        Sat, 16 Sep 2023 13:34:50 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id a14-20020a17090680ce00b0099315454e76sm4077326ejx.211.2023.09.16.13.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:34:50 -0700 (PDT)
Message-ID: <1bba7c11-f92b-5f1c-2543-c74eff7f1eae@linaro.org>
Date: Sat, 16 Sep 2023 22:34:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, jagan@edgeble.ai, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
 <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
 <ZQSK/+cOMhtu5Al0@wintermute.localhost.fail>
 <SN6PR06MB5342FE6A2C144600656701E4A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB5342FE6A2C144600656701E4A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230916_133454_037335_03E76B6E 
X-CRM114-Status: GOOD (  17.77  )
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

On 15/09/2023 19:05, Chris Morgan wrote:
> On Fri, Sep 15, 2023 at 11:49:05AM -0500, Chris Morgan wrote:
>> On Tue, Sep 12, 2023 at 10:31:19AM +0200, Krzysztof Kozlowski wrote:
>>> On 08/09/2023 18:41, Chris Morgan wrote:
>>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>>
>>>> Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
>>>> found on the device. The buttons are documented as "boot" and
>>>> "recovery". The boot button is used by the bootloader to boot into USB
>>>> recovery mode. The recovery button use is currently unknown.
>>>>
>>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>>> ---
>>>>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
>>>>  1 file changed, 34 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> index 1e2336d3065b..4c2d662d9c97 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
>>>> @@ -3,6 +3,7 @@
>>>>  /dts-v1/;
>>>>  
>>>>  #include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/input/linux-event-codes.h>
>>>>  #include <dt-bindings/pinctrl/rockchip.h>
>>>>  #include <dt-bindings/usb/pd.h>
>>>>  #include "rk3588s.dtsi"
>>>> @@ -11,6 +12,34 @@ / {
>>>>  	model = "Indiedroid Nova";
>>>>  	compatible = "indiedroid,nova", "rockchip,rk3588s";
>>>>  
>>>> +	adc_keys0 {
>>>
>>> No underscores in node names.
>>
>> My apologies, I should have known better...
>>
>>>
>>> Suffixes usually are after -
>>>
>>
>> Thank you.
>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> I'll correct this and resend.
>>
>> Chris
> 
> Sorry, one more thing. I've checked for examples of adc-keys naming and
> in every instance I see it as adc-keys (or adc-keys0 and adc-keys1 in a
> few examples). Is the proper way going forward something like key0-adc
> and key1-adc?

I meant by suffix "-0" or "-1", so:

adc-keys-0
adc-keys-1

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
