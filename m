Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF540C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAh6OACmU7L+j11qBPs8dzDFMh23Eqo7i1c+msexpYk=; b=fj31Txm92Z1844
	Owg8KIE0W20u6SyDkOljc7Mx9fq6yCOwzrr2qk6A2Le4yLDqKa6VLQcdKqz/806C/HbnYCkoZLaKn
	aUwxVWqiGo67EuyNelAmXEpOcZVQnm3AGc6j9zR4XRS+t//5ilOORsYiH9hD0QpnZ1ZeWmWgn7TZK
	7ZgkcADISSPvhhGQCIwa3uBhSIevthrhV1/gmGaV04eEl+2+SO94bCg6kLp6zBT5pao27hx/aV9LV
	MGbmdsoqDR3gInmTKyl32wvC/sJeRDRgC2sj9cKPZyscFNeoIcT8pguO3MGlRAX7EoAnve6s7NBOy
	GqGq0RtOwjk6UeCu0ghw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no0pg-00Dp4p-W4; Mon, 09 May 2022 10:41:41 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no0pe-00Dp1B-2T
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 10:41:39 +0000
Received: by mail-ej1-x631.google.com with SMTP id g6so25970930ejw.1
 for <linux-rockchip@lists.infradead.org>; Mon, 09 May 2022 03:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0Tzmc8wnZSs3kaLgnggedsJSFk2LO/Nmg9rBj5r4ux8=;
 b=WGMooZUa6j8KkU69lShmqD1ymL72xwWNXs3nodalP0erTsGOvMWwwYlpvkfH88kCxT
 0E8YX1Y8qiBuf+/rBk0+GJSTXF4omE/91WD5LJkr+PvXlkfHyQsDlxfi0okhln9IpJqD
 KrAZFM6qgMNFC0njfHmHs9zDX1UdTGXpgkhojXf4lsgtIc6vSsp851y0Jm+QuhQ0Wmi9
 Rw4mtHZsbsDJ15qVnpdTJUMfDa9Fv2M2CD3A5zcyze3Ld1rxH+U6YqggkNOytsjeUp4L
 QiWxMaXka+DZ6JYAWG3tn5oudbxE7kOyJyTVgROVW9mhNxBOnZCxjVyoNPVQOrHSiCJM
 Khgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0Tzmc8wnZSs3kaLgnggedsJSFk2LO/Nmg9rBj5r4ux8=;
 b=6Szyc2dOeP0AlUXpkDHe9YXthqBGm3Gq39WjMUzAEOx3gWP92f6CnvKSabzpxT0vY8
 wLwt11C6oRdMfLE/mx0W++0X+unnDTAvFlzDjmb1HeBnXhU0EsOAXwpJvdUptSa5IN7v
 oBWYYwNpdtOSfJig/fhQNBoby9ySncQ0vA2TC4iDCVIGiJHMraUQ0xTmBuwWZEVtWk7r
 TfRfEKmo0dDcbmdQlMGCb17OA9ueXpz923g5NgbFZXwtuq4A2Z2FVcVIqB8jGxMpTl/D
 wx0078GpBmc63go2uHnevaXacW2mCULCrgfHO0oJhbmYUX0E7l36QlG/RSZQq9zaoSHU
 6ELw==
X-Gm-Message-State: AOAM532MrRIjaMdhurLifhzXAWtpp7Vu4J2+OjUZC8rryBho0HJ4/h90
 V5iTtZLC5NGsXA/29P8IxBzpdw==
X-Google-Smtp-Source: ABdhPJyu2S2O+OMAKWn+Ou31zi5Crs68RqyrtMBL3634D7gSQVjyX9dDSoVFxbdUCHfECEtlVve5Fw==
X-Received: by 2002:a17:906:7315:b0:6f4:c84f:9eab with SMTP id
 di21-20020a170906731500b006f4c84f9eabmr13171153ejc.759.1652092895893; 
 Mon, 09 May 2022 03:41:35 -0700 (PDT)
Received: from [192.168.0.243] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 z22-20020a50f156000000b0042617ba63c3sm6137747edl.77.2022.05.09.03.41.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 May 2022 03:41:35 -0700 (PDT)
Message-ID: <ea94f18d-3172-98bb-0892-a98236a08018@linaro.org>
Date: Mon, 9 May 2022 12:41:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <20220508202544.501981-2-frattaroli.nicolas@gmail.com>
 <422bf3bc-7787-97dd-6ab4-7570e5ce2ed8@linaro.org>
 <3594222.Ivq9XVSPaC@archbook>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3594222.Ivq9XVSPaC@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_034138_168261_82918BD2 
X-CRM114-Status: GOOD (  22.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 09/05/2022 11:24, Nicolas Frattaroli wrote:
> On Montag, 9. Mai 2022 09:25:23 CEST Krzysztof Kozlowski wrote:
>> On 08/05/2022 22:25, Nicolas Frattaroli wrote:
>>> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
>>> encoding. This patch adds a compatible for it, and also allows
>>> the bindings to only come with a vepu interrupt.
>>>
>>> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>>> ---
>>>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> index bacb60a34989..4045f107ca4e 100644
>>> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>> @@ -22,6 +22,7 @@ properties:
>>>            - rockchip,rk3288-vpu
>>>            - rockchip,rk3328-vpu
>>>            - rockchip,rk3399-vpu
>>> +          - rockchip,rk3568-vepu
>>>            - rockchip,px30-vpu
>>>        - items:
>>>            - const: rockchip,rk3188-vpu
>>> @@ -40,6 +41,7 @@ properties:
>>>    interrupt-names:
>>>      oneOf:
>>>        - const: vdpu
>>> +      - const: vepu
>>
>> This should be enum (for both lines above) and you should add
>> allOf:if:then with a constraints which variant can have which interrupts.
>>
>>
>> Best regards,
>> Krzysztof
>>
> 
> So something like this?
> 
>   interrupt-names:
>     oneOf:
>       - enum:
>          - vdpu
>          - vepu
>       - items:
>           - const: vepu
>           - const: vdpu

Yes

> 
> What's the difference between a list of consts and an enum here?
> I'm not very familiar with dt-schema, my apologies.

The effect is the same, just oneOf is a bit more complicated way to
describe it.

> 
> Also, since I don't know which of the other variants can have
> the encoding interrupt and this wasn't brought up until now, I think
> my solution will be to have a check for -vepu in the compatible and in
> that case require that only the vepu interrupt is present, if that's
> alright with you.

If you meant by adding a "if" case for only rockchip,rk3568-vepu, it's ok.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
