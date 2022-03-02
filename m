Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC812C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr7knlaZgZ0jOr0V+IRbJstJ3DDtS5MQvRsoSBmE4pI=; b=W4UjQFJ/vctPfF
	4CLH6xzJg0WgBt3vCA3lFA14G0iEzQJTY5JjFvloHs5eLcNOVd2dGvxNS+K9878qQRDQGTP1sffqb
	qGDCg9iC9EYcRuGwvTiwn9A/YA8laGRxTtx6srh4JC0Z/DUnrK8g3NyWo5Ic7d46EHv2hOyDffAwA
	0sv0iXUi62zrCEvhF/6he3RJzQO9NyqALRKJslAEa/qYguieqH0EQNj7HJX/o71UQONcm/Rzy9SUu
	ngyMoAAWeyrOOPnN4VViX4+eza3C/dcxlGof2WHyvaIifwZjD/h6k9YxqoCoQ4FDQjH/KGrRNqQKL
	jO73KPp6GIaIxvO5QQSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPLax-0027R1-DM; Wed, 02 Mar 2022 09:48:31 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPLaW-0027DK-O9
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 09:48:06 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C69AF3F5FC
 for <linux-rockchip@lists.infradead.org>; Wed,  2 Mar 2022 09:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646214481;
 bh=YDwov9hZPxOfFvFJ4bntrUYDDCSZQA6/kiFH4/f2u8U=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=oW+MLeH+5MiEoJ9EwmsmITjBaYKLXOitg5vsAqS+CDUotgfmF2638wYdqe0zUp8Tu
 KTBjK850fK7tKiAczcIkuv7tuQXTIF4huOi5L4vK8skKCyrcCjhZarp7DrpDsOvJFS
 5WfIp2twII9Q1+2u2Ml+VaQXzUj+XppWW3XgaVVuO9ysI7fY8Jgd+7bKHmFnALzQyu
 dM6SwS5I6c906GEhuumC+VfPaRYZDI1S3uWK+EKnzW9TlvBy93z+9Uu9So7edLvzWS
 Lwg1dAjnEgJI6TYAbfKA+o6bkVKON33/xTSWT3QnEDBp72VLwXkHh0yqA4antwlgoe
 3A9vGBgWK7CEA==
Received: by mail-ed1-f70.google.com with SMTP id
 z24-20020a50cd18000000b00414d5314c35so663017edi.21
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 01:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YDwov9hZPxOfFvFJ4bntrUYDDCSZQA6/kiFH4/f2u8U=;
 b=QSy1n3BHr8gIwteO4BtDfSQWnGNfZYiYMRdLK0yHkQO8rtwxYrf7dGM4mPC0rFh0Ug
 Wjz5EsTPfzaX5d8Nmr0wgyS9+VDvxV1DnZw5V+13jQS54YCgsd59F32qhazYRfUW/zIa
 q9L/+Sg7+OJC0HC66ansfSkwz3VEQHluNopaHHgDN4/IlP6UqNb0JhFuyycp9g/5/B9G
 ohs86O4OrT9hOpfQ9BuH8pNI+FoFTmt+eAZ8iwZZHoOh80IBUtS2WKkUJIk+w8mnE7ET
 iioGaZ9D5R1OLk9zrKzCMdaGm5t12elztPnGQaS2VlWC678fvJeGGtAMGwtgYhxG70kp
 Bn3Q==
X-Gm-Message-State: AOAM533WRHC+UCvhlBu0a7NAH4CgRFz/l6Y6Oo+Ub22g51Jc9DAGCMOY
 t4UCyFWTXbP7Tavy8zGxh5SAecY1g8moOhj1vzlgStA4fuZz/BeeNxgTOf/VeM8k2DRLEo1EdhG
 DMawP3CARIoJRu+MDXq3Rw6nXBJDnvsOx+9m5mfnmNBTYwxxktg==
X-Received: by 2002:a17:906:b2c6:b0:6cf:e599:6b81 with SMTP id
 cf6-20020a170906b2c600b006cfe5996b81mr21825567ejb.578.1646214480097; 
 Wed, 02 Mar 2022 01:48:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwO8JN6K/qUNTGO/ulb3ap2nw6FIqgubS/vcKSkfPUzgYCmSRSQ7dXnf8ZAZnCeWE8ssUrhNA==
X-Received: by 2002:a17:906:b2c6:b0:6cf:e599:6b81 with SMTP id
 cf6-20020a170906b2c600b006cfe5996b81mr21825547ejb.578.1646214479935; 
 Wed, 02 Mar 2022 01:47:59 -0800 (PST)
Received: from [192.168.0.136] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 si13-20020a170906cecd00b006cded0c5ee2sm6241313ejb.61.2022.03.02.01.47.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 01:47:59 -0800 (PST)
Message-ID: <cb654f98-3b4f-0b1c-77e6-22fe03bbed85@canonical.com>
Date: Wed, 2 Mar 2022 10:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 4/5] dt-bindings: Add rk3568-dwc3-ahci compatible
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-5-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220301152421.57281-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_014804_982728_56940561 
X-CRM114-Status: GOOD (  12.44  )
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

On 01/03/2022 16:24, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add SoC specific compatible for rk3568 ahci controller
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v4: new Patch
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Here and in previous bindings patches - you have wrong subject. I
already said it with v3. I gave you exact subject prefix to use.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
