Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4376CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 09:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPE4VbNIYgRLA+4LnLrq9YKhmaPMV4EXhEnOVnW71Ss=; b=vyAjUy6kJr1W12
	FZU37Y0I3cHB0x7THzKPFe9uMf86SQV6CAF24vMyhqMw8avOirxBYpc6DupZ7lb//cmUORIzWWhl+
	vsvrSPgaQ65oemSE/02y4TdkCpsz/fyW6huU4K2qCj9gkQ47ep4q2VYdme68eUpS/5w9+3CKsH6Ey
	H1MtYGe/05IRkWvYl7NDbONhEMXUzq7xrPb89tILOXQTcdl4bJO6gfr83U+XpZtIShNlo9gD9z/tW
	nVs7/VJQPhL52iWlwhCddbjuQ/X5p23hMLXbbK4zHqOmxSTwI5dEfUnd33luUlfplxodsS4E/qyyl
	VGB3XpsisQJzRbIVqcUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnzdS-00DQ5Z-Vd; Mon, 09 May 2022 09:24:59 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnzdQ-00DQ3p-Cf; Mon, 09 May 2022 09:24:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id a21so15540409edb.1;
 Mon, 09 May 2022 02:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LFcgVVJ7bK726HSSPtE+r4B2aXmQmGmr8tjtETzF3YE=;
 b=SCk+kS+aXSHUKOVJ2iBIKunz+vcKeLZXVRZZHJfW4513NoPDMHM/BlO9OtZ7pastdC
 W/17ymo2ZabbKF5AqescJlLZ70aU1Y97l5qpVLrA18jRc0OHqWQv8jc26EcjZrcOWJgx
 dHj0tCBpALYRpyVM+ddvFgwFOppJimHwgMIcd7eh5EABQOJIUoZWVsSh9zUzOph1salq
 27jvi086X5pbvzJgzxj/oTtHN9/bkaCl2rc7R84n0hivnm28KWv6VgNhxEqHfcwFy1Km
 FZvm+nMTTAeT0s1Qlvuzm7IvUgUETmh90LwK2vTHxI9i5QZ6N26z1U30HAg3ur85Fc7A
 avug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LFcgVVJ7bK726HSSPtE+r4B2aXmQmGmr8tjtETzF3YE=;
 b=qcJa2vsaGnBw1/8UzCAaXq6hJMu0fK+1xkBWUIAssiCbygINwSibnjz4JalWFubMdw
 AXWeBZVDO6JRleaqGfT2Pa6WXRYEsCFs04Su2UFuMdQ2yu7XKcXq6tAxqhVx/myjgGPe
 Zf2H/Xgn4UDQsiGT2AH6Rn+2VLCDjGz6NDtnj5CkVJf2Q8i5kaV7k28zxk6bdViDtQuX
 N0oAX3+725eJJ34QF5c+IZvhxQn9BU9kNwSaAQb5QE7KDbsRkoGNvbIXFU0VgbKTWlZG
 LTW7C0EBT7sQjkSpX/xWVuk9NQarhG4vQ6xmb1Bmfvz21l9lIVFIxlBhy3PrI/bXfmMI
 rJvw==
X-Gm-Message-State: AOAM530YRdY392t3+FT/fv5AWDGDu/E7u8yzBPNxYnnHDCTk1IDzOHVO
 v7J+2aaMAx15+FHrJ07QgIU=
X-Google-Smtp-Source: ABdhPJx86XxIR0CMtq+ONANDVnTdQClivXE2E+RefrUi2Gb8ihwn5DKx9ngWTXM2K4DIENT7/NS20A==
X-Received: by 2002:a05:6402:4384:b0:427:b5c0:4bf with SMTP id
 o4-20020a056402438400b00427b5c004bfmr16757704edc.127.1652088292537; 
 Mon, 09 May 2022 02:24:52 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 gz14-20020a170907a04e00b006f3ef214e62sm4869938ejc.200.2022.05.09.02.24.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 May 2022 02:24:52 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Date: Mon, 09 May 2022 11:24:50 +0200
Message-ID: <3594222.Ivq9XVSPaC@archbook>
In-Reply-To: <422bf3bc-7787-97dd-6ab4-7570e5ce2ed8@linaro.org>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <20220508202544.501981-2-frattaroli.nicolas@gmail.com>
 <422bf3bc-7787-97dd-6ab4-7570e5ce2ed8@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_022456_480558_E12A240E 
X-CRM114-Status: GOOD (  23.64  )
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

On Montag, 9. Mai 2022 09:25:23 CEST Krzysztof Kozlowski wrote:
> On 08/05/2022 22:25, Nicolas Frattaroli wrote:
> > The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> > encoding. This patch adds a compatible for it, and also allows
> > the bindings to only come with a vepu interrupt.
> > 
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > index bacb60a34989..4045f107ca4e 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > @@ -22,6 +22,7 @@ properties:
> >            - rockchip,rk3288-vpu
> >            - rockchip,rk3328-vpu
> >            - rockchip,rk3399-vpu
> > +          - rockchip,rk3568-vepu
> >            - rockchip,px30-vpu
> >        - items:
> >            - const: rockchip,rk3188-vpu
> > @@ -40,6 +41,7 @@ properties:
> >    interrupt-names:
> >      oneOf:
> >        - const: vdpu
> > +      - const: vepu
> 
> This should be enum (for both lines above) and you should add
> allOf:if:then with a constraints which variant can have which interrupts.
> 
> 
> Best regards,
> Krzysztof
> 

So something like this?

  interrupt-names:
    oneOf:
      - enum:
         - vdpu
         - vepu
      - items:
          - const: vepu
          - const: vdpu

What's the difference between a list of consts and an enum here?
I'm not very familiar with dt-schema, my apologies.

Also, since I don't know which of the other variants can have
the encoding interrupt and this wasn't brought up until now, I think
my solution will be to have a check for -vepu in the compatible and in
that case require that only the vepu interrupt is present, if that's
alright with you.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
