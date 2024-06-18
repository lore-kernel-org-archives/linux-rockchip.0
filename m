Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F33EC27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 08:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5kztgRzWkNR0X7xkNl4EMMwNgNtWAQSkn7JT9Te1F0=; b=McPv4n9w2/bP/t
	OSH6PLEG3sSuHPudzjXf4HB2NS0d1MmTxIQdiIlLiOGigQBuJcEYZJwqBPPdO1S5rrvSfjSWW3sGx
	9x1gnSj3NMJnZDAYqV7zzn1fls8zPHQRO0cdvqLlg8apbY5hYkXvUojxTOraYy790jwWTO/zmkzJx
	dkKI9MG4Xx3p9wJPJ2i5jjAZOXVTbkF60uSVIckmK5fteWw4IvA8r/hygJrai6/yOrXmCgIxLkI3u
	pCLgaZOaeHy1a1bP7/QapzijkcP9Sx+X/EhV4kP/LKaUpCCUZIS6FpV+YffHPVSm/YP81KDQOgAgr
	kLidex/WTd5HoaHEU0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJUCX-0000000E4ow-0ZsE;
	Tue, 18 Jun 2024 08:28:25 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJUCT-0000000E4o4-3iyt
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 08:28:23 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a6f85f82ffeso228381466b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2024 01:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718699297; x=1719304097; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rLTxPv/nsWe7Zfu/tZSlFHX0jN4s9uxiYT3UOnjGPnE=;
        b=TPVjIG/9zOEHBcGWHQwbAkeM8rJWRqG4vXHtx6nNKpHsr9ij1Qv7DdMZ3VmslvPwOr
         TEnUBbb4fa4fp4xPZuQNaNs/YeNqWBnkvHwWXwCZ/TVD7rCFKvAQ6Q7GTLZkAZ387WOB
         WYRSOLkr3WCSYKXFp6pmLPszPiMAu0+lyiur3xBnIepwEQwV/cIrI6UzlFgs+hZOCLZp
         I8ql/3vcvKWLFdpaQrtkKmuPjN6+Q99M1MErPzuao/Ig/jbNHebwLVX+0cmDZpTRpIyX
         vwVX3FyRAQER9PEbn3idIuU1FS0P3PBIAE027lAon9te5ug3UTAPb18bTD4hukyV8Z2m
         cMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718699297; x=1719304097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rLTxPv/nsWe7Zfu/tZSlFHX0jN4s9uxiYT3UOnjGPnE=;
        b=s+gfquA6DfxFg02OdAjoszRgEDKH5r3nPWnMcdDQuJixPm8murqXenpENeEZHvSWSI
         Lfy8VyZ3TreOorbjiP3q+FWgXnw9C2Gt7aZpWFF4v3QPYtx5xiqMuWDHnmHTpaxIumNz
         7IXkrnHNF8pXeuAfrYpANZck+bfUhgqQ9LtpVFm9CndA7zH47WquymWszwlW1cg67t46
         7Cg9dCskHG+oWRiJcGol3OlnrEApemHbxwvAyG5+tgJHtWwWphQzX5VKUYMyYoLH3Ajv
         Qe6JsNS+vDD488Vrpnng8ZvKNqIfDFMjDeN9uL3ISEiJORLGJIgqSMxq+0B+eIfT1Ja0
         fzxw==
X-Forwarded-Encrypted: i=1; AJvYcCX0JNYCV0cS7SIu17mMYM8zA65mVdDqZXq4JNw/PhEInVjYPs5FI2o5rZb77snVtSRVR6ooAYl7dWPSjYXjCzt+0m8s6MNpLuuT7MotyrCmDhWB
X-Gm-Message-State: AOJu0Yy3ooaHz26Cvq3KKUJhb9B729qZ1T2iBJbarbTN8o4acMB2Sxbw
	qGwy1KbzHMdICbvcdVdqZX1NH82pAqITY2/KsXJ+nnqgRUvafZM=
X-Google-Smtp-Source: AGHT+IHte2kNPklKy0uooT0+VxtXAAzQyiEKdtDQzWdgV/PwLMIcBTFXQgeo3rhoneTxxDcXK0uRew==
X-Received: by 2002:a17:906:5da:b0:a6f:5dfa:b27a with SMTP id a640c23a62f3a-a6f60d402b1mr699663966b.35.1718699296129;
        Tue, 18 Jun 2024 01:28:16 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:e5d5:17e7:54e8:5475? ([2a02:810b:f40:4600:e5d5:17e7:54e8:5475])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f99a09fe8sm47580966b.9.2024.06.18.01.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 01:28:15 -0700 (PDT)
Message-ID: <2e98128f-39f8-4800-91f6-c1cfa21fa0a6@gmail.com>
Date: Tue, 18 Jun 2024 10:28:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] media: hantro: Add RK3588 VEPU121
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, frattaroli.nicolas@gmail.com,
 heiko@sntech.de, kernel@collabora.com, krzk+dt@kernel.org,
 linkmauve@linkmauve.fr, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, robh@kernel.org
References: <20240613135034.31684-5-sebastian.reichel@collabora.com>
 <20240617025022.25122-1-liujianfeng1994@gmail.com>
 <o6iccgurpi7sraq7plxaccz37i44te4jaqicnp2nqbke2qtskh@4kboulg3zywx>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <o6iccgurpi7sraq7plxaccz37i44te4jaqicnp2nqbke2qtskh@4kboulg3zywx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_012821_963277_3D133B72 
X-CRM114-Status: GOOD (  11.62  )
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

Am 17.06.24 um 13:30 schrieb Sebastian Reichel:
> Hi,
> 
> On Mon, Jun 17, 2024 at 10:50:22AM GMT, Jianfeng Liu wrote:
>> Hi Sebastian,
>>
>> Thu, 13 Jun 2024 15:48:45 +0200, Sebastian Reichel wrote:
>>> +	{ .compatible = "rockchip,rk3588-vepu121", .data = &rk3568_vpu_variant, },
>>
>> rk3568_vpu_variant is decoder's data, typo?
> 
> See first sentence of the commit message.
> 
I think, what Jianfeng meant, is that you are incorrectly using
rk3568_vpu_variant for the newly added "rockchip,rk3588-vepu121"
compatible: rk3568_vpu_variant is for the decoder (confusing, I know:
should actually be rk3568_vdpu_variant) - you want to use
rk3568_vepu_variant instead for it instead.

Alex
> -- Sebastian.
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
