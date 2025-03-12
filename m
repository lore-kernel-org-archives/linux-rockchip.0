Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D184AC28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 12:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ojy7r1tGYcg/250vhNRuNNc9JNtNHCy1m1Su+b1/5CQ=; b=PWEulMF8APO/GI
	DDjHqSyhhNoojIiwTFlOSbG5ia/9izLJlbxTKS6v1t8eVVwyy9t6CcnhS8ZyOfUXCeDAWxGPEM33d
	UzDWXe91LJIEcO7Ul05McItr46NsowwtfJw0aT6PHDGQdqZuGbfh8v37zGilYBkykT8wFjfbRKWww
	fZDjw6rXNWM8Hrd+7/UkH4gk9/hfHwglnrdgX0M7yr/4n6sXAsA83PlsTjdHoYG74KQtW+5fEjGBN
	MF5y4Rx2QvoLlk0fu1UFxaSyZ/oKTPHQgygvSAxpm1+XFK08St+l4XhCHDrKkSq9KZWH2jspP5JmG
	8a/rkeCb1eF1Li+iLrSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL2R-00000008No2-0UsN;
	Wed, 12 Mar 2025 12:18:19 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKDI-00000008FQE-3miD
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 11:25:29 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6febf391132so52011417b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 04:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778728; x=1742383528; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dadpUZC9V5c7MYnunblVKwFOdnOlHudqlcLRPnjOYeA=;
        b=H2pnEBYe7DVOcLG7dZpvI97VwjWWuJrlPfaQenP6tJTw5UnSWcbO2YeHmcQT5Ww0KN
         tWO43kYXXG0ZaykcTpKTD9G0kuyOOVQcC8zcplgE1KVOEQJzO08x4f20GUYbv0xtz4LF
         Yeay4MYBxooxh+b1+vxF34qKl51W9qCglL2WtKPd103dHCXkjzdfOFUrv1J3gu/c6RjG
         A7aZc21btInXwB6xLsZ06KOHfNcaPYlsXTErIttRqPOEPp9Qf0I3ltch6XGTU/Gyuu4l
         VyleefEqTbYOxYttQmm56ciiGWcSPWRD5EWEpbZwROiqplSe5CDqu6yP7MOHC/8Ta7+y
         TTWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778728; x=1742383528;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dadpUZC9V5c7MYnunblVKwFOdnOlHudqlcLRPnjOYeA=;
        b=Dq5uw4YB4lZ4F7CRL78jvxbSyfYN51/Cva2pBR4L1grXvk5bV6ql2qZ/4p2M0udNPy
         Qa2xHxQKsyXhSJj/VIj3qDThhqR3fe3xC5nComHdO0tQZ3CqfTgdEBFL+nVkcqLjITTY
         q4F2O5OIgdvwrN8RYQba3sGaszKoL33D/v/jLVP93Iyf9/mB2gDk1ie5sJJNoUFbB0vz
         aPskS7GqMLmNt1+8z4Sc5QiOFbn0tFlpV1A/10VdyknHu4BwFvGAERTLXikkIvMoVwRE
         WkcmzlYgNAwcIXu8uBQavNGBfbsCqz8bjJ87ulQt3PR7u1yibPrh3/wiQj4421ofuZqo
         Esug==
X-Forwarded-Encrypted: i=1; AJvYcCVKm9sMe4GV1sIzIvGKLHaezq+1oWa/Ji5ywp8CVDu5eI3JW7k5Gn6SUmJ+YUcNBnHf2TmuWBviBdmBwXsUSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxlVUDHPJHhzMwMaVTaQhiqeYtzBgARbLMjeEz0x11biP3uRwfr
	Y/JrOnFgbQKbdxWjYI8Fromfl+KyghbEv/pp+SrBYbspDn8A4HhGiZADi5ckPOz/TPpmJixyEpz
	ESvHweezJCluilAiuxtEixVqHBN3hQ/ArIJr6ZQ==
X-Gm-Gg: ASbGncs7G7EYe9gmGgPdRXeizeSczafVoHFhWRJsDri+iDP0ydB9SB/Qk7xwCUylNrl
	eh9GXwTu0i4gxn8ocvccSqBvSXle1B3qyfQi1XfMaX8IEEvEOuggp6lElwttvNGH6Y44oiz1ODX
	jpHmMvpPdx/xZl60isi5YHMD5Q1es=
X-Google-Smtp-Source: AGHT+IEkegzJ/XAYlghTUeG+wVwA3ds93Wxe6yvoeV0jHqydpXmTqXQvt4bDvlouPz1OikUEEzcCwOPsAA9n/cL6aTA=
X-Received: by 2002:a05:690c:3802:b0:6fb:4c11:61cf with SMTP id
 00721157ae682-6febf2e67e6mr312924957b3.19.1741778728184; Wed, 12 Mar 2025
 04:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250309055348.9299-1-ziyao@disroot.org> <20250309055348.9299-2-ziyao@disroot.org>
In-Reply-To: <20250309055348.9299-2-ziyao@disroot.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:52 +0100
X-Gm-Features: AQ5f1JoG4yNR3eqoseTNZhzIg7tVbmXvgNO4DfacKMnpZftoLIoMXOX2r6zD6_U
Message-ID: <CAPDyKFp2UzcxfFz=8sREkj3x4DvfkfxU3utc0+e+uPS78Tn-+g@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: mmc: rockchip-dw-mshc: Add compatible
 string for RK3528
To: Yao Zi <ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042528_939350_91D26773 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Jonas Karlman <jonas@kwiboo.se>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 9 Mar 2025 at 06:54, Yao Zi <ziyao@disroot.org> wrote:
>
> Add RK3528 compatible string for SD/SDIO interface.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 06df1269f247..ea0feb733e32 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3528-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
> --
> 2.48.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
