Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A9DAC64EC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 16:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ2ArvIOvIbVpaOgoOaAIAp7n+VNpYzIJOeaOdVlnL4=; b=PSTG2r9e3OlUfK
	bYdE/dZ3EEvRlZ8pdECpKtBRbUDQvYSzp1sazkG6XXhKAJQgXDLoGmCgVYRb5Jrot3aK/FrnlPRJ0
	9UgqWIr5RnndLVUd/78hIXMYV24GS+K2QVpv945tM4dnl6dK6GQOCrqyw7l41OOy0foLn50dthmba
	rDbWeqqZbEAH/U2rscily7xqWeeWZjIDeN0APkpDyhqGGaq5PlMyUlCTY7mxK8D+b1oh/ZfV8jXT2
	mQPAMHoWRCqmatJza1pn9UnpAS6Q+7LRUwvY2BxueS0SqhbHgPsvt8d0OO/RYcfreP040RhQqz8+M
	f8RSz0K7KipVyrABwPMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSKQL-006Ufk-MO; Wed, 15 Feb 2023 16:14:25 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSKQ8-006Ua0-2C; Wed, 15 Feb 2023 16:14:13 +0000
Received: by mail-ej1-x631.google.com with SMTP id mc25so12063660ejb.13;
        Wed, 15 Feb 2023 08:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uC/SvFAaTgyOUT62qSZHz5/1ITvVZfonGrD1ssJwpVw=;
        b=O2unormQ4YLjFh1J9UYBKR0y+uFQ5K+/Pi5JPJrTjOqF41NoPgtIc1Sf7T+N6W7+pC
         xdk0UGF05SpKe5ERkALQXaZQ1t3rEr6GehU8r73Xs60EF1BStYZyOUIRsDzqTuek2gp6
         uY0dwwKhERyZ9r57VVQvmfPoXaJK4rPm5vhOnN3TcPcf8lA97JfEvatJrhXmxPYnqbZv
         5SwEYiChmS00daXbf5hoXMcauIFQ5ap2wAOE8w25QwvrAkuWkLATMor0ph4HPRK8a9dl
         fTeGlo1rHfqQ7ALcSEmZ9LREZNA6CshoTE+yTINzF1vvW9S4DyTXeXHR2M89zCZCagNv
         5ehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uC/SvFAaTgyOUT62qSZHz5/1ITvVZfonGrD1ssJwpVw=;
        b=Xiexhot3Wrpir28snHkU626BagW2Hru//klXgZX8y4no0TBx+/14Nl94grdjbgZ4bR
         gAVjoCgFPhagVS6Cw4W2nQetN05K1vXGzYBRWB4B7yzTccSn8FG8mWww9C6ISMan+7pC
         URXds2S0fuQrs+Hb74vwdb0Y91YF8lTTtQAD6+CzBlO3u7e0qCSQv8Dxl2Ups6fPsU8e
         9PJ3zcvjEMvA7WKQ6P0R9Nu7i+uw/I/PPgUNYgW+nA9EhdFJ0OfZVwHWNr2gXUWGRexW
         2BK1tIUfPYx2oWWgkyexSxC+iXbAb7aqByaASxdnQvZDKwS/BmZUg5a5UCL9Uv3Zep5W
         wEzA==
X-Gm-Message-State: AO0yUKWOtxzFolr5BFeoV72kTJjGeVR1baU+3YCCnzq+NIzbgxCi4dl0
	01G6c1BNrjBBcOhPHhqP5H8=
X-Google-Smtp-Source: AK7set/gvuJ55M0r2BPZvJhlwvcq1chATR8smn/3mw5g1ugscCalkHUXm3FyAooLWsOIJtatUvGf+w==
X-Received: by 2002:a17:906:bced:b0:8af:2b80:a1a with SMTP id op13-20020a170906bced00b008af2b800a1amr3227603ejb.10.1676477647607;
        Wed, 15 Feb 2023 08:14:07 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o13-20020a17090611cd00b008b12c368ba0sm2572509eja.45.2023.02.15.08.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 08:14:06 -0800 (PST)
Message-ID: <e0168826-2276-405e-2d31-4b396335d02a@gmail.com>
Date: Wed, 15 Feb 2023 17:14:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
 <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
 <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
 <CAMRc=MdZOmxSTvtKaPo7cnx6q+dg8ANQYuM8PeuN+KQ7fqV61g@mail.gmail.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <CAMRc=MdZOmxSTvtKaPo7cnx6q+dg8ANQYuM8PeuN+KQ7fqV61g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_081412_134078_FB2ACF30 
X-CRM114-Status: GOOD (  16.59  )
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



On 2/15/23 16:02, Bartosz Golaszewski wrote:
> On Sun, Feb 12, 2023 at 5:14 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 10/02/2023 21:03, Bartosz Golaszewski wrote:
>>> On Wed, Feb 8, 2023 at 12:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>>>>
>>>> On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>>>
>>>>> Currently all Rockchip gpio nodes have the same compatible.
>>>>> Compatible strings should be SoC related.
>>>>>
>>>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>>>
>>>> Bartosz can you merge this one patch and keep the rest back
>>>> so we get a more defined DT binding baseline?
>>>>
>>>> Yours,
>>>> Linus Walleij
>>>
>>> Krzysztof, you left your ack but seem to also have pointed out an
>>> issue - do you want me to fix it up somehow before applying? Drop the
>>> oneOf and turn it back into an enum?
>>
>>
>> Sure, you can apply with my comment fixed but then just please check
>> with `make dt_binding_check DT_SCHEMA_FILES="xxx.yaml"`, that
>> indentation is not mixed up.
>>
>> Best regards,
>> Krzysztof
>>
> 
> I prefer to get your ack on the final version really.
> 

> Johan, please address the enum issue and resend just this patch.

I changed to oneOf, because with enum I didn't get it working.
With 2 enum's it complains about: is not of type 'string'.
I'm out of ideas...
Maybe it's something simple that I overlook.
Could Krzysztof give an example?

Johan


> 
> Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
