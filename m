Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 446AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 21:23:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B9A261A58
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 21:23:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B9A261A58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pP/3215Kco/WcuEWSS80JwAkWHQ7ocOAUZpmuw3Wuzo=; b=EJzYaiVMDEBjuv
	EXepJaMW+pnBa9vG0bXnbsbgQnAiCWxOl0HRFp3fo2n2XYM0Qo1XQ6IHXtZQ4vg86U3X6hyuVcQnb
	2mfjMUVAcP1+YUbzG9FQdTztEDJljMzIpfF55d5rohIy59R4o5bDvcD1HAHUktwPySWRXA7kOkf8e
	8P8arAlAsUX5aGmsoRSjkKVjfl7pabNbroUXB8y+symnGfqdJ/ZLolvUhZ28y50QSgjNTaWJqgCP/
	Xgw3DyQWvLQti+B8gFLRWcUp6+FWrWOSWEIEggmUzlmkuND8mKcky61nb0xzq0KRgVHqBSy2fZRXw
	8M/Nj9izg+HCTtdQrsUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWQ0R-001KsW-9m; Fri, 01 Oct 2021 21:23:47 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWQ0O-001Kra-Bd
 for linux-rockchip@lists.infradead.org; Fri, 01 Oct 2021 21:23:45 +0000
Received: by mail-oi1-x22a.google.com with SMTP id n64so13093799oih.2
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Oct 2021 14:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rQO+lMXU6VmqpbbuMNNIj4s/iSRqxxtzgzbizBnbLmk=;
 b=iSh459FN5Z6Hqy9OYQZTytx3xm7vgeROeRrUA3KkjbSpJr6gHBeJtPg+IG1UktWtKi
 j0nWzggnhcvpJsq6Oc90kySnuaUsE8mLUC3eHw503Ya41vqpbvJSsWuEN9YKwUQQAQ2f
 ku+ZlpxCosstDPHAfe22bGGCKuGlOe0VgHbA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQO+lMXU6VmqpbbuMNNIj4s/iSRqxxtzgzbizBnbLmk=;
 b=k7QxKhv2YTuJ9gfVWHGwClydoP9yx0GtQvfRZRx6desZVNiB1UHA0jNKOf5gzHkbrz
 mHtOIpRB3Tdj2dEWoUY3Na8dT4gkayQLxq/OGgS3q/s3aejMTq88CbDLabLvrkjyfV+3
 cegmDdXXFBN5PJjpqoDPpjJ00dMjrRV9r1mSZ2UOXtu0XvoTToWDW0qq95fftCE5fHqI
 lwkBvv6VTUr52lEI31ZJ/IKuisEy6KLW2RYIDeRQ+PVohllKKOd78iwpSHw+Ty0FNrpu
 M2vqOYCC9rLAI7xJC/vIQB2jdqHDw953YIbeJs87haDEoDikVF0kHipHt5wS26DEK/JP
 e/NA==
X-Gm-Message-State: AOAM532fELf82YZePNRERNunC3raL4Ka5DK8The9TQo574XIuQPv9801
 ZpCY+rYoZDQXOhmCUKscY/Mf1+2wMG7Rtg==
X-Google-Smtp-Source: ABdhPJwgjTacTcdHdpurzCGRdPbzwtGQ63MtD1BI6Ypph9c/K0iCpRppzfxIPGYAIWto+gdoomZFtg==
X-Received: by 2002:aca:1e04:: with SMTP id m4mr5469372oic.67.1633123421831;
 Fri, 01 Oct 2021 14:23:41 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id bb39sm508028oib.28.2021.10.01.14.23.40
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Oct 2021 14:23:41 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id
 5-20020a9d0685000000b0054706d7b8e5so13150233otx.3
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Oct 2021 14:23:40 -0700 (PDT)
X-Received: by 2002:a05:6830:112:: with SMTP id
 i18mr82821otp.186.1633123420525; 
 Fri, 01 Oct 2021 14:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210929144010.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <20211001203722.GZ2515@art_vandelay>
In-Reply-To: <20211001203722.GZ2515@art_vandelay>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 1 Oct 2021 14:23:29 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNqwGWLHV5sPeUebd1AzPzLJva5hWm-385A+5vgQYMvVQ@mail.gmail.com>
Message-ID: <CA+ASDXNqwGWLHV5sPeUebd1AzPzLJva5hWm-385A+5vgQYMvVQ@mail.gmail.com>
Subject: Re: [PATCH] drm/brdige: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Sean Paul <sean@poorly.run>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Linux Kernel <linux-kernel@vger.kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, stable <stable@vger.kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_142344_460682_3717297F 
X-CRM114-Status: GOOD (  16.76  )
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

On Fri, Oct 1, 2021 at 1:37 PM Sean Paul <sean@poorly.run> wrote:
> On Wed, Sep 29, 2021 at 02:41:03PM -0700, Brian Norris wrote:
> > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > @@ -1632,8 +1632,23 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> >                                      struct drm_dp_aux_msg *msg)
> >  {
> >       struct analogix_dp_device *dp = to_dp(aux);
> > +     int ret, ret2;
> >
> > -     return analogix_dp_transfer(dp, msg);
> > +     ret = analogix_dp_prepare_panel(dp, true, false);
> > +     if (ret) {
> > +             DRM_DEV_ERROR(dp->dev, "Failed to prepare panel (%d)\n", ret);
>
> s/DRM_DEV_ERROR/drm_err/

Sure. Now that I'm looking a second time, I see the header recommends this.

> > +             return ret;
> > +     }
> > +
> > +     pm_runtime_get_sync(dp->dev);
> > +     ret = analogix_dp_transfer(dp, msg);
> > +     pm_runtime_put(dp->dev);
> > +
> > +     ret2 = analogix_dp_prepare_panel(dp, false, false);
> > +     if (ret2)
> > +             DRM_DEV_ERROR(dp->dev, "Failed to unprepare panel (%d)\n", ret2);
>
> What's the reasoning for not propagating unprepare failures? I feel like that
> should be fair game.

I suppose the underlying reason is laziness, sorry. But a related
reason is the we probably should prefer propagating the
analogix_dp_transfer() error, if it's non-zero, rather than the
unprepare error. That's not too hard to do though, even if it's
slightly more awkward.

> > +
> > +     return ret;
> >  }
> >
> >  struct analogix_dp_device *

v2 coming.

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
