Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E1EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZIZ2R1hPVCex+cOswEh7apjWryrVSNxc+LzqU3Dw1o=; b=jm8Ez/jKlVWGMa
	9m2W20+TN1XFBY+PxPAwgUm4PsLfivxqfR+m1disXbldbmF4BIyOrY1rCbvKIZq7KsHH9b7EnMNUM
	ilnGzvMVSwqTrZHCwpdXKMjqA1GyhGzCftR/2pECnactmjObovi8TIhTHDtpjAC3xmzUmpBHWcdWz
	IPMzGCKw3l1TKQ0HBTyipkxxv0+vgXRoSpEOoHg7584C7eWoaKAClHs8nB6uUg/teahqUqtyU+JVZ
	rOmpnZK8GMQN7ZLXDJFwz4vyyqsAWWQAceH25Qmy3N+Lxz9KeH5EEUVAcQTnbw8NsjO/xhBkzORpN
	pCSSi30qSi8FHj5SWU3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9pH-00FvcW-0X; Mon, 21 Nov 2022 16:39:19 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9pE-00FvQ2-4Q
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 16:39:17 +0000
Received: by mail-lj1-x229.google.com with SMTP id x21so15078616ljg.10
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 08:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4sY4Snh9okT/7nr547/WcQJIao1PdNz+JQGJVja79DE=;
        b=jhBQOlLHlycSzwIFDu+OZs67EmnV1HbE5HWmwcvQmBvpkJ/EvblNtp9EDxVxZAINza
         vxGgINytK8vAHvhuwfyqNNT3z55eDHjVlIYu1cnk6q7H1icNJoKXc/3EPtzcIkHa6h3Q
         p8R+Ju/wb8CZYQ0Y5f3S+HJZw63wsbgnvYtx4JGj6A93D2z9fYrlINMEIVe3ShnQrMQ8
         SxUSo9qjB61hXqwCG5TpiOcrT4OS1PITG9yrweun1jHlaOkwikohrDtNOBE62fZDhWLl
         kAqVNGd8HVXoZclz+8fHjC+XjBmFXKjHwpKIuAvrJM2OFAtpGvB/JpKvOpJmAqMBjrPT
         163g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4sY4Snh9okT/7nr547/WcQJIao1PdNz+JQGJVja79DE=;
        b=tsug7IjUuwKYDvkbY6H/z3V10FL1WL15jooS4ChoH5ISt/fTfReCHPfB4NTYbOPonl
         HwPMI5UfYws880vFo4tPP0IxYC2jjjIY5N+z3n2AImUR1qhdrMzJZwbvzoJteleLwwJE
         LaIS13fzAw4BstfkeKCfoMY+ctVUSGFX4wMwMxM4Zzo4dD2Sfjn7KTi4DO59TXtTDQlN
         6eJrjBtnnE+tI/tqC5N4LP+k7U8hHRT1ReseNXCG2qVqhAOfRHGBYoaZrQZNU363qFPM
         jfd6GIS29D4/+HfEEUQlHGefI9uhxiMgmnf+4vYPxAphz2xT0RgOmwWpaeeNQ+3PiLFq
         ilHw==
X-Gm-Message-State: ANoB5plDXRayiF9I1RkoiKCqlyqR7h+PsYHuYcDHCE7Pb+NmFaO1zfZ9
	d9MSza93S3iXvHTi41QH883Cdw==
X-Google-Smtp-Source: AA0mqf6lZm0RKDtGwwpMqRDB5luQEWTJGmoofvkj5rOTdNpPTm3r+WDa8Ntv7gzbevgWG3zbgqBpLg==
X-Received: by 2002:a2e:95d2:0:b0:277:96a:5c32 with SMTP id y18-20020a2e95d2000000b00277096a5c32mr5637172ljh.415.1669048754416;
        Mon, 21 Nov 2022 08:39:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r9-20020a2e5749000000b002774e7267a7sm1554866ljd.25.2022.11.21.08.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 08:39:14 -0800 (PST)
Message-ID: <e1dd46b2-4200-9c51-c1eb-a141f1869399@linaro.org>
Date: Mon, 21 Nov 2022 17:39:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 <9389201b-22d4-1229-7e26-5f046d18e15f@linaro.org>
 <Y3uCN59bBwTw6dc9@pendragon.ideasonboard.com>
 <bc9577d4-5aa2-625c-ec9c-e3db98130a46@linaro.org>
In-Reply-To: <bc9577d4-5aa2-625c-ec9c-e3db98130a46@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_083916_217591_D76C4B3D 
X-CRM114-Status: GOOD (  25.09  )
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

On 21/11/2022 17:37, Krzysztof Kozlowski wrote:
> On 21/11/2022 14:50, Laurent Pinchart wrote:
>> On Mon, Nov 21, 2022 at 12:16:41PM +0100, Krzysztof Kozlowski wrote:
>>> On 21/11/2022 11:38, Laurent Pinchart wrote:
>>>> On Mon, Nov 21, 2022 at 09:04:29AM +0100, Krzysztof Kozlowski wrote:
>>>>> On 21/11/2022 06:09, Paul Elder wrote:
>>>>>> On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
>>>>>>> On 19/11/2022 07:55, Paul Elder wrote:
>>>>>>>> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
>>>>>>>>> On 18/11/2022 10:39, Paul Elder wrote:
>>>>>>>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>>>>>>
>>>>>>>>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
>>>>>>>>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
>>>>>>>>>> to the i.MX8MP.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>>>>>
>>>>>>>>> Missing SoB.
>>>>>>>>
>>>>>>>> I don't quite understand. I see an SoB right there.
>>>>>>>
>>>>>>> Laurent did not sent it. Did you run checkpatch before sending?
>>>>>>
>>>>>> That's why he's on the "From:" in the beginning. checkpatch says it's
>>>>>> fine.
>>>>>
>>>>> Ah, indeed, checkpatch misses that feature (it's part of Greg's
>>>>> verify_signedoff.sh). Anyway, your SoB is missing, as Laurent did not
>>>>> send the patch.
>>>>
>>>> I thought adding an SoB was only required either when making changes or
>>>> when pushing commits through git, not when forwarding patches on mailing
>>>> lists ?
>>>
>>> Anyone touching the file should signed it off. You cannot send it
>>> without touching (e.g. git format-patch).
>>>
>>> https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L397
>>>
>>> https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L420
>>
>> The second link states
>>
>>   SoB chains should reflect the **real** route a patch took as it was
>>   propagated to the maintainers and ultimately to Linus, with the first
>>   SoB entry signalling primary authorship of a single author.
>>
>> This series will (eventually) be upstreamed by me through a pull request
>> to Mauro. Paul's SoB will thus not be needed. Of course you have no way
>> to know this when reviewing the series on the list.
>>
>> Adding a SoB line when taking a patch in a git tree is standard
>> practice, but when posting unmodified patches to a mailing list, there's
>> more of a grey area. Look at
>> https://lore.kernel.org/all/20221024113058.096628238@linuxfoundation.org/
>> for instance, posted by Greg, but without his SoB.
> 
> I have no clue what Paul modified here what not. I am not going to
> investigate and I have no way to actually perform such investigation. I
> cannot verify the source.

BTW, rebasing is modifying and Paul probably did it (or is likely that
will rebase in the future). Greg did not perform rebases on these, I think.

> 
> The case with Greg, is indeed surprising, but I could perform the
> verification, because the work is both public and in known place.
> 
> It's expected for submitter to certify (c) from the list which was BTW
> expressed also many times during many reviews by many people.
> 
> Best regards,
> Krzysztof
> 

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
