Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08430ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 07:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9fup2cpDRYHH8ULzIvh1ZMjKofFDYqsDUOGVY3XN5I=; b=wvrenFBFkuw8Jg
	sHb99YZ54xFMCTMGTvO9weuNIz6RGTgzWCndZm7+6OZIN2vj/5krprxUWTsC1+C2qI1SbotRGdEQ5
	8GfkZe9x5mVYQNQnFz9Nk9u5a7Cxgy8WG2W5jhZ5jyKesbkRDa6pZoe9rw8qFCyKl9aRg/JVRIN+Y
	FcZ2qZ/0qWvJQ6wzYYWLqDpvID2CFmwlb5Tob8dt7oeJRV2MfPUYZEzRx7mu7beivAK76q5zYR8TK
	q90Flg37/aY/6OIAVtfmOIYFYcDuk0P0xG/zoWRI1Nue4/V2TLUu1R+2LIUSpOj1awr+I2fzbKqPs
	DpeOVKpaE+KNK+REZM6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTeHx-00ABlC-02; Thu, 01 Sep 2022 07:06:57 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTeHl-00ABgI-Ul
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 07:06:47 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id g5so7347588ybg.11
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 00:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=OkrB7u5zO7yhs7suwu7hn8qSqPX9t4VFobbA5eBLtMA=;
        b=F257pApWGKrYCUXD6jfvvpcz01RxcYotLK3hhuKEAwBLQWaXdlYkytdlDHaMhZ0vdp
         fKSwIhYkMkSbSw/rSKe/kuOUHDoZfDS9HaOiR5Zlmf2L9q+6OtGAaoT98B8ubwA3FkMt
         AFbthgCqoCfWcFRQRS11Er3xaYgrTAcJFHhVchvthH3mKqYc9GNxxJArWtH8vz5FVKZD
         murNAJt4g2NSzpFQ88dJEVB57RldbFiXnMQUfcytK4QDFnI3sdKgXc8kMJMgsGOmOY0G
         XPLMXp9knlitf0IzP9NXehUe5Mt2mIyU0Kg8YLJGVM6s8iJ7ld/PS1ZBI3nhqpVPHyzI
         Z3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=OkrB7u5zO7yhs7suwu7hn8qSqPX9t4VFobbA5eBLtMA=;
        b=xWcvX1OwMCfhiA+y0r05bKt5YXNg9y+fEhc9sSNwfxdDkCgOoi8UniMKEvqXcvQiMO
         VupnAjYNbBOc63W2UjnkHKUcu7Ec1d9m7T7OnmuLm6UFUCQ+ZXJVnbTzu2hEc9oQME96
         bpkcjLaoHDE5zK6zzxPmVALpR8hvqD0ph/9tANCIrloUBHa4JISVuzOQCAI6rFgUDFv9
         VWd+P0Xuj7yY3ogPO5DxEGHCHog+WdT7RYQXM0q+RfHb5Uhg/z/X5kkWmltnIrDR84ne
         yqFkPwx4W9clHObXUeaxNq8etbS9+qMRvBvYK2pBhe4TFm1BAO+5s7oqrmTzF7Hdwty6
         Hrrg==
X-Gm-Message-State: ACgBeo0yCs6iDqrDnOeed7x1BE1VODl6cNmw/R1TOVzO5OJ7V4kwd65p
	exImrNjLAE1lNE3r2w9SobhcVlxmGJheqq3Cr1q3bA==
X-Google-Smtp-Source: AA6agR6B1joMY2QehQj/lQc1Wp2scBlnM8pWTOh1nJljf40TrREeO+mjpMy/OatZLnIGjI8y3nxT5YnLNmLsDn2ag4M=
X-Received: by 2002:a25:8a83:0:b0:671:786a:e2cc with SMTP id
 h3-20020a258a83000000b00671786ae2ccmr17400206ybl.145.1662016002769; Thu, 01
 Sep 2022 00:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220829065044.1736-1-anand@edgeble.ai> <e4d6eba8-497f-adb2-6f34-35883b8ec50d@linaro.org>
In-Reply-To: <e4d6eba8-497f-adb2-6f34-35883b8ec50d@linaro.org>
From: Anand Moon <anand@edgeble.ai>
Date: Thu, 1 Sep 2022 12:36:32 +0530
Message-ID: <CACF1qneLHv1egFE0r0Rw+cJLh1hESJ95_VTjnT4WxzmBX21sGg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: rockchip-dwmac: add rv1126
 compatible string
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_000646_114928_C512D9BE 
X-CRM114-Status: GOOD (  18.46  )
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

On Tue, 30 Aug 2022 at 15:21, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/08/2022 09:50, Anand Moon wrote:
> > Add compatible string for RV1126 gmac, and constrain it to
> > be compatible with Synopsys dwmac 4.20a.
> >
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > ---
> >  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > index 083623c8d718..346e248a6ba5 100644
> > --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > @@ -26,6 +26,7 @@ select:
> >            - rockchip,rk3399-gmac
> >            - rockchip,rk3568-gmac
> >            - rockchip,rv1108-gmac
> > +          - rockchip,rv1126-gmac
>
> That's not a complete change. What about the other place listing
> compatibles? Did you test the bindings on your DTS?
>
Yes, I missed the properties menu, will update it in the next version.
>
> Best regards,
> Krzysztof

Thanks


-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
