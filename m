Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C25EC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 18:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePFmizHxxAdJ/ydYss/7bPoAbhYxwAoocY5+47sOMks=; b=AB5B1kYwFqnQ7x
	b15SJ0gYYZt2IjCeJKyMMc5nPaChvt8DlmeAOPDfmT+vBOyAegBuyoHPrJkC0yfWjVA2RG7WINCxK
	Wd1jXEj1ITaQiKAKPFrprQSjMLhFTLMwx67zxj41lCUH+tL8pVnF3Y8LdfKm3EeiGwTR3iCt3R/c/
	/jx+bxkIKKI0YfqsoCcI2o11Rak/DdY2lTbNxGbwHCbquG0qvROqbW1qPHm8dQUBZRjkOAGgI3Wg+
	8BOv+e6in7ASAkm1b0yBcYCbzDbuRgPVFb30pB8l/0pRIE900iIScjXb7kEngoNNDUSTA/E1z8eX3
	dPlb87ETXvpiBA1ZCO+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQCcl-00DnBH-A5; Mon, 22 Aug 2022 18:58:11 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQCcZ-00Dn6m-0Z
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 18:58:01 +0000
Received: by mail-oi1-x22b.google.com with SMTP id o184so13275372oif.13
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 11:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=sx+UyfDWZj9lJoQgaGCVUpt7c9rW+3UXXFU2teNnr+s=;
        b=i/Bt7QN1Iml/UvONpD1gU8CUu+5EFH2d30OyL8Oq8NZw5oZbXgC/7+WzwWJMELOE2C
         C9Nj5VCS9TGZ6MS3y17fbjtsOmBq3f+yICabfF5/i2koXeKBIJeKf5porFUTDgkRN0l3
         5utqin9WpQcztPEQX+oiBX1m6x+C1PnQrZaDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=sx+UyfDWZj9lJoQgaGCVUpt7c9rW+3UXXFU2teNnr+s=;
        b=ehQEo5yePcRJ0VOG2I+PIzUT0IlvBMWRPd4VYHiHHJBlX0jx994M27UgQ+ZLgy49T0
         oGoNN7bvuFMcMtX9vHnLWUD1Ai+zHAYu4JngzP564RWzfTwy1hxg8p6DG1huuPx6C8Iz
         Vj/2JKuOwkUqRRvjnntO29ZQZrjGDDEa6pjGYqWLg1POqM9CBG/h+j4H6C218241/7XF
         V+wLfkV1vSB5NQKktVFIbK3dmO/25OmAtsum2xvyN8x8hcsviebDj0BppMOOn0eguzFG
         sxHMOkWiQAvkH2Ymlkbz39K0G7g7UbiakbUtHAdA2fwSFXumpCBvQRbqFdkeMVabbdge
         bGMw==
X-Gm-Message-State: ACgBeo0VSyLDta4k7R5zz1XbxxwpgyowuHhRgkKDLWYqZIU4Y7cafAQ9
	/n0GjpJLV/A762icpVFrtaU1M3kUHQ4uiA==
X-Google-Smtp-Source: AA6agR6b/q8hj+Tedxe8Hh1imU/+EA9tGYiNdwYoCnsrs2NxsDb6va5dMlMOaiUAYvja5EaQ3tuq2Q==
X-Received: by 2002:a05:6808:211d:b0:344:dbf1:be8f with SMTP id r29-20020a056808211d00b00344dbf1be8fmr12078287oiw.169.1661194676257;
        Mon, 22 Aug 2022 11:57:56 -0700 (PDT)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com. [209.85.167.176])
        by smtp.gmail.com with ESMTPSA id n16-20020a056870035000b0011c8c2c9020sm3080339oaf.33.2022.08.22.11.57.55
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 11:57:55 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id o204so5814911oia.12
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 11:57:55 -0700 (PDT)
X-Received: by 2002:a05:6808:20e:b0:344:997f:32b8 with SMTP id
 l14-20020a056808020e00b00344997f32b8mr10008134oie.11.1661194674906; Mon, 22
 Aug 2022 11:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
 <f776de47-615e-d38d-8512-3e5391d6650a@linaro.org>
In-Reply-To: <f776de47-615e-d38d-8512-3e5391d6650a@linaro.org>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 22 Aug 2022 11:57:42 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOYJrqdtzOeFhJfxtB7bCEKZuR=ADGxoVsAFM_N6zPJ+g@mail.gmail.com>
Message-ID: <CA+ASDXOYJrqdtzOeFhJfxtB7bCEKZuR=ADGxoVsAFM_N6zPJ+g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wenst@chromium.org>, 
	devicetree <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_115759_081098_B3786F2B 
X-CRM114-Status: GOOD (  21.19  )
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

Hi Krzysztof,

On Thu, Aug 18, 2022 at 3:02 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 17/08/2022 22:33, Brian Norris wrote:
> > The Gru-Scarlet family includes a variety of SKU identifiers, using
> > parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> > different manufacturer names) also use the Innolux display.
> >
> > For reference, the original vendor tree source:
> >
> > CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> >
> > CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>

> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml

> > +          - const: google,scarlet-rev15-sku2
> > +          - const: google,scarlet-rev15-sku4
>
> This does not match the sources you linked in commit msg, so I am
> confused what the links are supposed to prove.

It took 2 patches to get there (because SKU0 had some additional
customizations later, which were already upstreamed [0]), but the
result is the same. I'm not sure which part you think doesn't match.

One difference: they're listed in different order, because that seems
to be how the YAML schema is organized. But it doesn't make any
material difference, as long as the -skuX variants are listed before
the non-skuX variants (i.e., "more specific" goes first).

As to what they prove? Well, whoever applies is free to drop them if
they'd like, but I figured more documentation is better. IMO, it shows
that the real product uses those strings, and implies (but not quite
proves) the bootloader is looking for those. That is useful
information, if one expects to use an upstream kernel with the
production bootloader.

[0] https://git.kernel.org/linus/5707e34166f546bf1fcdfd3da600e8187d04d937
arm64: dts: rockchip: Add gru-scarlet-dumo board

> Is this matching at least your DTS (dtbs_check passes)?

Yes. (Well, after patch 2. I didn't try to make this bisectable.)

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
