Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D356C19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 11:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOnsKZdibSMHSjCc4VY4AH2XZlnuASgaWKDnE9RdlRI=; b=YVyLiEcokdiHwL
	F1Jml4xJkBoJOYXxuwbMrDS3qyVUQALMhreDNb9ZqqxTOpJPV7kg3RHRt8HqC/lFMCq26t+GdaNVz
	XQdLSTdmY0iyyIzm+LjR/kNv1GAoB2zmlv4IUlX8UJIuWuElFj1Ky8evnHl9+BiWkI8X/dLtyuXsG
	i/zgSO5jm4r8jseLNOIhAkFqoGD6+MiCL5EzsGXPpWwStPUXpswWYk0/kDM2GQ58RK02x3LvDh6d+
	4YWGX8LJCzQckmluUjEQZRFc2QQi8yu9q1ySLMPIBpFOBzkjmB8UK+2TC9AONqyya0ZkkNnkRNRlZ
	Uhaq6TsW0IBjIP0uw5DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCXR-005Kxw-HP; Wed, 03 Aug 2022 11:27:45 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCX4-005Kl4-Mt
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 11:27:33 +0000
Received: by mail-lf1-x131.google.com with SMTP id u1so15699803lfq.4
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 04:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TyUDYlMCD6nO9HsC72KlId2P6A43FPCwsmRgECQAK0g=;
        b=Zu5AGpgAIaa0tgrUyX2ydy+8VuU6XriSBrd8UEOiPftB7pvnHcOkgmiimLlOohP0lo
         R6pV4EXMvjHTqUbcnwcyefew3YpEOTaUNy6unU9YliCyswJfsSuwsLcThxy5Vm1Pji04
         tkI3vL723mx9q6ygg6wV9cVwE3VzxyPdIc/+0zgcXe1LKsDHUeoKtB2kV39qVezPCr/I
         y3hm3wvVlihs1Cq+NTeVaDyATEO8md7aU0akCVxLFzXojNQ4/v/Dv/RcBnfNlbqCazxK
         iPsePCTenjxFg6pdJ1qo+H/WLzrfGdIjwPTN6cSD+mjeqyMGfEo60UxB2rR+FO/3DsoL
         XpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TyUDYlMCD6nO9HsC72KlId2P6A43FPCwsmRgECQAK0g=;
        b=mz4IemB8Rbg8dloNK1AA2SogSEK24O6DOi+XD69nlc44PP1t4rVJHfGEjeFxD3aMHV
         RCIa/jQLUvVIGaj9bHDceAvh9vCyJBwka+c0HfxMZTdZp79qYGdc6NlCPSuZ7lZwoS8J
         EJS7hD76zS2v5/N9obNfgai6YGWWe57SNEWgPITrQQcPRdH3pE6iHfbVPwGJoyr2cR1W
         qp11KLiaxL6Pt2rPYLCbtTNTUrknNY6L1D7+4OBdWLOM5I05cyAgl8Y9qPl6TVMh6lvc
         Ca0JvzdryXpI9n62kGWTSzEI14dlxP0bqZSuMo9+oYfHMsT6ygkrIRlQTU7kGBI899Yx
         dbtQ==
X-Gm-Message-State: ACgBeo2vDXW7Lo3cEK7sdzDMSue0IprvdEIkZjhQwLkmYv+qgln5q28x
	iY+Q7XTc/MjWraiZ6wqZ4U/wRw==
X-Google-Smtp-Source: AA6agR4Auzuv+tQrdrveIn2E16Thixb1ggjtVWNjtYFq1nEiRybO2lDKrsJTSg1mlohl+TosLEJH2A==
X-Received: by 2002:a05:6512:324b:b0:48b:1d7d:6874 with SMTP id c11-20020a056512324b00b0048b1d7d6874mr997450lfr.18.1659526038654;
        Wed, 03 Aug 2022 04:27:18 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id q3-20020a2e9143000000b0025e0c352465sm947579ljg.82.2022.08.03.04.27.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 04:27:18 -0700 (PDT)
Message-ID: <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
Date: Wed, 3 Aug 2022 13:27:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
 <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_042730_071538_142D2308 
X-CRM114-Status: GOOD (  12.87  )
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

On 03/08/2022 12:46, Jagan Teki wrote:
> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 03/08/2022 12:24, Jagan Teki wrote:
>>>> Vendor in filename is needed.
>>>
>>> Yes this follows how similar rockchip vendor notation
>>>
>>> $ ls include/dt-bindings/power/rk3* -l
>>>  include/dt-bindings/power/rk3036-power.h
>>>  include/dt-bindings/power/rk3066-power.h
>>>  include/dt-bindings/power/rk3128-power.h
>>>  include/dt-bindings/power/rk3188-power.h
>>>  include/dt-bindings/power/rk3228-power.h
>>>  include/dt-bindings/power/rk3288-power.h
>>>  include/dt-bindings/power/rk3328-power.h
>>>  include/dt-bindings/power/rk3366-power.h
>>>  include/dt-bindings/power/rk3368-power.h
>>>  include/dt-bindings/power/rk3399-power.h
>>>  include/dt-bindings/power/rk3568-power.h
>>
>>
>> So when are we going to switch to vendor,device pattern if you keep
>> adding files with wrong naming?
> 
> Do you mean the above files are following the wrong naming pattern?

Yes, or at least discouraged naming. The recommended naming which I hope
all new files will follow are vendor,device.h.



Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
