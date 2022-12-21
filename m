Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2D6C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 11:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tj8kU34KzXpusovRj7ypJA/iTVxHHxrFJDh1uD6QiM=; b=4QZPhH5Jnl5MfV
	JDIvySpwIaAfozWUEKC8srBPB1+bydGF17qNcvPKQbdcxAJ7Ycim2aSME740+gFSXI31gzo5C1s47
	AmMc04mKio4WhtUdGLpMVwJn0/ymLfZSsB3wgC/QjsSamfSPP8hXq87DgWHnkXzU5qIidZfsN7A+E
	Yj+Vn4Zr2q93A9g/iutEKpg4BnWz0YGVpE/QCGiiG3yFuvUlBDZZeyhGKwIsoAw/Khnj2+0sbHzWR
	KTNkmrGt1tPHHKGgDL1muiH/u13Gbc7mWh0JEgIarK7vdOig903UiF5oVwrGHe7zzaZ7IoT4SDJYa
	tsITgNg+/oAIMeucnITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xeE-00ERdk-BI; Wed, 21 Dec 2022 11:52:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xWU-00ELde-CL; Wed, 21 Dec 2022 11:44:36 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p7xWM-0005Zr-Jf; Wed, 21 Dec 2022 12:44:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, ty <zonyitoo@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Date: Wed, 21 Dec 2022 12:44:25 +0100
Message-ID: <2673859.iZASKD2KPV@diego>
In-Reply-To: <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
References: <Y6KfFEChA67E7oX/@VM-66-53-centos> <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org> <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_034434_481342_EB61989E 
X-CRM114-Status: GOOD (  30.03  )
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

Am Mittwoch, 21. Dezember 2022, 11:46:36 CET schrieb ty:
> Dear Kozlowski,
> 
> Sorry that we didn't fully get the idea in your previous comments.
> 
> >
> > On 21/12/2022 06:52, Yuteng Zhong wrote:
> > > from: DHDAXCW <lasstp5011@gmail.com>
> > >
> > > LubanCat 1 is a Rockchip RK3566 SBC based
> > > is developed by EmbedFire Electronics Co., Ltd.
> > > Mini Linux Card Type Cheap Computer Development Board
> >
> > This is a friendly reminder during the review process.
> >
> > It seems my previous comments were not fully addressed. Maybe my
> > feedback got lost between the quotes, maybe you just forgot to apply it.
> > Please go back to the previous discussion and either implement all
> > requested changes or keep discussing them.
> >
> > Thank you.
> 
> Your pervious comment were:
> 
> > Please wrap commit message according to Linux coding style / submission
> > process:
> > https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
> 
> So I think there must be something wrong in the message but I didn't
> notice. This message has a `from` line, and the body was wrapped at 75
> columns. Please help me make it better.
> 
> 
> 
> > >
> > > Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> > > Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 88ff4422a8c1..84d39a3a8843 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -781,6 +781,11 @@ properties:
> > >            - const: rockchip,rk3568-bpi-r2pro
> > >            - const: rockchip,rk3568
> > >
> > > +      - description: EmbedFire LubanCat 1
> > > +        items:
> > > +          - const: embedfire,lubancat-1
> > > +          - const: rockchip,rk3566
> >
> > Here as well.
> 
> This change was addressing the previous comment in V2:
> 
> > This is separate patch. Does not look like properly ordered. Don't add
> > stuff at the end of files/lists.

for context sorting order in that file is alphabetical by description


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
