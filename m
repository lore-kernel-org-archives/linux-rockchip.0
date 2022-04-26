Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54DB6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 12:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpMuDwbYHdc07JreSzTddoIYYj4I+WUDSi0ECSgEeCo=; b=pqsK3tijXJWQ+K
	M5cRo6UUqYm5VZ/GHoVp0SKe8SpjNLiqc5b5q6dPONpwXuM9rdBhpI+J9W5PBIi3njP6zH8jFbBNy
	hS8cvnYaCsMR99vrpXObYs95jvh37XVJyerP8BjvIfzJ/PgA9xMMKC6eXbmji8qGtJzfN2Ewz7zZW
	v6igmozHIs1BmBnJhd8p3kPO6yggJToHU7a0RDcvdoQvbLrOK4Bkt2G3lqQBx1SuSPXijoPFq6085
	hTUhTV+p0Trx+EK7Q7LNM+57qiBh6bOgWMiPmkK7kPOG6F6+zDEoYqa29nGnzDodWniLGmMdrBw29
	wP01N3KrxhBqqpMugzPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njK7t-00EDQc-EV; Tue, 26 Apr 2022 12:17:05 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njK7n-00EDIl-EE; Tue, 26 Apr 2022 12:17:00 +0000
Received: by mail-yb1-xb32.google.com with SMTP id r189so32589190ybr.6;
 Tue, 26 Apr 2022 05:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z6HlTgV16C1nbm2ubpZ78NSDfxY1Gonbs5NFJi8ajY8=;
 b=RuO8KOEN2G0gLHKrOGmsrR11cQcoY4EMsIY2bcK7T7ocA8XPc3VQ0ZI8QOqsNbGx9a
 hEfVUV5f23FIvJEcgPKImqoVqML9X9/osKNScBQSfEy0iWJmHfC66EgKepFwaSbWHcBq
 7vz6TChuhQO/kTEK2QyFfpz2V/PQB6JJ3BvTpwHz4GLTtjJ97DJoKdJlyy13Wv8R/ufk
 KutoOj0oASZ93F9k83PghB733e2iASfiZQFX+Gp5oKtLtoPrs772wQrB6Rv+6wvavE8a
 YkNh1M+wU0xSguCpmQoJbkExOFWxmi/IfvLPAAHGn6mFORKDazLBhq9g3sd9dQR3CSTL
 oXhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z6HlTgV16C1nbm2ubpZ78NSDfxY1Gonbs5NFJi8ajY8=;
 b=iegWf0PPm1EA26Eh+b1JXBcCkcWJQ6XAGQQjM5nErOoAoB0leSYt0EFHtBQoMfyxsq
 lb0Cy5cc8HmkUKav+VV/HRjzkXMp6oLfJLCCOgIp7tyY0iWOhLarc8rKb2JGWUh83Oed
 cjdKEGLvtxPVRBTdfB8YuGwrIeS9BgctVDJfC6oQhU6779iZQJyyz638KTYQBUy2bdRq
 sugRrt7oxKBs05JWH1sC05eMbNpFjZszHB9SMEV64/6PBe4FzVZm5Q3HPkSs0u5LgIP2
 oF7KtBMMn77ABER5jSubt+zb4oxEkHqLaiWxdKCl9xkaymXnQr6a0ZxtAXTe9iu1zqMV
 6MGw==
X-Gm-Message-State: AOAM530whF3dhy2aA6w74el5pvlXVhOnfRWbWe23BY9v5VPjaPdVKCOg
 2g2cAucVBMOPC3vayAKNeVlBuDlq0KzoEzO011o=
X-Google-Smtp-Source: ABdhPJy3MdS60/zbT88VhTjyyBnS4sNLV84Xuc1mQp9wK35oHluvxYo31IjHCQ1gtBVhkgAjoqgWbSeYRYxZ89JNSx4=
X-Received: by 2002:a05:6902:cf:b0:641:32bb:53fc with SMTP id
 i15-20020a05690200cf00b0064132bb53fcmr20857198ybs.232.1650975410652; Tue, 26
 Apr 2022 05:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-2-pgwipeout@gmail.com>
 <60db784a-df7c-af2c-5602-bab8462b0223@linaro.org>
In-Reply-To: <60db784a-df7c-af2c-5602-bab8462b0223@linaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 26 Apr 2022 08:16:38 -0400
Message-ID: <CAMdYzYpFB0yKnuuuWjpOiUmMqaSMs1fxeXDVEGOM47JCzZTwBA@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64
 Model B
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_051659_518733_83AD9BA3 
X-CRM114-Status: GOOD (  19.14  )
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

On Mon, Apr 25, 2022 at 2:00 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 25/04/2022 19:13, Peter Geis wrote:
> > The Quartz64 Model B is a compact single board computer from Pine64
> > based on the rk3566 SoC. It outputs on uart2 for the debug console.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index eece92f83a2d..d6650a366753 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -507,6 +507,11 @@ properties:
> >            - const: pine64,quartz64-a
> >            - const: rockchip,rk3566
> >
> > +      - description: Pine64 Quartz64 Model B
> > +        items:
> > +          - const: pine64,quartz64-b
>
> Since it is a single board, not a SoM, this should be rather part of
> enum of Model A block.
>
> See also Radxa ROCK Pi entry.
>
> Keeping such approach - each single board in one item of oneOf - makes
> the file very, very long...

Thanks for pointing this out, I will go this route.

>
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
