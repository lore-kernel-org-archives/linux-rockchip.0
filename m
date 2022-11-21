Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04BF4C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 08:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QSHdAcf8lQ0XUDyQJgaEbbBdIZe24xQdRWrizL9NWU=; b=YgD13ud+6qZ+cX
	KwvBPl490J84FRrMJxW6TGv8tN6b9T4syaRtTrbCCI8fmHERwY68MiH5s5Mh1WXqanCeApjkmyhsY
	K24Zy1gj11gu73rkvzcwhjvO4Acdbd/KPeVHn6c5xGWTggmdHQ+VCtJXS/+FlUPOWBnJ54bQTGEY/
	1yGiKLrMJL/t2UKShCVe9rbEP11+/40OzZlQGE4+S50BRCicMjsp+P/bsmCwdsMWp3hDXx8zVXHrr
	cjuT0G0w0rLOHyrL8iGaZqCUeqcNKg0bK95onG6VD0evMoBzzbAHaQv5XcV3faP9oySrKFQLuE4XI
	II1gz0hvM7A0l54f/xVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1nB-00AuWQ-7A; Mon, 21 Nov 2022 08:04:37 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1n8-00AuP5-M6
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 08:04:35 +0000
Received: by mail-lf1-x136.google.com with SMTP id g7so17657347lfv.5
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 00:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SQXNwXriyENMBxcRvt5HwJj1BFFBn/vx8r8A40oB0Tc=;
        b=DQqLRI7fYzNORFBvv3pu5HOUzWXdPDA+z+U4wFKW7mEn7VdJgPVSFdvA5APdkvf4mg
         NJMOqaVt5aDPidpqNOcibQCfzw8GMcitQtUQN4bInHcEEoaKCkG2HXe8d4Sie1MSQ454
         ibIbQ1JLCApYS1yvVIGhiY8hziX/Gv54o7RsymuCfL8je8yiiB+gjPhH1pK228inL3/Z
         /GAaZOzBgLNcfqZX4UZ6uoJXuTAaStZAa7+fMaZiwMDh4C6Jp10AoCF3UPUFHThxnpoa
         GeRskEkYHojOa6Y2jjTAG6J+aXj5BRbRUv6n2lQNpNKsOMKSRR+QLsvP4Y6EndzVeNdd
         wtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQXNwXriyENMBxcRvt5HwJj1BFFBn/vx8r8A40oB0Tc=;
        b=ZCzyReTwTYC6bRhzq56f/cfyw9Oq0bb3z4TzfBytftnMe6E1RAQSSB2hmLyavydlf0
         X8qZxKdeyaR2j+gBjphKox6WmmDMuvkGj6EiEI6y1PKtukbFazIPl8eQXlEHKEjha5ik
         1jHgkJQMwb2kbtpKep2fY+gpewjmIR3aTidqUJdU8DZ5VwjzRvWRP2hoOeb0pbR9zEaJ
         MMv5dlrmGOkkAqs/w2YA5h6SIVls61wYDoPwI9c8ekosKFuKoAXRHruzwk4z2GgssGQY
         M2M0RrjyEti4VJeZjpYCpF36IUWA3wridYWnRMKPKmwBq+onQx8KRsbb1pTC2kkMJBrM
         wVzQ==
X-Gm-Message-State: ANoB5pm1qydpcleq8fOckC23+/o/Pcjm58kvfpmvPwxsheOfBKON31ml
	V8G92n7MitKYyMbp3ChSRvCKTA==
X-Google-Smtp-Source: AA0mqf4+Zek9Tov+SKx3s7/VKFuRhbRwGPPf2pj6BxCr9D6CuqD2m1NUJkKSuVjJ1ijnEZQWQbp+qA==
X-Received: by 2002:a19:f010:0:b0:4a2:2e81:9be5 with SMTP id p16-20020a19f010000000b004a22e819be5mr5860494lfc.486.1669017870905;
        Mon, 21 Nov 2022 00:04:30 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a25-20020a056512201900b00492dbf809e8sm1908442lfb.118.2022.11.21.00.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 00:04:30 -0800 (PST)
Message-ID: <50024f2e-4820-ef78-d54d-5bfe53ccac7e@linaro.org>
Date: Mon, 21 Nov 2022 09:04:29 +0100
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
 <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
 <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_000434_788331_E52FD35D 
X-CRM114-Status: GOOD (  11.47  )
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

On 21/11/2022 06:09, Paul Elder wrote:
> On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
>> On 19/11/2022 07:55, Paul Elder wrote:
>>> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
>>>> On 18/11/2022 10:39, Paul Elder wrote:
>>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>>
>>>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
>>>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
>>>>> to the i.MX8MP.
>>>>>
>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>
>>>> Missing SoB.
>>>
>>> I don't quite understand. I see an SoB right there.
>>
>> Laurent did not sent it. Did you run checkpatch before sending?
> 
> That's why he's on the "From:" in the beginning. checkpatch says it's
> fine.

Ah, indeed, checkpatch misses that feature (it's part of Greg's
verify_signedoff.sh). Anyway, your SoB is missing, as Laurent did not
send the patch.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
