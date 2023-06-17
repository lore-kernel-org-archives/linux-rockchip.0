Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A597FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 20:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvHMAhxagg4rI3AfM0Fjr28MDnn6Zpe79i9zQCKDuOY=; b=jRg7gAWmXvqe14
	DErRb3A4XHzwTU4lV6bLGfdAB3JRhQ3OQwQSntaFcgQE4JyNChLhTydAUV6GnEG99AKPxDa22JxvG
	KOovnS+aBWt8O8q7fjt94ua/YvkZpVQuOnUj7CWUY36MhN2IKuR0gyI6VAFljMGoydHYNGvZ+y67w
	Ho54bJvyzOSBG13sI4rFasiIGTKixIZZeV2CJr1HwjAf365xp+5ISPXaPAe6VVC9cMFd2jUud334J
	hfuUV3QWrqCxpNFveSuampK2zdhRiwwewpzPQXIcNIYPaGQKQBLkqaLn9L3vkjCj95Xa3e6jR3OXz
	pmmg88lFfSLa+UIWgL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAcmZ-004L47-2b;
	Sat, 17 Jun 2023 20:44:27 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAcmW-004L3D-2C
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 20:44:25 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-519f6e1a16cso2399850a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Jun 2023 13:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687034662; x=1689626662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bmzHP69vnJ8i0TjPJPu+QhOAU8ORkNj2xDKDBmcQppI=;
        b=WPKhszkvvBkUTyLNdoUWdArTIFn7Sz/Bbj4JY7JZuLXtMgvH/niQdJc7D1uPg54VOZ
         xpnUhYHjDWSzsi3Q+KFhHxkvOfd/2FnSboBAX13VYbCeD5eZ3/uJx3hjep7hITczQMRM
         0QxwY3rHXGEIfP09t49lgyN93kmHy45QqUuucWI1IImmaScj0nt1oFL+CH34lGfwNac3
         Zdy2WP43Yrf+R5jvUb0lcox3LlmdhQyxeGszqoaA/qc942SknG+9k5gdVvV0OQpiZ5Rz
         uscgVmgFBAqnqwEHUC9hCo888JihSpCbODwOcZZrAk9dlFl89GDaMOSNoLNZCYnKc9ph
         KBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687034662; x=1689626662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmzHP69vnJ8i0TjPJPu+QhOAU8ORkNj2xDKDBmcQppI=;
        b=jjdalk/2X/UOk3sj+b57ctiLJNhytWtCEWOBC2CKdQxhNLxk3PaglJhuUMnvG2x1I6
         vvoeWmHQLxFQn1bMIXVONPnf5031aR/OLvR0ZRJQgy60AKMNqJOPI7EgCqNjazMxWk3C
         rAktyvwZ1I8nXOgJWTmZS2zv9hR8h3+ttyRlHbefJX5OTTbGk5yimYFzT0kcTx7zvoLU
         MkQxnd2t5+V1ZG/apppz7/j5kHzjes12QhtKBIGM7iJBHoeRXCqT6akqcxtIvgsmdD1Q
         oFCU0gLi6e4Mjz8N5TgEXBKD350fONTsECyEb8uDjGZh4+r3xdwKz9LPlmZVeYYNTAtZ
         d2Zw==
X-Gm-Message-State: AC+VfDyRt7Pv+CtqD/RzhM7aHD0sRe872ZhEpprGyVB8xO4g2GPnBbz2
	LZOzO817RqDpm/1KPdP7M9fgxg==
X-Google-Smtp-Source: ACHHUZ6+WnpmeJX8nz99i1JN10squFKc+jqPPPC4i66Vtt1wdh2lU+L19tKpauCLHvwipMlzUjjyAA==
X-Received: by 2002:a05:6402:692:b0:51a:3334:f87f with SMTP id f18-20020a056402069200b0051a3334f87fmr3565617edy.37.1687034662141;
        Sat, 17 Jun 2023 13:44:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u10-20020a056402064a00b0051a318c0120sm2314087edx.28.2023.06.17.13.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 13:44:21 -0700 (PDT)
Message-ID: <2625a937-a37e-52ee-1818-c7611f0e3b3b@linaro.org>
Date: Sat, 17 Jun 2023 22:44:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv2 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Furkan Kardame <f.kardame@manjaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, broonie@kernel.org, deller@gmx.de,
 dsterba@suse.com, arnd@arndb.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230617135315.25441-1-f.kardame@manjaro.org>
 <20230617135315.25441-2-f.kardame@manjaro.org>
 <20230617-compacter-unloader-ab326e0badfc@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230617-compacter-unloader-ab326e0badfc@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_134424_741040_4DA5E57C 
X-CRM114-Status: GOOD (  11.42  )
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

On 17/06/2023 22:40, Conor Dooley wrote:
> Hey Furkan,
> 
> On Sat, Jun 17, 2023 at 04:53:14PM +0300, Furkan Kardame wrote:
>> Station P2 is a single board computer by firefly based
>> on rk3568 soc
>>
>> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index ec141c937..fa21640bc 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -185,6 +185,11 @@ properties:
>>            - const: firefly,rk3566-roc-pc
>>            - const: rockchip,rk3566
>>  
>> +      - description: Firefly Station P2
>> +	items:
>> +	  - const: firefly,rk3568-roc-pc
>> +	  - const: rockchip,rk3568
> 
> yaml files are indented with spaces, not tabs.
> 

Which is pointed out by testing, so this was not tested :(

Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
