Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE7FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 16:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32WiQrAD5eL7qEZgCQSFwSbciYghQosd0i1TAzxclw8=; b=mWkgzZs799r7eV
	8puIeVcIUxwW58HjKpkWx6rMjI+0Pln2RzZY5TM/8mDMY08FYN/Ox7OgbHdNXblgMb8KxyQv318cX
	1ANziRa5nlf23fhMSyRJrZI+ExKhdq9HfNQKBwg4j2V2U8WpKtj59hIrcHY+siTsnORRaXA9WvfsV
	FN66YlYwTcQLalX+LV8Oa1suSF8NtlwjxDHfyn/8XOw2ryXoRaMFdziTKf97ib9CbndVTl/lZLZUj
	dmpsKciMcr1s0Vq07kmc8ywO3loJupd/20CiwL2tdm9VtJdniszTCMyl6iCRs36G34e2JkerhGh6T
	UTxhQWAOgkYpypZ/bj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nopN7-007ovJ-Nt; Wed, 11 May 2022 16:39:33 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nopN3-007osd-A2; Wed, 11 May 2022 16:39:32 +0000
Received: by mail-ej1-x62c.google.com with SMTP id j6so5156232ejc.13;
 Wed, 11 May 2022 09:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wuJ85LzoJRTqUhxUdivNhhyhKIi6qZtS9mW54zLXzCI=;
 b=iiKpqEho+iTsam9OSQMO7b0tE1w9WoUryaoiVxDtMeerHmXp30BR6A59hYZ1uoN+L+
 cct+2DPf3NvH2LBE7HppPi4ZjBp7n755AdOSmQ98GHrt28pXEd8Qsn3pk/8zu8BP9NpU
 72jRXVhdkkNo2t5Cgj4k8MkLpI1YnqVglZPeZN5Zh+UfM8HnEaFsT8uAEH706wQRRqpo
 wZ1AMGdA9WEIvxJY2NMECCM8fUKWeKdAqVCsx3ArMu+Y9cIeWnIwdPOO5IncTe5uX7vg
 ItbnLe67bUwKKD5GG8z5SQWR0kaLnukpldz07VITIdhIYXqjEM6C7odJ9VGLZXLGFZfC
 pupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wuJ85LzoJRTqUhxUdivNhhyhKIi6qZtS9mW54zLXzCI=;
 b=xkslXnCcDH+zKH3XpCxpWPQRwJLsPtAJ+HzyD8L1OlwmWTkmnZlZrkww3ZFhIG0YCP
 zdq00AOdbVH2fZpPWHwQSzC/6fT0fQbS2Tq0DkVLvcGCUSY1fCDHtmlEmq+otlDRSakM
 fJMwnFNyHc2wXJSUPcckXllTgK/9BT7BVP+/ZbxS2u+jOUJs89dqY2EenkjQIWBubnB/
 4o4JC2L9CSR7rMdfGa7/VJXct7rPf+hgL4ZgPHYUAEdwVM8OfxV4ZJ9VFrnMqqszJ1fn
 Rxq6VexGuEmjNhsQT0PWwpXWttGPjcCp3ux0G4XJ4j2AGM8flvlInfOs3Cn1b8YKO0KJ
 HGsQ==
X-Gm-Message-State: AOAM5331lpHOeUTdcqQqGaQsmFtPd1wXJvbEp/IXO1dhKKlpjgM9d08z
 mXa9kxwpo6eu/Jbt97a3l+M=
X-Google-Smtp-Source: ABdhPJwVdUjdYNHQDUWiDOlIQIJ3TgAkOAOMXfzEukY8HEFYvt3YDNxs1GNlFUSIle37aTchXgIIDQ==
X-Received: by 2002:a17:906:4fd5:b0:6f8:5aa9:6f13 with SMTP id
 i21-20020a1709064fd500b006f85aa96f13mr21390266ejw.267.1652287164116; 
 Wed, 11 May 2022 09:39:24 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 a7-20020a170906670700b006f3ef214e31sm1137536ejp.151.2022.05.11.09.39.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 09:39:23 -0700 (PDT)
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
Subject: Re: [PATCH v3 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Date: Wed, 11 May 2022 18:37:54 +0200
Message-ID: <2486415.XAZu0pfo7u@archbook>
In-Reply-To: <bc4c395d-4e21-1d15-96be-00a5cad1d6f7@linaro.org>
References: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
 <20220511155309.2637-2-frattaroli.nicolas@gmail.com>
 <bc4c395d-4e21-1d15-96be-00a5cad1d6f7@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_093929_384416_2C5F31D3 
X-CRM114-Status: GOOD (  25.75  )
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

On Mittwoch, 11. Mai 2022 18:00:09 CEST Krzysztof Kozlowski wrote:
> On 11/05/2022 17:53, Nicolas Frattaroli wrote:
> > The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> > encoding. This patch adds a compatible for it, and also allows
> > the bindings to only come with a vepu interrupt.
> > 
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >  .../devicetree/bindings/media/rockchip-vpu.yaml | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > index bacb60a34989..965ca80b5cea 100644
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
> > @@ -39,7 +40,9 @@ properties:
> >  
> >    interrupt-names:
> >      oneOf:
> > -      - const: vdpu
> > +      - enum:
> > +          - vdpu
> > +          - vepu
> >        - items:
> >            - const: vepu
> >            - const: vdpu
> > @@ -76,6 +79,18 @@ required:
> >  
> >  additionalProperties: false
> >  
> > +allOf:
> > +  # compatibles that end in -vepu should only have the vepu interrupt
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            pattern: "^[a-zA-Z0-9\\-,_.]+\\-vepu$"
> 
> Why not listing the compatible how I asked? This is the common way of
> handling allOf:if:then per variant.

Because I was afraid that if this wasn't general enough to apply to all
future vepu-only instances of Hantro, then my patch might be bikeshed
into requiring a v4. Clearly, my worries had the opposite effect.

Also because I thought it was cool to use a pattern for this to enforce
consistent naming in the bindings.

> 
> https://lore.kernel.org/all/ea94f18d-3172-98bb-0892-a98236a08018@linaro.org/
> 
> Your patches do not apply on next, so the set might not have been tested
> by Rob's bot.

Good to know. Once I send out v4 in a few days and maybe after some more
opinions so I can stop bombarding the mailing list with tiny revisions
of the same patch set, I will base it on linux-next.

I'm happy to report though that this passes dt_binding_check with W=1
without adding any new warnings. I do actually run those checks (and
checkpatch) before submitting.

> 
> Best regards,
> Krzysztof
> 

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
