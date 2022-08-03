Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24903C19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 11:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HS/oCRhkWEACpiHA8CCqZ+KuWJGAmH5Cz6iChAb2gE=; b=aZYgElE6L6cQhP
	VG4X3h9KNyF0m8q0QqMHuVnSqza5bpaTvsOFdeCY7RjkCq9pJyKu90BFi184zcm6DC4lWmnUXAqHX
	UkT3KwCdPtaOixRSKJycSN8nO9DNOMWcms/mDvU6TdM365nbIb+yqGQQPQMNyC1xNJHtOBJxi+q4y
	9wdrqJ7cJrjuDDQ1sBXyW9mLspDxWONEwwFiL60VeyhoRtljM7vOqtkTH0jf9F7vxQa6If0Fnpp1P
	SIvySs3pHabi2Qyi44ffdU/8pReTw8chpubuPa2hoAAU8OnKbQ9ZuS+BQRM/LHTYQ7JPT3CZfBDSe
	pWS4kCK6AD2XO6vyx+jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCig-005SDm-UQ; Wed, 03 Aug 2022 11:39:22 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCic-005S8U-Bc
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 11:39:20 +0000
Received: by mail-lf1-x130.google.com with SMTP id t1so25979492lft.8
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 04:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8MZZ0oEY6nNZhBhfKV+zcplONcJQxnevzhBhdZaccrc=;
        b=lc7tQTTr/ygXNfabycR/8BIAJl35h/h1QxP3VWgaT51MYPgilLT5fdDSxNr7wp77jz
         FxnkYfIvIV4kDEYhNTDSw2GZtv5gB0bjEvxm2vZayy7Kwa4baFHsLGXt1KH/U/j44HJG
         7/G38RGqfxAYObs2clampTmtesdEtJYcsKQitlvAX+0rN5aZZoKbDN7gPG1N8/kcbOPZ
         cs988ckLNZqu7Wd0XNP0/ZznhThxEYBSWuyboR6LdgwZxC4x7YBew1drJ0TsxWU5DM2z
         TGplrcTqBoebVgVxVYj+vqTFsDpZt2f+PfqQ1Rllo45FG75Kp2/fqfBx5C1TNUxXkIZz
         ccZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8MZZ0oEY6nNZhBhfKV+zcplONcJQxnevzhBhdZaccrc=;
        b=mLisQ1CmajrvIzWMA3WmW46xSQd9AKKkp5ZjY8uZBi2hrP//kU+uGYLvYyIJ9iscd/
         tBcLdAoM6Fi6nSYPIXg5HiD1pEm6tIal4v7YrIPg0jEUlBZa5b60wpGlsgBdkT3dY8lY
         NI246jeU8LDwB4YMFpPh0bugt37cOPO6DDC6WnbRnOY/2km8Dzjwd0/5vxH7HB/B3Q64
         qkw2IKLxgtOoevd09j1OdyU0X/LbaZzOj9I6lYQvvlXlG5PLhlajibd1R48lnUvCb4Zd
         L7joEn3dhbTuWdqLhrehA6re4wC9Buk9Mq3ZfIy7dBkq5/hDbDHPl7I+H1YxLfpxLu9r
         QIOA==
X-Gm-Message-State: ACgBeo102cq/tkQXWdZVDcRjplC080Xl8rXj0co+zKULDpuQIaLm9UfN
	FGf3zqYEl2UWDBBHZGxNuyR46Q==
X-Google-Smtp-Source: AA6agR77sn308/0hr2la0OlOPTBlCJeQ5gjLPt6ejGMTr23q/Jcaj3ga/UVaZwxx4c12GNQ+4uLWpw==
X-Received: by 2002:a05:6512:239e:b0:48b:287d:cbd3 with SMTP id c30-20020a056512239e00b0048b287dcbd3mr218702lfv.409.1659526754252;
        Wed, 03 Aug 2022 04:39:14 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id e12-20020a05651c038c00b0025e436214c8sm1605311ljp.78.2022.08.03.04.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 04:39:13 -0700 (PDT)
Message-ID: <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
Date: Wed, 3 Aug 2022 13:39:11 +0200
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
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
 <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_043918_562226_7E749A00 
X-CRM114-Status: GOOD (  13.30  )
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

On 03/08/2022 13:30, Jagan Teki wrote:
> On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 03/08/2022 12:46, Jagan Teki wrote:
>>> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 03/08/2022 12:24, Jagan Teki wrote:
>>>>>> Vendor in filename is needed.
>>>>>
>>>>> Yes this follows how similar rockchip vendor notation
>>>>>
>>>>> $ ls include/dt-bindings/power/rk3* -l
>>>>>  include/dt-bindings/power/rk3036-power.h
>>>>>  include/dt-bindings/power/rk3066-power.h
>>>>>  include/dt-bindings/power/rk3128-power.h
>>>>>  include/dt-bindings/power/rk3188-power.h
>>>>>  include/dt-bindings/power/rk3228-power.h
>>>>>  include/dt-bindings/power/rk3288-power.h
>>>>>  include/dt-bindings/power/rk3328-power.h
>>>>>  include/dt-bindings/power/rk3366-power.h
>>>>>  include/dt-bindings/power/rk3368-power.h
>>>>>  include/dt-bindings/power/rk3399-power.h
>>>>>  include/dt-bindings/power/rk3568-power.h
>>>>
>>>>
>>>> So when are we going to switch to vendor,device pattern if you keep
>>>> adding files with wrong naming?
>>>
>>> Do you mean the above files are following the wrong naming pattern?
>>
>> Yes, or at least discouraged naming. The recommended naming which I hope
>> all new files will follow are vendor,device.h.
> 
> rockchip-rv1126-power.h
> 
> Will this be Okay?

After vendor prefix goes coma, so rockchip,rv1126-power.h


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
