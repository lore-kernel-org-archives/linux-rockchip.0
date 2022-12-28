Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD4FEC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 05:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vpU7cRxbGZ2bprYWLYenBSHpb+kW1z1j5xki3qeDzo=; b=XNyw8kpkfapEDb
	Vz2iLKurIE+yweKsVZri7KBiRh5eb4Hk+EhXQdWRNyHMqgRsRAc6IJw/RkIfRgfvXZn17tfZt6NEK
	mbK4kQPH06h6EsWMejuWukQ0SxRYk4CU1jv6Ac6AFj55gArlKIIzm140NDKNEaBva7xbYnv8J+pi3
	w8rLluXm2TUpL0vFOyseIfBSlYHKJJniZ1r2+LMdIErMzB7bkO76H5tXxgNGsSz6tn7XclBaLrGSF
	4bDOxyt7FxSrp1W0/3hAgHZeLG7LkkrlaW8aMWHrKN8puZd3D1nyA229XF/+CdR+oZ8ZNXDxZb2ww
	IUbKYInHsEnF+SUcmNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAOzy-001xWZ-6e; Wed, 28 Dec 2022 05:29:06 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAOza-001xN9-Ng
	for linux-rockchip@lists.infradead.org; Wed, 28 Dec 2022 05:28:50 +0000
Received: by mail-pj1-x1030.google.com with SMTP id o2so9698852pjh.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 21:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9cAM4RhmUF/0okz7iGJZyGhb8wvgosg7Pe52G62TzuE=;
        b=JGTuVx/19KQlpCvCoeEmPy73oDMhAn7fVSSmJgfHEX+2S7PV4Hksc4YduZq9w/truH
         uJuU7bxjIiESuewVZq8SHZ9CNJylx1p6sYC7LeJqINs+8+geWB6fGwuNQ5FWmvmjFkmo
         cjJ2NKoqj1SfJhKB+YlzR6M+/EyPs6lR0kUzg6JR1YYEZD/NYVTABQWVr3MRhrcKQeEY
         RarBkVkfPt4crvf+YmnXF42s+cJ64RA5roSOrtnJKa/vyXnsvt/VEm8iOPkn/4fEyb8m
         8N8C/+xYegf7pnFB7dh0Ys4ZwhGVnlkvPDvBsmN2Q91KZnOPuhBtjg/DL3KruKZDtF7i
         BeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9cAM4RhmUF/0okz7iGJZyGhb8wvgosg7Pe52G62TzuE=;
        b=4ko6kvf0Wl4FcB75fTTakA2/ESycfd6stW7glIb7UGFGgp9ggFJoju/GzsUCrMUOQm
         0uDA3mknGn12M8YZgiGF3Go7BdUXUBu5lc40q4es2+ss6E60oLXkQGF/IM6NIRp7FbN2
         wU7zC/53ToVWwlHKFXpIa6BY1K+5J7szGCqtbwmAnk6PhKHw9UyJaD186I+TQS9Iqe1z
         0NO232WzW4v5vroMmvZvD49GJEoIPNkRVIL+MDvP7FnvAuQDMcuDHQsdFMVJQTh5NTPN
         jrcPSVz4fTZ+bLr0qj+XIMobA8Ic03VqPT6bqo/PqJTNP6tGNbKltWreOTtVWlXXfet3
         iphQ==
X-Gm-Message-State: AFqh2kryvcogt4aXZxjNuuqF00bW3x8a33cy+/OzoPNFLMwHDydaeqCc
	bz/xKolceLIxpppr2lgH42KcHxRforwPGRGt+luCxg==
X-Google-Smtp-Source: AMrXdXucD2UuV6eCz/qiNghJ5GxgT3TnOtddAezIMiy5Cbg7XzHb/zmA7oU/ii3ws+/T5IFcS9BIisTXbPI+gj6CLxI=
X-Received: by 2002:a17:90b:1281:b0:225:be82:ba21 with SMTP id
 fw1-20020a17090b128100b00225be82ba21mr1650901pjb.209.1672205316516; Tue, 27
 Dec 2022 21:28:36 -0800 (PST)
MIME-Version: 1.0
References: <20221227104837.27208-1-anand@edgeble.ai> <20221227104837.27208-3-anand@edgeble.ai>
 <732352f3-fda0-039e-4fef-ceb6f5348086@gmail.com>
In-Reply-To: <732352f3-fda0-039e-4fef-ceb6f5348086@gmail.com>
From: Anand Moon <anand@edgeble.ai>
Date: Wed, 28 Dec 2022 10:58:25 +0530
Message-ID: <CACF1qnfEjGCQ2e5DQqszc6Ak0XR5+NB-PSBFJtnC1P5O9hNGqA@mail.gmail.com>
Subject: Re: [PATCHv3 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Richard Cochran <richardcochran@gmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_212847_507856_1297BAF6 
X-CRM114-Status: GOOD (  15.74  )
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

Hi Johan

On Tue, 27 Dec 2022 at 17:25, Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 12/27/22 11:48, Anand Moon wrote:
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> > add GMAC node for RV1126 SoC.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are not
> > used, Add SoB of Jagan Teki.
> > V2: drop SoB of Jagan Teki.
> > ---
> >  arch/arm/boot/dts/rv1126.dtsi | 49 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > index 1cb43147e90b..e20fdd0d333c 100644
> > --- a/arch/arm/boot/dts/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -90,6 +90,55 @@ xin24m: oscillator {
> >               #clock-cells = <0>;
> >       };
> >
>
> > +     gmac: ethernet@ffc40000 {
>
> Nodes with a reg property are sort on reg address.
> Heiko can fix that.. ;)
>
>         timer0: timer@ff660000 {
>         gmac: ethernet@ffc40000 {
>         emmc: mmc@ffc50000 {
>

will sort these on reg address. In the future. or the next version.

Thanks.
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
