Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4610ACA0EDC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 01:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FG6dsDm2HcK119JLTFQ0sXVSs1ISfGGqw0/99qJv5E8=; b=Yv2xFvyUsuUa38
	Oy8L5pDU1b6TImSNyBPBhw3tXtJK2hpLTJOuSF8TxYFryXoZKFz9xBC7ZV8X8eO7hpmRKtzHw4RHd
	gH5phjSThDrLQR0X+2gR3CXg3Rvid8jtibAAr7aiemIwCM9x15vlORNAedOK0gvOS+QP7K8TFGcdS
	lFEf84t+GtjqFjLZ/AQFNUD8jC+A8KrXyY79z4fSl9MPlAW5z5OGmEmN/stjPOWghXBCzjjjgfSlL
	a+7R7pnCTt/W06cpHrjGU6r2xbcbVKNVJjsf9Mim+6GqNnkGbE26EHzllTqgWzybOU1WFpoVp0Twn
	hLmu7CkHUTO8vKnB+weA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uotm1-0000000FNj1-2kkp;
	Thu, 21 Aug 2025 01:07:25 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopeH-0000000ErE9-0dox
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 20:43:10 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-55ce5097493so249662e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 13:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755722587; x=1756327387; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xcATB+y8OrHktrFZyrQXkmZknrCsI/ZhqWyGQPNeUWc=;
        b=L4Xnjob0uldyRVUl6Aqe3H1Ka0ay0PhOCeBYR7tRjjpfQAC/MWipmNn4hnj6hYwUe9
         Ss7DvHMVBLYeBZd24UY/WhYSZxZboED8IMXrsIeydiSl5l1aZke/RYVgjsRZmPECtZ5d
         ImYNmBvSbxZvScS2+U0WkNs6ADx9xHH9wV85aWU9FMN8sD7HL9x7jCB5MjD9E6+fHDGo
         zLB9r1/PUmzxdP4m9mqdAwWvEIcGvEahb5WV9UO3WM/039gSC2urKeSpZ2NsaFYezSft
         aFcEUqmmtfhryP5EmJxBtYV65s9Iopen1Vj5Ga7rerMqOPkftieIaoTIzdN/1g7R3sGN
         YK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755722587; x=1756327387;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xcATB+y8OrHktrFZyrQXkmZknrCsI/ZhqWyGQPNeUWc=;
        b=BMYC0AzdPYoF9L0I3zRoIdvyKf0Nv5jlBWdAHIuGyzeUjIK6uc7zHwUkOfF+8kUJII
         z8wcWnwEkR91zPMyoZpszRiQB8Gj+Dhos2mDZxhBsGDnc4Sn2DlTXNHkC2K5hTzCS1Q8
         kJgMqjzqzNbos9J8NrDawGp20OhV5gH0+6WmJ0lXVd7Ts7mh9YJsNAFjtFcjDWiNVcyu
         OrnQX5Di2ve+6QdewY6VorY8wAkvUSwbGNIWHIxUyAhj+EMrWyukFx7ymfCdvxaXuE16
         qXjmWaZp+MKHbRwmatc4aRtWvukSFLQ1Q/XqSggtjo2fnju+y5LDK9+wo3EWo+AWnLOM
         ikvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr40Rbm3Xd6yVLyyYfQ0A1PCH2IyAn7XhP+mC15bOJ3xS68vZXZ4qvorfVlNGc8+JEs+0MQfjehDmW1oUIqw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlm46J329oVfHK5O0NgslhMDxN1RvFVR6OjvU+qM5tT+OgqBue
	abb4aiX5+xcIy2tQLlgP2JQ2mKZHeRfbvSVgVkPBlaHwLS66hrZWSAJx
X-Gm-Gg: ASbGncsDnS3K3Myl/yBJz5wGitrY7JiwWi1WlTK/CkSvwue+qICK687MEq5PN3550HN
	iyLVfFV/7JpInFvaIBtqeK+S4aO+P2rHF/TT31zlZzB4+NO0NCEe0oHFnjrSsaH87POhv86szpa
	tS/OP57yZMxl2wcS0PrTKGXeTZ63RrEOgtr0XLll/l4ZTmAZIC5ZnjHIb/SURxqdf1wMNxvb2aJ
	HlCufPAoqnzkSdhPq33gQJL+SzDHF+3GL+zlPO6OqnNEF+M54TXJwmR4dqzLfW7hi1uRvgpB6Zg
	qq5C4LcK5zRJtB8AJdoR46K7E9My+uLgShuqD9OwT7c880/G/7uchsCoU0gDdZ9TkReS0jHlpGq
	shD8AsBixpIvgoQ+ORlAjFiQ4jaBrx5V+AVw=
