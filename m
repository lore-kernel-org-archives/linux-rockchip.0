Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88400C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Nov 2022 10:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRWmnuHIvUL9afbznKQZJNJ8rFMxuCLjTa6gybsLakI=; b=28LjkZcPkVIyMr
	1S3/1FVjOQBWhGgNpvU6Th1E4mllkA3dlnIrOtFTn61rR0yoMZHWCT3eoB80HIXWF5pi/mhCu6X1+
	furX3ncimXz980uScvjkzmBZV8wA9BSLs746U7RaIM3FfCyrjdRMuwW3zy/DilNdo4l7Zn4vSr816
	mx/tNECVi1LYkFz3PfE28i7IFQg8wz1GWwdbpLupi0s0u1cgf0szkvgCotEBkKhIlFZa45VhS642m
	JZZi9U1FOuilnu8Agum4sII7dq4slsCCjuXSm2pNMtZKOXs5T7b2l1GwKFsrQqmfo3zvCBTokQKFh
	7YMpghTdhl6Mp2YgfPzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owhgs-003cXf-4P; Sun, 20 Nov 2022 10:36:46 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owhgh-003cMP-2V
	for linux-rockchip@lists.infradead.org; Sun, 20 Nov 2022 10:36:36 +0000
Received: by mail-lf1-x129.google.com with SMTP id c1so14903326lfi.7
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Nov 2022 02:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bkqr5CITlf9Pw0k+sezW0jUIFDxvpCmwSMWyehFOiNM=;
        b=l01VxSQh8yun766SjOSDe7zfb3SL3HFlZdKdnKf6D2EiEzXVI2Av+lmCp2NZ3lVlpi
         Y1vEvHZJw3wFXGX8mBTgR99tBrci4iwdycuAW/irJzmXCKEaLmEYE7tla4U219jYYgbu
         Ak71A+oY5nA0KSe2u+ozcIWsvG4O2ZWQUiXohw9BlFJCJFvsfSfm2aLpRJ2dQORoJodZ
         4qb7oYyFiJcNAQpz4ahaM//QrbawwiBwlOtchNsCfw4bxU1aDWxicQcnRxjMPb6tfVKa
         lilYfjjOSydFNN055+AMwVyOy7UBFRTHzCkdQlVY+9eDKHuOYZ01pXXvoMEHytic9Ecg
         dzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bkqr5CITlf9Pw0k+sezW0jUIFDxvpCmwSMWyehFOiNM=;
        b=fjemy24cxWZo2vEpWQzwqfFhKNC5MTSSiZD/Bcm75W5vdWF9gz/UdV1JQHTlRzTIJv
         22sHuwlUmjHjAQu2MpRgfJBQipUNCcQ+XUXl4RJ/ynCC8dLir2NF4wT5S0HkG46BIi4h
         pUAmjoQJYD59xqnjcvKWwBCobdCUbjwaYuESId+7JSNi4mneOdstovWhBrCvDirMjKzy
         /MwqrBN5ZGKXJmMZcrQNA226C+I18FM0Qu/V32j6wmc/Gzopn+gube4bPrnjI3gx+OcU
         +XCoXqs4cSYRtG1WnKwqJsrHwYkT2L8ptbO97plB2gy3u/lwZyt2zfheN2FUWayhmEYw
         1gXA==
X-Gm-Message-State: ANoB5pkoKNnLK3n9OdglgJ2fo4BwygfnRVPWNq/7UTOOsUG1MYqXpuIA
	8isijCwJ2RJ2nmZ51IYOLgLOvQ==
X-Google-Smtp-Source: AA0mqf6Mn70Z7ivGYWkW2u7n1bmFEm8KUVOAgQ7UoY06kP3Jgu4IpvXfJfXjOWCewEwECTOGz+/xQQ==
X-Received: by 2002:a05:6512:b8f:b0:4a2:3953:7e43 with SMTP id b15-20020a0565120b8f00b004a239537e43mr4517786lfv.229.1668940592846;
        Sun, 20 Nov 2022 02:36:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u21-20020a196a15000000b00498f871f33fsm1497394lfu.86.2022.11.20.02.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Nov 2022 02:36:32 -0800 (PST)
Message-ID: <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
Date: Sun, 20 Nov 2022 11:36:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
 <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_023635_121550_5F9F9DC8 
X-CRM114-Status: GOOD (  18.73  )
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

On 19/11/2022 07:55, Paul Elder wrote:
> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
>> On 18/11/2022 10:39, Paul Elder wrote:
>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>
>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
>>> to the i.MX8MP.
>>>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>
>> Missing SoB.
> 
> I don't quite understand. I see an SoB right there.

Laurent did not sent it. Did you run checkpatch before sending?

> 
>>
>>> ---
>>>  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
>>>  1 file changed, 72 insertions(+)
>>>
>>
>> I don't know what do you demonstrate there... usage of endpoints? That's
>> the only difference. Such usage is the same everywhere, nothing specific
> 
> I guess...? Doesn't the same argument apply against the px30 example too
> then?
> 
>> to this example. You already have two examples, so I don't think this
>> brings anything more.
> 
> We do have usage of this in imx8mp.dtsi and overlays for the ISP, but
> those patches haven't been sent/merged yet, so in the meantime I think
> there is value in providing an example here for the imx8mp.

The examples are not for demonstrating imx8mp or any other soc, but this
one given binding. Changing compatibles and few properties is not a
different example - from "exampleness" point of view it is very similar.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
