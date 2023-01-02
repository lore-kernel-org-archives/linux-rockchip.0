Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75D24C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 09:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vpLxzhqBxvHkQGagBLrm5MoASiByj6aEy9T1cXiDiY=; b=exezDdFojTaWr3
	uqYAEHL1M2wYezetEln3OZUPCRMcPokrXNIhG71RQyLd4rJeHlfgFgkwTCa4InynPj7KTPeW3gP5+
	RAwpOmlrgkn6y4LsbmnxLpmXGvk2+nBYKM6/jjGFZ7zIVlEacKGchFwFDO0XjHSo1jvRAfXL/qOJR
	k8FXDmuEKj6ef0ZYkaOETbZmN795qztPgtpQDqXAgMPeOc6Cv1Z+XMiDv67u6OnHD8T1ADTezIBm+
	byyTiikBM66oIXKJewhnwNCX4huhCBIZzHeUYKYQ6KzNDssXtkjuWez/58MN69ECpijt9k1hbYtE+
	mbbS8OA2TOuvq9YKPiZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCHTz-00A6Ct-H0; Mon, 02 Jan 2023 09:51:51 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCHNQ-00A2CQ-NP
	for linux-rockchip@lists.infradead.org; Mon, 02 Jan 2023 09:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672652700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hrNAqV6ZY5ivQJapJxCgpk49bJb25LBax+4yjjic7Lg=;
	b=Kpe1QT6dvsbCrkPs43Z7Fs74qSEFRgoRUayeykmRfE/FTxaWxKHlpiMZIZZHXtLX0dzxfh
	Z19Aq0k0NtvStV7St8Fk4kZ5P8adqovzyK/nxfeJV/SsZwskKg3agBVr/TcmprZQmWvsS5
	8fJEwFXbdrfWFs1uR5z+/hixmGHarvc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-324-w-qRugF-McGqRru4wX03Dw-1; Mon, 02 Jan 2023 04:44:56 -0500
X-MC-Unique: w-qRugF-McGqRru4wX03Dw-1
Received: by mail-wm1-f72.google.com with SMTP id m7-20020a05600c4f4700b003d971a5e770so12809979wmq.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Jan 2023 01:44:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hrNAqV6ZY5ivQJapJxCgpk49bJb25LBax+4yjjic7Lg=;
        b=onoStcP4EaE+bLywX3YCLg+J0OJnILdbxsr5RWlalVl7sMrgkpQ9m8d6NacbM3GCUh
         w4ekYJOJj59147rTxyuwN/TeN78SrdUD4uvo1uYIl6d38ffMseegvAqU193DjQBX/jAQ
         eI/o0+zUymRTKxvxyLu+Ze4alNsiixLZump8v+f5D5DASFgyvNZJPyicRF2SCqvAA7LI
         2GBMMSOLmgcs6fxw0q2wzlW+fgWSpsg+lYo4Jn4x3Eboi6YtkmH7gbFHePhSU6RNtKlV
         r2JjHTi1vB87EhEdJumTTSQCjOPBggZ2kXZedBfkQ5l9fxOEuOXLV8lQmG6ljYA9w2Yx
         l4WQ==
X-Gm-Message-State: AFqh2kqR1QY8pGMNQZXPw4NA5/g5oTlf5RKMGAHRA+gptrjjj95AIkOM
	0g8Qn48qs+tVXme3gXL79Oe1kOAd1rpynBYd/MjBtOSbYjHrLPE7da6nwCV+BO/vZ9mHB4wdNtq
	+42vR8POPrbWwrMZleY9RUj6UEBBieREr
X-Received: by 2002:a05:600c:d2:b0:3d2:2b70:f2fd with SMTP id u18-20020a05600c00d200b003d22b70f2fdmr29035356wmm.21.1672652695632;
        Mon, 02 Jan 2023 01:44:55 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvGGW0J+6nq6DUxW1h2xRC/i7kscSszFCvw0h/Drz9ysxqRksonNdlBfYAtcIGbHZBQsbKS3Q==
X-Received: by 2002:a05:600c:d2:b0:3d2:2b70:f2fd with SMTP id u18-20020a05600c00d200b003d22b70f2fdmr29035334wmm.21.1672652695377;
        Mon, 02 Jan 2023 01:44:55 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m8-20020a05600c4f4800b003cfaae07f68sm44938241wmq.17.2023.01.02.01.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 01:44:54 -0800 (PST)
Message-ID: <c0c5b5ac-821c-1277-a2f1-d896a6ed680b@redhat.com>
Date: Mon, 2 Jan 2023 10:44:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 0/4] Add PinePhone Pro display support
To: Pavel Machek <pavel@ucw.cz>
Cc: Neal Gompa <ngompa13@gmail.com>, dri-devel@lists.freedesktop.org,
 Martijn Braam <martijn@brixit.nl>, Caleb Connolly <kc@postmarketos.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
 Sam Ravnborg <sam@ravnborg.org>, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 Robert Mader <robert.mader@posteo.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
 linux-kernel@vger.kernel.org, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20221230113155.3430142-1-javierm@redhat.com>
 <Y7H5UJOz/zYuZn7j@duo.ucw.cz>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <Y7H5UJOz/zYuZn7j@duo.ucw.cz>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_014504_941164_58DC8D24 
X-CRM114-Status: GOOD (  17.18  )
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

Hello Pavel,

On 1/1/23 22:21, Pavel Machek wrote:
> Hi!
> 
>> This series add support for the display present in the PinePhone Pro.
>>
>> Patch #1 adds a driver for panels using the Himax HX8394 panel controller,
>> such as the HSD060BHW4 720x1440 TFT LCD panel present in the PinePhone Pro.
>>
>> Patch #2 adds a devicetree binding schema for this driver and patch #3 adds
>> an entry for the driver in the MAINTAINERS file.
>>
>> Finally patch #4 adds the needed devicetree nodes in the PinePhone Pro DTS,
>> to enable both the display and the touchscreen. This makes the upstream DTS
>> much more usable and will allow for example to enable support for the phone
>> in the Fedora distribution.
> 
> Thanks for the series. Please cc: phone-devel@vger.kernel.org with
> future patches.
>

Sure, I will.
 
> Best regards,
> 								Pavel

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