X-Google-Smtp-Source: AGHT+IHOXDcFl/hjdTmC5pJrtCdH/hYm2FY5hiub51nUKs/kNWa0uddJMWskQHnCrQ1eRvxo7fmqLA==
X-Received: by 2002:a05:6512:acb:b0:554:fa07:c60 with SMTP id 2adb3069b0e04-55e0d539df5mr56593e87.34.1755722586698;
        Wed, 20 Aug 2025 13:43:06 -0700 (PDT)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369d83sm2800576e87.67.2025.08.20.13.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 13:43:05 -0700 (PDT)
Message-ID: <42f5b747-63c2-4ffc-94ba-10ecb2e5efa9@gmail.com>
Date: Wed, 20 Aug 2025 22:43:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: leds: Clearly mark label property as
 deprecated
To: Diederik de Haas <didi.debian@cknow.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250815104805.405009-1-didi.debian@cknow.org>
 <b30905fa-6bd1-47dd-8371-f609d418387b@kernel.org>
 <DC2ZLORG11W0.1CS78L6F2OV4Q@cknow.org>
 <20250820-hairy-economic-wildebeest-ba25a1@kuoka>
 <DC76U4GVR0O2.1HXLEPCF8BG02@cknow.org>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <DC76U4GVR0O2.1HXLEPCF8BG02@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_134309_198515_7A0FDC69 
X-CRM114-Status: GOOD (  24.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/20/25 12:37, Diederik de Haas wrote:
> On Wed Aug 20, 2025 at 10:14 AM CEST, Krzysztof Kozlowski wrote:
>> On Fri, Aug 15, 2025 at 02:06:49PM +0200, Diederik de Haas wrote:
>>> On Fri Aug 15, 2025 at 1:00 PM CEST, Krzysztof Kozlowski wrote:
>>>> On 15/08/2025 12:47, Diederik de Haas wrote:
>>>>> The text description already mentioned the label property was
>>>>> deprecated, but using the 'deprecated' property makes is clearer and
>>>>> more explicit.
>>>>>
>>>>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>>>>> ---
>>>>>   Documentation/devicetree/bindings/leds/common.yaml | 1 +
>>>>>   1 file changed, 1 insertion(+)
>>>>>
>>>>
>>>> Please first read previous discussions:
>>>
>>> [I reversed the order of the links so the oldest is first]
>>>
>>>> https://lore.kernel.org/all/20221122111124.6828-1-cniedermaier@dh-electronics.com/
>>>
>>> Rob: "They ['function' and 'label'] serve 2 different purposes."
>>>
>>>> https://lore.kernel.org/all/20240509110545.49889-1-linux@fw-web.de/
>>>
>>> Krzysztof: "I don't think there was conclusion to make it deprecated on
>>> last attempt"
>>>
>>> I agree.
>>> What I don't understand: Why wasn't the text updated to correct the
>>> incorrect statement about deprecation (that's how I interpret it now)?
>>> Or some other conclusion being made and that that will be reflected in
>>> the text and/or a deprecated property.
>>>
>>> Otherwise the confusion remains and then it's just a matter of time
>>> before a 4th person comes along proposing the same patch.
>>> And possibly even more harmful: people use it incorrectly.
>>
>> Whatever change you want to do here, I expect to address one way or
>> another these previous discussions. If the code is confusing, refine the
>> description. But not in a way which ignored previous feedbacks.
> 
> I'm not going to make a change.
> 
> I thought I would be making (more) explicit what the binding says.
> Apparently I read/interpreted it incorrectly. What I described above is
> how I currently interpret the *confusion* text/discussion. Is that
> correct? I have no idea. That I'm at least the 3rd person proposing this
> change indicates I'm not the only one who is confused.
> 
> IMO it's up to a/the maintainer to make a decision and that should then
> be reflected in the binding, which should fix any confusion.
> 
> I hadn't looked at the code yet, but *I*IUC the code should follow the
> binding, not the other way around. That's how I have interpreted
> (mostly your) comments related to various binding patches ever since I
> started actively following upstream(ing) work. Which (again) may be an
> incorrect interpretation.

I think that what we are lacking to move forward is Pavel's response
to Marek's question [0] about elaboration on the subject.
Unless there was a response and I can't find it.

[0] 
https://lore.kernel.org/all/cb3c3a1e-ec10-1e7b-1b21-3cb250f92ecf@denx.de/#t
-- 
Best regards,
Jacek Anaszewski


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
