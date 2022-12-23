Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02F5C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7I7vGzwT3HcXE5e7foPpMuSDZG6sQJvy5m3Cb+JGqI=; b=L4Qz8Y5ZstRdRe
	5pS8u7cTNqvoCMjReCt+IjWgOR26wa+hxSEEV1au5To0OPvE1jFODMJJtoLhWvPoE8yIc+BcEqCUU
	ItHwwf8eLrzFquQyDqpEzA6Z+7mypAeT6kP6PX5fdePROeuJ6i8YdjR/Zb1HNmD945YF7qk5IKEW/
	jI8oCNp7RO4USMeMSOII1u8DZaBTLtebA2p7GvcMJ7wDJ1jdTJeHCkM64kEq6VPu4bKXyBK9uLfU5
	xuRZdnRHO36ZEMk4cLkKFHzxSEI+SMvNER8nkYqGdqxoemPk3OxGe1hdb+sL9YqfNhZuZkjbc1TvN
	E7lHvI30H2A1SKvSiynQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8daD-005H6a-TE; Fri, 23 Dec 2022 08:39:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8dZh-005Gs5-HA
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 08:38:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1671784718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cZaM5RaawEocKEQbKOSqiq42IHOql7KbQpJo4YjSpeA=;
	b=eZLEGSh26G/XMRjRdB5QrfbcpUNDwxnyOLAYnrNxvOz2UZtjGBqR9n/XN4elwPam6fnrOf
	HHzOacpGUX6FfO6xQX/o5a12bytkfTBW/vsqvXQjL0AilnI147TF3E1aOHLxsc/3PYzIZh
	ngkWr/KUKLvW5MfGHStkJOyDeloVkKc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-44-V1iuuBEZMNuE-f_h8J6OGg-1; Fri, 23 Dec 2022 03:38:36 -0500
X-MC-Unique: V1iuuBEZMNuE-f_h8J6OGg-1
Received: by mail-wm1-f71.google.com with SMTP id j2-20020a05600c1c0200b003cf7397fc9bso1925994wms.5
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 00:38:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cZaM5RaawEocKEQbKOSqiq42IHOql7KbQpJo4YjSpeA=;
        b=Aq84OLp7MrvEbc/swQ2xVULsIVUZJajAD3ux1xtU+8t+f+JOjjYCW5Bvvzp1E0xZm0
         0WFzbKGsehplsYFUgD5iuKiY2wj2MLb1za4MOW2b26e5Bht1Kem2zGzlZTHsxchQr2ca
         MBRZAywln1NcOYQr2rAcXJXE9bRbyHm3J3awU2ZHZdA/IdPf2aAtDsqRY0xYjjWHQBB8
         icSoQYGYNcdmg/vyFhhCGQBpeQuTcFimY1asHjt9z7EFPG1SVESKLbTwUeeQhc9qDe9J
         LbCbJ0U4gsgMkgIqdIAd41QoOBcXQks5iCsvBnOc7hRFYqaNpIRIImjNnZtzH+jIcNlQ
         /fTQ==
X-Gm-Message-State: AFqh2kqeAJ4DN0SkjYpS5zJUYk1IlMynocqBnjEqRqQQfxVF3admjGrr
	4M0bQyF3EK7Jl58t5zs7rIZU4HMuVPOOgQvwynoqTWnJ/7KpqOeOys5k7zubHTcwhXb8/1p0q6i
	1nN5zXKKOiAgsuxIrBADMVun/GYJa0KRg
X-Received: by 2002:a05:600c:22c4:b0:3cf:8ed7:712d with SMTP id 4-20020a05600c22c400b003cf8ed7712dmr9226052wmg.14.1671784715688;
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuHR0lUeavKdI1qt8CqUCBjmUtjFYm6N205U+J8Kt1KyzbAi6jBgUST6zdEQwLA+dJN6GrcCQ==
X-Received: by 2002:a05:600c:22c4:b0:3cf:8ed7:712d with SMTP id 4-20020a05600c22c400b003cf8ed7712dmr9226037wmg.14.1671784715464;
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m22-20020a05600c161600b003cfa622a18asm8000118wmn.3.2022.12.23.00.38.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:38:35 -0800 (PST)
Message-ID: <ad8acc7d-7f23-2ab3-bd1d-445d6e5f74fb@redhat.com>
Date: Fri, 23 Dec 2022 09:38:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
 Robert Mader <robert.mader@posteo.de>, Peter Robinson
 <pbrobinson@gmail.com>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
 Martijn Braam <martijn@brixit.nl>, Caleb Connolly <kc@postmarketos.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
 <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_003841_764000_965699A9 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
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

Hello Maya,

On 12/22/22 23:57, Maya Matuszczyk wrote:
> Nice to see Pinephone Pro getting worked on.
>

Appreciate your feedback.

I agree with all your comments. Was too focused on the panel driver and didn't
pay that much attention to the DTS snippets. I'll clean these up on v2. Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
