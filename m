Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66176C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 11:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/GrC8hY9DrwHv1HCVoKo/aTvp0VKUcCdgb4C6HMvio=; b=FjOClSLxfauRmp
	uRXq8IeC3ZuQH5cGS2BlhlB7xFjn/PhUYBCqqSAfnp/lBkSDiHswwfi2piC1VqXCS2ImibZGldPlL
	9DtIZY2A69cWM9GBjlGHd9p+ikmEplI3eJewfp5fM3BmCXsZ+S1is9cEhh1WNIhkxxRS0j6e9fzmi
	m7Cghi6gRPHIEg1xMUrVh2JOagOUmy2zC22Zy4ioisn8ZC8VufQdZgBz7jcIsmf+SivffA+U74B4t
	InDWjVOwq62qO0N8rsR8AtVqSgzapQbqcxklrOmEzAYvPLRxnxqOaBZ+5BttAaFQ12SmPBEHmXgry
	CX9caIvEHSDO3trr6Mfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPMiS-002MWY-QT; Wed, 02 Mar 2022 11:00:20 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPMiG-002MTf-8h
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 11:00:10 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7CB593F611
 for <linux-rockchip@lists.infradead.org>; Wed,  2 Mar 2022 11:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646218800;
 bh=fYiIm7cAYvvcwgs5d23+mNowBlqk+U3OOhYGtWE4nhQ=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=YLHxUnq8Pxh85hLX6lQhCJzzIB9+00Q5mCtP0UVUXZ3TgExTptykYTeqvES8IlOkt
 2FdYyxnU14uwOx6TwwJYXCvUfFGy/HVwFDeQ6+JEd0AuDWehut7308tm62lIh6wL9U
 xEj284NqESLWBawV4R2ct19lVf89D5IAKhLoz/I/mB7mW09tIOvax5CScMn0bwg7LO
 2QCiX787NUSp0Lozv8qPsBEnxz0ZYm4BsocJFI2JKEU2tUrs1kGWCWuMnCymtC1sxY
 gJ+3bvqn6OBp9W+zseKrazY4QH2E6MKAXNJu035e2G8YvJ56C/UR9Emq8D5kdCZCe+
 O8TJOGNcIbySg==
Received: by mail-ed1-f72.google.com with SMTP id
 l14-20020aa7cace000000b003f7f8e1cbbdso761724edt.20
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 03:00:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fYiIm7cAYvvcwgs5d23+mNowBlqk+U3OOhYGtWE4nhQ=;
 b=a6+/CZ6Ei85yytPrr1uTelfaOCQNRhbHzeDXijaQR1FgLdzHjiTbECnLEeteeIMixI
 z7VbrBQy/pXNW2qieBF9Ibtc6sRXHUuQhifU2ECyg6mmi/0q1qH2IYOmKsrwmwBnKApP
 Bo8+BVbdfofMfoIDh4DzUsvPcXvyROpBNNEpGyk6x9IbMv0rt44NP/PeK4e9I19qcCw9
 lVboOgHzAbIgwQXTJUBl1zaVUAdjvNGn8UgMK4pkiWNfmePnRsBTTRbpYnrrWugC4rah
 maA45mtQtO0J+YQuG/aLhpBNTHWSRcdx5/BWtN0IXK/T1ssNFdOEgmS5RWVPlaMB5laG
 kLGg==
X-Gm-Message-State: AOAM530k3uteg2eehChl0yCfxUnefzmtRnvES/IkCy2iW20oq/ln08YW
 jlXVtCuLfL7TrvF8QNvP55xgQyBCmkw0pWNXEH6579vPd5CLLXmeE/NDQZhsetgrOdzbNcbf6D0
 qQsShXynXqD77oh1tNcyP7Ax/yVAbk6b4ekT21OFA0gcceL5m2A==
X-Received: by 2002:a17:906:af79:b0:6cf:6b3f:5b3b with SMTP id
 os25-20020a170906af7900b006cf6b3f5b3bmr22477698ejb.14.1646218800087; 
 Wed, 02 Mar 2022 03:00:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwERV6fTesKj9iO1fvVCbS8f7t6+HOQi7nNSbBRmJKjBddmSjWjb4ufnflgk2FauT1UX0gr+w==
X-Received: by 2002:a17:906:af79:b0:6cf:6b3f:5b3b with SMTP id
 os25-20020a170906af7900b006cf6b3f5b3bmr22477682ejb.14.1646218799941; 
 Wed, 02 Mar 2022 02:59:59 -0800 (PST)
Received: from [192.168.0.136] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 ey10-20020a1709070b8a00b006d1cb2eb221sm6274372ejc.170.2022.03.02.02.59.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 02:59:59 -0800 (PST)
Message-ID: <468d1c64-b954-dcdf-6660-74f51e29807c@canonical.com>
Date: Wed, 2 Mar 2022 11:59:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
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
 <20220301152421.57281-2-linux@fw-web.de>
 <6dae47c3-6083-782e-ecab-7be3f0bca0e1@canonical.com>
 <trinity-80a229fb-42dd-4705-9c55-fe6f3a381a40-1646217098213@3c-app-gmx-bap21>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-80a229fb-42dd-4705-9c55-fe6f3a381a40-1646217098213@3c-app-gmx-bap21>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_030008_540651_E8B8678A 
X-CRM114-Status: GOOD (  10.14  )
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

On 02/03/2022 11:31, Frank Wunderlich wrote:
> 
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +    #include <dt-bindings/clock/berlin2q.h>
>>> +    sata@f7e90000 {
>>> +            compatible = "marvell,berlin2q-ahci", "generic-ahci";
>>> +            reg = <0xe90000 0x1000>;
>>
>> You still have wrong address.
> 
> only took the example from the txt, but i guess reg should be <0xf7e90000 0x1000>; ?
> 

Yes.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
