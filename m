Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9F45C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 23:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnUA83kISkzjny+BqlFTkepaLVvqtktNdmPztlYglvo=; b=IpUq4Hlb8sV02K
	gUZPleAueSSJBbwXoajcmgJYuBRDkuH5UjdgJ8L3xbUROteNic5TvHh4yiOojlltZxB3huLgmg0wp
	+5sX84WtAP23t3CfI9vTBw51nJ3bOmdpB+wrXTbBsTNyqd0zVWHnCDAiEoZN9Fpkd20WxkYGPi9XD
	SWb+Eyvi5Z6BOemCKosc2FfK5mRyYrp6H0Ou4ohUCyZwqEAwS4wP4+GuYDCQY6ziY3La64z4NsArk
	JD72TVD+q1A2QAChNwv1ubk1fldFuYcvA57XDUOk5bKQd9+VxIcm3hGtRGDFCPamYj9agMW2ZYUB2
	AOVdOS/Oe8nQ5LiKEAzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxe4r-0038Ky-EL; Wed, 15 Dec 2021 23:52:53 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxe4o-0038J2-Tc
 for linux-rockchip@lists.infradead.org; Wed, 15 Dec 2021 23:52:52 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id v203so59726866ybe.6
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Dec 2021 15:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KweSx4vEToJo38w+0X+XyYiTHycESdLG197MQj3znUY=;
 b=p/H9WTYGoH4RA6GKtDjZEacYmd65ZxyK6PQRgaR/m9eg4/aol8x8W3xzriRENrM//p
 61ivYop9wOvJv3S9pBuES2S+ug/VfYtuXK/EkqrJsKuT09l8PKqvg2arFxOQNL2zDj3h
 PopTjl5hnXjK9drpLm7mZYwjPZwpDBlAIwUUXZ3S+fYKo1ZcvrYtLyM2OekajbmRG7w7
 QoB/N4HqGSaiSFFUbcSOlbNTwqVx11paoiGUQ6Rd9nZhT6GH4B7eBB8/bIeGVL5GAaJU
 bIY1vhMgjxeMmTny0QrHup8DXUx4RYqOlX3EVjSic2qbvMRB/xg4idmp35STmjjgA4CP
 Kwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KweSx4vEToJo38w+0X+XyYiTHycESdLG197MQj3znUY=;
 b=Pepw+yWkRs0hMO+cgqR+xMELendq95yVuT4EsRc+bTXOPDwfSSiCTK70/VsVoXwUS/
 TrtKBeHzfssTim7dmvPa4HBK1HCOzbtMCE4qN9MkE2O+1RUhguByxl6erD41u0ZPiZ7N
 HAoIPvxRQOd5A3+VTJW/VXhDpKzZSrGEcODelB7ZdB5sUuF2Jqf4JPOBqeK9e3W+bQIW
 i3OhWc2OLj+j0dLPBIUa66MfdZYiasgEUEocEmzYWvNcIpf0+lbcFlYVm0HVp0uI0NL9
 s1PSHvpw5vb+r6IemovAYC2jjSJeNmAydD3gkSTRqbGhig92WccUQXhtSXwT6eqv2urH
 muqQ==
X-Gm-Message-State: AOAM5327LvwT/27dtJB4PnjlTNkMn47IuhnsSQwsLsnppafDVq1ud8KS
 iHwEpapJJnmcBdhWAvOfQP8/uiO6K+FJVzkSVOE=
X-Google-Smtp-Source: ABdhPJwmELBb+qECdrTPwEwqCp63tTuTaBE8smGp17R2dUN8Jz9CwrBI3ug4PJUwLycHafN7OfUUsCXgH5rnUrSg8h8=
X-Received: by 2002:a25:ad01:: with SMTP id y1mr10326063ybi.696.1639612367496; 
 Wed, 15 Dec 2021 15:52:47 -0800 (PST)
MIME-Version: 1.0
References: <20211215213300.4778-1-linux@fw-web.de>
 <20211215213300.4778-2-linux@fw-web.de>
 <1933509.XRPO5POFnR@archbook>
In-Reply-To: <1933509.XRPO5POFnR@archbook>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 15 Dec 2021 18:52:36 -0500
Message-ID: <CAMdYzYrpYoGY0HvSUgsgOBkhfwrqt0UfQtt1MQ7tZGbzY6pUnA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mfd: rk808: add reboot support to rk808 pmic
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Frank Wunderlich <frank-w@public-files.de>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Frank Wunderlich <linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_155250_989783_6CD428B7 
X-CRM114-Status: GOOD (  14.53  )
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

On Wed, Dec 15, 2021 at 6:07 PM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> On Mittwoch, 15. Dezember 2021 22:32:59 CET Frank Wunderlich wrote:
> > From: Peter Geis <pgwipeout@gmail.com>
> >
> > This adds reboot support to the rk808 pmic. This only enables if the
> > rockchip,system-power-controller flag is set.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  drivers/mfd/rk808.c       | 48 +++++++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/rk808.h |  2 ++
> >  2 files changed, 50 insertions(+)
> >
>
> Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
>
> Tested with a RK817, using a Quartz64 Model A with the patch applied
> on top of v5.16-rc5. Poweroff works, reboot works.
>
>

As a note, this has come up due to rk356x having unreliable psci reboot.
Until we have mainline atf sources so we can fix the problem this is
the only way to reliably reset these devices.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
