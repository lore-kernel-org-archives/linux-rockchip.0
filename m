Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 653AEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 12:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0ga9KlrrSsxRFx1vgWOfz0Mv5GyCHky1drkUqSTucQ=; b=QBHNKBeD5JLsSz
	cBnTIdPmY4QxdxZ5ai0vx6tDqWB7EStDoiMmIn6xUtXzu6KpGmoVrcHMGTJTJQEp/qzO9NBlcfvCB
	F3Y0FozwPTNNuLSxbIHUu6jhFRt/HXtBtNTjOJPzX3HO5yF2OMTxjGa/UhmPHJoKbqknlhBryIIV0
	NyWPBBnAwldOSdVSstYA0fRrsqjw1XIO8vGIyOqUTVYdUx5MzKk2OY1Eq4fncr6Vn4Z8m1IFv4+9f
	qDGSOgY16rTOGZMQ5qKelPCeynkCCY9zFtZIdcq7fWX+PRtz8x8Gsodd/NLy1jDEd1sbs2SCyAsfa
	fG/1F/7Nuhm/46iGIRrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPNwo-002b62-UP; Wed, 02 Mar 2022 12:19:14 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPNwm-002b5X-0X; Wed, 02 Mar 2022 12:19:13 +0000
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-2dbfe58670cso15051577b3.3; 
 Wed, 02 Mar 2022 04:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3vb72GLr6Ee3U6cMdODTkV43DodSF/shfmMcds/5VIw=;
 b=kFIn83UQPNp2YQXGZ6vUBxp7pFT0bb/xiZD2h4HzwgeUvSva8rIMT4RES8AoEseVZS
 z11uYAJWsZCNwLtvizkaW8BNUgAl9lc/YI77qMY71vcixUzHbqZKrRTt1srRqMEQe18D
 DwokZ2XEpylFiXxtb7qiRP2Spd6gTq/sXCe8NuBOdZKOrJMBxi5Pdv9Ck7ufOUb6ak2m
 4cxA+QQRVEFEXzHDftRH5CCTkFqcFgQrdRSpRCmvLDG0BlY+a9A3OX7BTqMRg7X4GN1P
 eKtm5xsZkmagztN4HKnSeq41DoOzeVah6F1q/ZtXBkJcgFcyg+ucOXKj+S7BKJ8Ya2MC
 lVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3vb72GLr6Ee3U6cMdODTkV43DodSF/shfmMcds/5VIw=;
 b=PGRJouKkIdQU9yR1hxJksdDz/vwpNP8GcK3KkmdqlDNPrnYqAYPcc4NF7qvMqQmhek
 v0RM54cfnbMbsXdkOrF0DpBuBzS24ZeiZRBS4vBuJKzvkNddYMzxToWFfvmURy7+UOPi
 jZfUrvutzR0vbIHlvamx9GNssxMcLb8+K1V+I+y2jU5n1CP4q3fiiFbKyI+cRI4kanbK
 dst+lQIl6Pn61aMulqjx6Bolt/RRuoe9aYkbAA5UCpwHg6pxN25w7iyOk5z5ixu1fxwz
 jiLHOE7HJbmANeEyHNKt2VpZmCJXNdKcg6e7v7lP16eJjlP2PhUwVMMahTIzM4uH/ZIm
 Pu5w==
X-Gm-Message-State: AOAM533RdxzQ8PTPVsk4pXU45wiuIkCVA0oIkzD0J8z14F9/8g9tERyo
 MICCvA36QHIn1br0BPCmrXaJJaAoPL4UJ23zdyE6GGPNv3c=
X-Google-Smtp-Source: ABdhPJyL+HJILY3xOuTeZtNsYtJCOluQWPYN2HDUEDAElMZ5+oMd9++QKvgOqwUj6bvXHy1XbsXeSiDguuBkqf4S4rM=
X-Received: by 2002:a81:1c47:0:b0:2d7:5822:1739 with SMTP id
 c68-20020a811c47000000b002d758221739mr30015911ywc.502.1646223551058; Wed, 02
 Mar 2022 04:19:11 -0800 (PST)
MIME-Version: 1.0
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-2-pgwipeout@gmail.com>
 <CAMdYzYqs=iRY6uNzVSkHrrhPYFixXdbZjtwSpPOjf-6f8TXutw@mail.gmail.com>
 <Yh8n7XiJbaT4pZGD@matsya>
In-Reply-To: <Yh8n7XiJbaT4pZGD@matsya>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 2 Mar 2022 07:18:59 -0500
Message-ID: <CAMdYzYrkDbr5mHYmAbqBoJJEKH8A5xXfRNuTiTn8q40vRJeCgA@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: soc: grf: fix rk3568 usb definitions
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_041912_078288_98BDDC58 
X-CRM114-Status: GOOD (  26.12  )
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

On Wed, Mar 2, 2022 at 3:16 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 01-03-22, 09:52, Peter Geis wrote:
> > Good Morning,
> >
> > Would it be possible to pull this patch individually, to fix the
> > current error reported by Rob?
>
> This does not apply for me on phy-next. What was this based on..?

This is based on linux-next, which the applicable patch was accepted on 24 Feb.
The original patch was correct, but it seems a merge error happened
and these two lines were moved into an incorrect location.
This patch corrects that, but I see on the original patch chain you
are discussing reverting and reapplying to fix it.

>
> >
> > Thanks,
> > Peter
> >
> > On Mon, Feb 28, 2022 at 8:57 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
> > > compatibles were incorrectly assigned to the syscon, simple-mfd
> > > enumeration, vice only the syscon enumeration.
> > > This leads a dtbs_check failure.
> > >
> > > Move these to the syscon enumeration.
> > >
> > > Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > > index 072318fcd57b..5079e9d24af6 100644
> > > --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > > +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > > @@ -15,6 +15,8 @@ properties:
> > >        - items:
> > >            - enum:
> > >                - rockchip,rk3288-sgrf
> > > +              - rockchip,rk3568-pipe-grf
> > > +              - rockchip,rk3568-pipe-phy-grf
> > >                - rockchip,rk3568-usb2phy-grf
> > >                - rockchip,rv1108-usbgrf
> > >            - const: syscon
> > > @@ -39,8 +41,6 @@ properties:
> > >                - rockchip,rk3399-grf
> > >                - rockchip,rk3399-pmugrf
> > >                - rockchip,rk3568-grf
> > > -              - rockchip,rk3568-pipe-grf
> > > -              - rockchip,rk3568-pipe-phy-grf
> > >                - rockchip,rk3568-pmugrf
> > >                - rockchip,rv1108-grf
> > >                - rockchip,rv1108-pmugrf
> > > --
> > > 2.25.1
> > >
>
> --
> ~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
