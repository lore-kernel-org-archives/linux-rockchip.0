Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 707D4C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 11:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYMkKfninuS20CElBEwhlcgw2FaptAXXOm784TW9BWY=; b=p5a0y8uZiCgJPi
	hdgVAhX3cxM37s0jV8vu0KEB1BhkUZahQBrntfHNtPUB6sYLSW1e/o6L6WcuwLzeFKZTS2rXDlx6m
	5x+62uClNAmskvLumopPLFE8jbSGlry/teGulo/jallaeh9+L7QikR9CRq0wDzMNFTcetDmAg6QuA
	YqeCpVUL5voMY9xBz1pnM+phpaXO6lc+9dSgazO9iKx5ALqnWbYhtYO8WHClm379zcjVDOJEBrsyG
	1yfDBPGjaHhKXgI/NVZs2rqrB/VwSQxS3csa9ktyVOzy+vwpNisK81LZDBqBM3uFpqnzMBRZ1PCbz
	xIeALUdSpPUnfDSvvfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhUkb-00DA3r-GE; Thu, 21 Apr 2022 11:13:29 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhUkY-00DA31-MR
 for Linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 11:13:28 +0000
Received: by mail-ej1-x629.google.com with SMTP id l7so9346660ejn.2
 for <Linux-rockchip@lists.infradead.org>; Thu, 21 Apr 2022 04:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SUZ3fmbbA3bW+6zlBXPCxl05NBgb1lVxlBnVpWEBW8Y=;
 b=165sJL8oUoSSjr0w3OKtQLsIzRyJtxgQO7Ej8MD0RONhhe+wZvJoWARDnarA4pE5mW
 dxDv0NfSmc6XUShEeeSHLi/lcyDpEbgzRQp3UJESdvpkp+HXkemP7mJMWFAADnC6BmiH
 1yMwmIVTl6zGW5nXLjhvh2ESkuxc6FbbP/+VFTb+EBxfBtso8BTnBMTq4m1nXMvn1/EB
 o35K8aowKfLNe5bAqe7tJ/jO8DpoApgR5pkX/lTugxb46tgc9moGS69SYERptJgDTRbV
 Rsi+E8ivE2xlMFgN4vAUEenD8Gp+Kur8tqosOY3liV1O4YkrTvO2+fb8i5qB8uvNFYqO
 0tZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SUZ3fmbbA3bW+6zlBXPCxl05NBgb1lVxlBnVpWEBW8Y=;
 b=xVeLHYvBldg5qHmXK6kySq6G91wzrTOuoFnotC0c1QMsvXAsnjikQJlg48MHVF6f3p
 6U/r8tUhLVsoe24tf2URATBg9Fkn6oXDPfKpBrH3fyur/iE5XiGkyvoeGYwTqFL46snb
 T8WbPDCKl7MgYa1x6KIvSFWHS0jEcZWvXaAqfoUPT27oEektchIJhhMD2TaAiodjpQvT
 XK1rJGC2s6BJWuws50XoRxaG2mkoz9n7SB6SDdEWHYAr13yicVOK2dLTyRzBwoSq+6Tb
 jZ85+1J1ViNSAVFyTKbfymVd4EUJWNnwqkrcbMa0i3Fln5kxGSgiRztqUtu8K1MJTTkz
 mq/w==
X-Gm-Message-State: AOAM531D8Q5D1wrkuHU6tL4qGFwMPuIW4l1Uf1TwlImTblSf46aarugB
 mXvYtYU0aWH/3k4vxg308qmXPN2q7UQpGHZ3XP1U3/PT4n5NFQ==
X-Google-Smtp-Source: ABdhPJwYj4HYIF7yTu7IcNHJEvCknc1WCtKnvOQbaKxO1PFNL7fkQ1E6VSwYW8S5yMxMaQ5lM86zEwR0ovbipUvw0xo=
X-Received: by 2002:a17:907:2a53:b0:6ce:e4fe:3f92 with SMTP id
 fe19-20020a1709072a5300b006cee4fe3f92mr22534469ejc.389.1650539603270; Thu, 21
 Apr 2022 04:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
 <YjcgflUuQlFbVM/1@eze-laptop>
In-Reply-To: <YjcgflUuQlFbVM/1@eze-laptop>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 21 Apr 2022 08:13:11 -0300
Message-ID: <CAAEAJfAh60QB4JvtR8WfsykRit7RqE=XZ290u8jBOQ-7y7+P7g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3568
 compatible
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <Linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_041327_007256_A08C0BA7 
X-CRM114-Status: GOOD (  17.88  )
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

Hi Hans,

On Sun, Mar 20, 2022 at 9:39 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Piotr,
>
> On Mon, Feb 14, 2022 at 10:29:55PM +0100, Piotr Oniszczuk wrote:
> > From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> >
> > RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> > video formats.
> >
> > This patch adds RK3568 compatible in rockchip-vpu dt-bindings.
> >
> > Tested on [1] with FFmpeg v4l2_request code taken from [2]
> > with MPEG2, H.642 and VP8 samples with results [3].
> >
> > [1] https://github.com/warpme/minimyth2
> > [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> > [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> >
> > Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>
> This dt-binding change looks trivial, so I guess it's fine
> taking it directly via the media tree?
>

I believe this series is ready for you to review.

Thanks!
Ezequiel

> Thanks,
> Ezequiel
>
> > ---
> >  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > index bacb60a34989..6cc4d3e5a61d 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > @@ -23,6 +23,7 @@ properties:
> >            - rockchip,rk3328-vpu
> >            - rockchip,rk3399-vpu
> >            - rockchip,px30-vpu
> > +          - rockchip,rk3568-vpu
> >        - items:
> >            - const: rockchip,rk3188-vpu
> >            - const: rockchip,rk3066-vpu
> > --
> > 2.29.2
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
