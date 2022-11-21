Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C8EFC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 11:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47al8r/Nhiuounax1GE65ba4kibkgjoIQ/NbAl/Kkt0=; b=lTtTSzKR1lbI4n
	k0F6J8Bt2YF8SzKXd3szDo3Z87HDFl7Zy/b4V0tCtnRARPiYZvMyr7YLu+9SSgb1hqZhGJ+OjdH6C
	BJf4xe2zw0l8biOYhJMfXXOIbqSOOUU2FrmNmzzlXXEV4EmlDgDm8rtGxMRjNhucdlJSJTLHHyQof
	h5GX10wMyaMAUQPQ7tvS2WYW+Wx+7in4CpO7T+CDJ1FRA7ulBSSB8aOBNRLUmeapNJ+TNsL5dZfd7
	d94tbTOwRQYFP0+rTkYvF2718ceDN7R/FAi7N+PPvENXMs4R3K7kiTxXcaeOZmNc8KAxMAxxGMFvK
	Ckbh2RQ+KjEFR6Jq81vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox4nZ-00Cs55-2c; Mon, 21 Nov 2022 11:17:13 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox4n9-00CrvS-0i
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 11:16:49 +0000
Received: by mail-lf1-x12d.google.com with SMTP id c1so18314624lfi.7
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 03:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lrfG9YCdHt66hbYqu0OShiByN9Q+Ix/FBWGfahZIGTw=;
        b=xnbCMedvtEU3dsFJUuZuBxNphjIJrx2tlNtlRW2TMqS5/MONSHB7fRdDdxFWJ1gDpl
         m5o6YkZhUWqu9rutHH5jJfs9LVHB4SUAn/GbmeviiWK3HBkgddAs5HuXVg+qEU8SYinT
         yUIeYgaK7Tjscr9NpeismG0KbddLgiqsndWqlVVWhTXYhVC4ubWwHkGLZ1LmVlxIkG64
         Ykuv71VIOllchEaTsO8IxfEXLok/CN+JLWGaZ1ccv+NznR3EjfCc6aRH7PyisBmmqdK8
         UUF/LKRQ0HIaSRpq6bi11X4Z4FSM5twuSGj5RmZunG4XFm4k5p7vuKSQrWI1zwSvj9zQ
         WQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrfG9YCdHt66hbYqu0OShiByN9Q+Ix/FBWGfahZIGTw=;
        b=ubEkMOQ0EKXpPpQGK1QSieIDKhYcfsdDpmw7K7S0NP4JRDJ2/K7Hv0VYvIt1HdAShc
         xWm2KSvc1W1QHlRo1hjnr+5TkW+junDZyFhYbfSBLl2aL9FizMZm6CAo9ulDrZqTMOeM
         9HTfzRNxK71eXWdpK9ttEKk6qZQhyctxPGjNBsJzaXH2TdrG9zgWl5J16KswQ+oGxhOh
         TPsteHC234j6N4J0ifX7ZBJtCu9bLzRfev8T7xFXCHFg/A7JqmKF8HLQ+Ibs2643rCZV
         NywGlDtiQ+1ecB6gDPUUq/2QEjBOSUxCbd7EUr0J1VaLyHx/4oL8S5nDu9psA+6dE0h0
         0qOA==
X-Gm-Message-State: ANoB5pnuTYwxMb2RaAbkrBVK/KNKCVgczK9w2sTfM2xsWWZKK+4x8CtD
	vGEusG+GFAIat/AwMFDbs7LqLg==
X-Google-Smtp-Source: AA0mqf7XTsi+DRaW0EjX/SWzCsh6OLHKxJQ5nOhQBp07hY+otYz+Pmy3TNDQk343ejimX6B5i8Je2A==
X-Received: by 2002:ac2:58f6:0:b0:4a2:7692:3a0a with SMTP id v22-20020ac258f6000000b004a276923a0amr5989466lfo.71.1669029403043;
        Mon, 21 Nov 2022 03:16:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y22-20020a196416000000b004a25bb4494fsm2000785lfb.178.2022.11.21.03.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 03:16:42 -0800 (PST)
Message-ID: <9389201b-22d4-1229-7e26-5f046d18e15f@linaro.org>
Date: Mon, 21 Nov 2022 12:16:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
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
 <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
 <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
 <50024f2e-4820-ef78-d54d-5bfe53ccac7e@linaro.org>
 <Y3tVKOEfxdZ+Klnh@pendragon.ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3tVKOEfxdZ+Klnh@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_031647_098416_F90BBD00 
X-CRM114-Status: GOOD (  14.11  )
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

On 21/11/2022 11:38, Laurent Pinchart wrote:
> On Mon, Nov 21, 2022 at 09:04:29AM +0100, Krzysztof Kozlowski wrote:
>> On 21/11/2022 06:09, Paul Elder wrote:
>>> On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
>>>> On 19/11/2022 07:55, Paul Elder wrote:
>>>>> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 18/11/2022 10:39, Paul Elder wrote:
>>>>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>>>
>>>>>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
>>>>>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
>>>>>>> to the i.MX8MP.
>>>>>>>
>>>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>>
>>>>>> Missing SoB.
>>>>>
>>>>> I don't quite understand. I see an SoB right there.
>>>>
>>>> Laurent did not sent it. Did you run checkpatch before sending?
>>>
>>> That's why he's on the "From:" in the beginning. checkpatch says it's
>>> fine.
>>
>> Ah, indeed, checkpatch misses that feature (it's part of Greg's
>> verify_signedoff.sh). Anyway, your SoB is missing, as Laurent did not
>> send the patch.
> 
> I thought adding an SoB was only required either when making changes or
> when pushing commits through git, not when forwarding patches on mailing
> lists ?

Anyone touching the file should signed it off. You cannot send it
without touching (e.g. git format-patch).

https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L397

https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L420

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
