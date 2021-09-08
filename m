Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6135C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:09:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 681EE61179
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:09:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 681EE61179
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6TV4egdU9KhPBL2wWY3TbO1QY4My9EbEq3eua8OcXw=; b=Fk7ZoFKemYsciM
	GbyazF/mkb0F+9c9LdCugO24KfkjOlTtiO5Xsjuaxu28CEi8sVpD8leOul/xom7L8HlU1GVmmcpIX
	XKdD1jzhDOxUVov1W5y0x1NV1rN5P8VqxijNN3ssbYHZyOmvsfvoNWq0ruf8Dx/Yp5zsW1tk4vFs6
	qOwNZ1LCEzM6oCN6bbcr8Nk8RJw3OXl+GUxSIFVja6HmJDdFMaenHuTOxZ58ikMTkSM9tMDp0Aed1
	JdE+zvXia7cMlmd95D6/I9yI1yuGHY2H+CSulcAouBD3pfUNPSv+JT6IrCt6uFCOHPebojZK/B4Xm
	aZr782IuKqXB8YgI0YrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO20t-007Mik-B3; Wed, 08 Sep 2021 18:09:35 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO20q-007MiQ-KX
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 18:09:33 +0000
Received: by mail-oi1-x230.google.com with SMTP id w19so4159148oik.10
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 11:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BHTh1HO906gMjGsq/6c8x/AFAmsBhynFAoihw7tpJW4=;
 b=MlZxyo+1q1YTDCfKyB+mJppyYe+4VNRTPxxVr4MozOrje+oXFksFm6Q5vI0DvrHgmH
 lOgCE+iwZ640bunqIRN5j9A2mTl9AmFDjnQAtRHfma976UHd787FrR8RXpjWndw/RNUi
 zXK9niUZmv+A4Rxrv5pzbbTBVlCvolUMm7DKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BHTh1HO906gMjGsq/6c8x/AFAmsBhynFAoihw7tpJW4=;
 b=c7gh/oZjkczSNG6FijXHrjmp1rCTgeGU2eAVGVGnd87jvj8zHMgTtealhhqypOYdpm
 w/+xhqLeYvBriDkED0+YwML/Cs7/J89i/8D1hatT2ZtvQe43Rq0ssAuObibkY/NMzpkA
 7SeEMppSHaRn2VpmVssgrfufxLN2kf/BTZDtdilyyp+La/u25vLr6VWdzcbGMNi2pu+e
 f6iDI4CKQN0IT00KMv3rMEMAbskVmDNua5UHabr+54Dv7l5P7jwjfSzy6QObPhrpaiGs
 sUO4DWoSKZdD6N7j32YWUBL6J1SgxIPKflq1VhK8JOwzCiqXOOWUebFwPyiEFCXnrJoE
 a4dw==
X-Gm-Message-State: AOAM532KvcFbbEfk7P4Letfsxi+dHso7MgIAaJJVqeRsxk1sfo/vehyA
 hsNfMVwF/b5vO37ROqKHl66HlbuKA75UCw==
X-Google-Smtp-Source: ABdhPJzj7R3a4Q3LwaylvWowGfq/ioeuKu8dN9BzXIJLqimI8e5ehj2oz+lGry3wNhAwWaKbOOwTpA==
X-Received: by 2002:a05:6808:118:: with SMTP id
 b24mr3451187oie.0.1631124570529; 
 Wed, 08 Sep 2021 11:09:30 -0700 (PDT)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com.
 [209.85.167.181])
 by smtp.gmail.com with ESMTPSA id c16sm593451otp.59.2021.09.08.11.09.29
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 11:09:29 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id h133so4179540oib.7
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 11:09:29 -0700 (PDT)
X-Received: by 2002:aca:4557:: with SMTP id s84mr3270975oia.77.1631124568911; 
 Wed, 08 Sep 2021 11:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
 <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
 <CAD=FV=Uo7oK6a8X69KGneP8CvXE127ZxU7U59Rrz+_Dv6D5t3g@mail.gmail.com>
In-Reply-To: <CAD=FV=Uo7oK6a8X69KGneP8CvXE127ZxU7U59Rrz+_Dv6D5t3g@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 8 Sep 2021 11:09:17 -0700
X-Gmail-Original-Message-ID: <CA+ASDXPLrpfnm70RLDD+c8Df8X3-q5FaOjCDWFSbzNwim1MisA@mail.gmail.com>
Message-ID: <CA+ASDXPLrpfnm70RLDD+c8Df8X3-q5FaOjCDWFSbzNwim1MisA@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/2] arm64: dts: rockchip: add Coresight debug
 range for RK3399
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>, 
 Chen-Yu Tsai <wenst@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_110932_727863_04DF9EDF 
X-CRM114-Status: GOOD (  12.06  )
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

On Wed, Sep 8, 2021 at 8:10 AM Doug Anderson <dianders@chromium.org> wrote:
> On Tue, Sep 7, 2021 at 9:46 AM Brian Norris <briannorris@chromium.org> wrote:
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -433,6 +433,54 @@ usbdrd_dwc3_1: usb@fe900000 {
> >                 };
> >         };
> >
> > +       debug@fe430000 {
>
> I think your sort order is wrong? 0xfe430000 comes before 0xfe900000?

Yep... In attempt to explain my own brain: perhaps I assumed the
USB-related nodes must be uninterrupted, which caused my sorting eyes
to skip over.

v2 is coming.

Thanks,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
