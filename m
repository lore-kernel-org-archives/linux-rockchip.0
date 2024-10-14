Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270D1D18131
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 17:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKl2Rt4SwZKpsPUru+9ctc6o1cwRyijTUkkwzG7MN8Q=; b=EBFlXHnDBAl2d8
	J+xu+ytwTF+c4xq7X+NuINud/BOkHNyxODbmJTRSlT64pXsXWNlMOVteEwQcxzEnU2Lc4p0hWLxay
	S+6j25jZg5B6rzastvNm2qtyl3B93zrup9wNeTesLlfVszoSjBMhWTu7NfFEtDdibG4Ycbq00GOnS
	KSr2OZck0b0+uwI8XYHJBy4SluPMZH5SJDIVSUU1EjRsczzkVjjb37Lic3FIME1//+zFx5CFgsb48
	KiB1RQHGSBxFrNGQxhozc6QmTjhkCaIThAbUDe5ZnSk/nlvopF0Fks7XpG83cnxaIkBciM0dCwUbp
	CNtbltMXL5hZXW62gtew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Oa7-00000005zZe-33AR;
	Mon, 14 Oct 2024 17:10:07 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0OWc-00000005yQ0-2ZWu;
	Mon, 14 Oct 2024 17:06:31 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-37d58377339so3290549f8f.1;
        Mon, 14 Oct 2024 10:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728925588; x=1729530388; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rmj5wqoQXUBwHs0IOpYFvV74qYSXZb3xJuEp56/YMRI=;
        b=CDO90nfHGt4+/oHLIwZvPGzRDG4cqytzeKsaTqavbma3wThmp7KYm0W+xv1qAce1en
         s6ZwNUFAEjvBG/YyDdX362/EEJ9usOfV18stUKBjXxuI+L6wvJR+1ErQfEwILpxRPWRs
         Bn7Rd1ykg8XDfUYEJRM2mfZx4ghwn5e16roqH74K4T2GkvpQos4ajEXaWZaO69qlaVAQ
         UCufcikmvOWXu8AfobrihErE6+A0itPp9hciZmtuiyGBuqz/ehoNDbPxehvYWM7eSKhZ
         11ke9lhtT0wiD2EWUxUyehmXgN1hdFwvtfnmT0BqpFiHGY8e85uYg8kaNPu/wfPuoWJO
         6o2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728925588; x=1729530388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rmj5wqoQXUBwHs0IOpYFvV74qYSXZb3xJuEp56/YMRI=;
        b=t6PalBAD6fwduG66vkjh6Qd2U78JeLLieOvhdEWF93zJs9tEziYuhW+76UTQvOBcfA
         U+3IgZXJYUoLQaTxFox5nRArAhsWIxx7h6VDqDVt5us93spWBVdmQo+bM6j38yJ7YIsl
         7p18Blfl6a4BsWo6Zg94BUWsf+vyZHcBt1Y+aSylOHbBtP+wlybMR8Sa5LO7v+gyegR4
         8bx5czR4Vd2rxT44EDp2hUtMJ66ntTvgUzXyHjh98z92DA1ZdmuyO0/D9dp1/8uoKmCV
         BrBDJZlC12EEmFApWtEOngYvVRKd0pPIifjs9awW+e4rZQYe6WrpWTxDJZVoTPQd2E3u
         2x7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZPZdavOziZJl4EcJvAIFarJXHx34bu5u0/wRr0eq1m69SYqjOAYdlOtWsatIJ+Gye2i8fvToPA7xWaYVmXVc=@lists.infradead.org, AJvYcCXmZ7oTbJBryEafCcTn5ja5NFN+4kwXulRs5pO1SnR7ollnPsKe9XQPEYUQyPdSjF/li69/C62gQFXAheaLefEb@lists.infradead.org
X-Gm-Message-State: AOJu0YwvXzO9mLuoJHqhJlsRfSrSK+KodaZYoZRYMIVNxFqB2R5NGrDO
	k1OgO4Eqa1B2iH35v4pNbJSJey7rqpd4yceKghfDGEqcYcgjpb+j0koKn9ztS492nMz021u9OS9
	kE/xPequdI1w7LD/u0t/DKjKHPE4=
X-Google-Smtp-Source: AGHT+IEnFBWqjIOaGaZbba4zXDyEvBojrp8MCtPj5r2Zz8Cpo7iDNvO9gYkZEdez0FW0jPJ2gr8hJaZxyWKJkHBNtJw=
X-Received: by 2002:adf:b359:0:b0:37d:4c40:699 with SMTP id
 ffacd0b85a97d-37d5ff25593mr8736543f8f.5.1728925588008; Mon, 14 Oct 2024
 10:06:28 -0700 (PDT)
MIME-Version: 1.0
References: <20241014113026.78853-1-cenk.uluisik@googlemail.com> <20241014113026.78853-2-cenk.uluisik@googlemail.com>
In-Reply-To: <20241014113026.78853-2-cenk.uluisik@googlemail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 14 Oct 2024 12:06:17 -0500
Message-ID: <CALWfF7+DzqYYPZAE4zGMX3jUnbzG+tUEuAJeMQM0_Chn_Vq04w@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum
 to Orange Pi 5 entry
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>, 
	Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jing Luo <jing@jing.rocks>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_100630_675617_EDD27918 
X-CRM114-Status: GOOD (  10.26  )
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

> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 687823e58c22..62bb6587da8f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1051,7 +1051,9 @@ properties:
>
>        - description: Xunlong Orange Pi 5
>          items:
> -          - const: xunlong,orangepi-5
> +          - enum:
> +              - xunlong,orangepi-5
> +              - xunlong,orangepi-5b
>            - const: rockchip,rk3588s

As Krzysztof mentioned in v3. The binding commit should come before
the devicetree commit. You'll want to reorder your commits. Otherwise,
if you git bisect, you can get an error with only the devicetree
updates without the changes to the bindings.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
