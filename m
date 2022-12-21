Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5772C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 10:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrLx9f+Oy0fKUFzZP0nIMm7Xc4o45RRJk0eTAkYTqBQ=; b=Buns8pwmxgjF12
	SxWeUvLXv2GlmjgZLW42ESBCu83KjyGLnx7yoXhQEvjD38AdnkbiOoxB+MoDOwterwdg5yIwMc5sV
	69O9s/SkUKJSUtWmLwRg0YtTfMnppdOgOp10RYzvdwrqxaO7CCl5Isu+mr2n+swk+usEye0X8P/Vh
	Pup/9tlmQY+WV22JyhczfX6KA10JnU/zM5ZhvLF0Wpp/A5yHkC4nlo4vhEKs45WKaBzMQxcjv9/ff
	XOWJjqW+maKZ597cYj3PXHP16I1tLyzEFB/yLER1Mgtiprl8uKXJXh2vijyo2SrIMx23Wp/ZQ2s40
	L6k2xncueiAp4aCAZNCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7weV-00DhXz-Am; Wed, 21 Dec 2022 10:48:47 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7wcc-00DfdM-KD; Wed, 21 Dec 2022 10:46:52 +0000
Received: by mail-qk1-x735.google.com with SMTP id p12so1653010qkm.0;
        Wed, 21 Dec 2022 02:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DNRS4XaCIr+pNxI0B6D9MO5nBjIMTxhyLlBWRC8jTtg=;
        b=S8Os2Joe8RDvk2V6E2MGGLoqLntI2mMHmuEybFVJNoVHzWZbW9dC7vqg6sI9Y5btYf
         px59axccSQV2bZa0K2uz/mh6Xwjq63L9deCfZW0f+8zWkuMHzjKGwN+wqw5jU6QzMfRQ
         g6vCwZaqaiRvgzMRHikIhZ9xLVlrZXw/8QWjVcCnPiygimu8OWBRk0+bCjCR38g8gZoI
         i4kxMAO7Qs+z4chydFCmXZnxqkpfyebP/MZTAMJbuGfH3b17OY09C/Z4quubPJQ2vMnw
         IsNMdJCeS50+5JTmb+tIpAVREUshqaSRMFhJ4xJtYfoWnsZkUPKraR4kjzMoxm4eBqVM
         pBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNRS4XaCIr+pNxI0B6D9MO5nBjIMTxhyLlBWRC8jTtg=;
        b=5hjF+ysTM7E8prD8eA3G4wLGXEWdjWHSVtV+NHYRcU8fEUyeBCdnmuxV044BfCSpLm
         hOd/TsyZZRB39J9X0WTlweg+jxw/L6/bgcB3JWQ0CNlibJCzIOkjHg9ftMi1qvO1v0wN
         O+X3ILV44eaqiViMhdE99Xlw6qtrJuVXZVw6Bshk88+bXDEZGQzm7auWqzE1Mhlnc+Ut
         HNU3Nzhu/h7PXy2DdWzGNFENqYMP6hQL4bigGqLUGGeOeL2FoAdNw3D1LkdEyqdD+GtI
         CvJY8ksRW6YzMG/gZwelTBfKSyVWqniNIyaF4gP7nGlyQe+JYltuWqx0TW9VMBqI+3LZ
         lwVQ==
X-Gm-Message-State: AFqh2koHbViLmILWNSI6oonUOGLwbg2nszJC9QmZ4rnE031Xv40UHmZs
	AW8jn1ugSabQqc/MLboAUKmSCQ5sX8IBmvTrtvs=
X-Google-Smtp-Source: AMrXdXtD5yxdeFw1QyHVaqgmf2rjXRA/KYamX6ZaftevXCzSpQC1KNQ0AGWes4jvtuAaq355TtF0VtN70rqTJVRaUDE=
X-Received: by 2002:a05:620a:13e9:b0:6ff:b886:54d3 with SMTP id
 h9-20020a05620a13e900b006ffb88654d3mr33992qkl.383.1671619608339; Wed, 21 Dec
 2022 02:46:48 -0800 (PST)
MIME-Version: 1.0
References: <Y6KfFEChA67E7oX/@VM-66-53-centos> <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
In-Reply-To: <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 18:46:36 +0800
Message-ID: <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_024650_939155_1558BD10 
X-CRM114-Status: GOOD (  22.73  )
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

Dear Kozlowski,

Sorry that we didn't fully get the idea in your previous comments.

>
> On 21/12/2022 06:52, Yuteng Zhong wrote:
> > from: DHDAXCW <lasstp5011@gmail.com>
> >
> > LubanCat 1 is a Rockchip RK3566 SBC based
> > is developed by EmbedFire Electronics Co., Ltd.
> > Mini Linux Card Type Cheap Computer Development Board
>
> This is a friendly reminder during the review process.
>
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.
>
> Thank you.

Your pervious comment were:

> Please wrap commit message according to Linux coding style / submission
> process:
> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

So I think there must be something wrong in the message but I didn't
notice. This message has a `from` line, and the body was wrapped at 75
columns. Please help me make it better.



> >
> > Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> > Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 88ff4422a8c1..84d39a3a8843 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -781,6 +781,11 @@ properties:
> >            - const: rockchip,rk3568-bpi-r2pro
> >            - const: rockchip,rk3568
> >
> > +      - description: EmbedFire LubanCat 1
> > +        items:
> > +          - const: embedfire,lubancat-1
> > +          - const: rockchip,rk3566
>
> Here as well.

This change was addressing the previous comment in V2:

> This is separate patch. Does not look like properly ordered. Don't add
> stuff at the end of files/lists.

The previous PATCH v2 merged changes in 3 diffent files:

1. arch/arm64/boot/dts/rockchip/Makefile
2. arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
3. Documentation/devicetree/bindings/arm/rockchip.yaml

What we do in this PATCH v4 was separated the 3 into a separated patch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
