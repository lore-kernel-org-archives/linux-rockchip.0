Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A399AC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 19:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqPRqJMr37UQ4oxQvQXc26STxUfUwNfvjzu8Av9M6Z4=; b=2MshNrawk/F4yq
	tE692jE2B4rXEsLfc6cQEFWYqD4H5YaywFChjnVWsoEtri7zmqXig28tC6Hvmja025U5hjAQ6bhee
	ubJgz+YoxKJ/I4SWWs/3IEEWk3Rovk2rS89NabLNcP/+bYQHyejcEEtGd6x6kuCNGTsLHkqbHc6Vw
	7rqQ1TW+e11VnXT2dP46Xn/dxHvx+CEbHFbZOGs5c1Dr9QcYnkCClp0yG122xyQ7IyKIFARE6/HA9
	tolKgOiMhyI2A4x8jZ660yBZMG8OukYJrcKUc0929QnmNqTPB+Zs5tgGMro2gJnufwOkxwJv6Acpn
	E45mZD+uGwuQBxdlJ5dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDsLf-00EaFC-R7; Fri, 06 Jan 2023 19:25:51 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDsLc-00EaEH-Iu
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 19:25:49 +0000
Received: by mail-pj1-x1034.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso6210286pjt.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 11:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uxQq5OsPBQFav8FuAajxIExQ+FkVdz7c0EkTv5l/tRI=;
        b=LBNZFQBWQjoz3m56JhOuWZSRkZ6sIJyW0+zkls88KNVqx6ueQlB1fEgi//LPGqbeFu
         3uzdbxVriLfz6MURcwOgECHpl5gtBtkGKFfV4FAMveAObnIJwuMgM7tdFFtOQDp1nIsc
         tg6qNQRddwXCNeg7f6GFTM5Fd4jGQ4XejdT0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxQq5OsPBQFav8FuAajxIExQ+FkVdz7c0EkTv5l/tRI=;
        b=FzYlVFCqb4NRjmr5LLuxt0BoX1TqmJS3Rb6TtjCZEutjU2usI2NGJYTc2a1oxJrDXj
         /6G0Lbamis1DaLthn1ENtdVg5Tb0ytXJX6axdtYN83yqVV1o+x2jPyQutaIUFG8QXgHr
         egFihWJG3ZOtN7/pKqXsiScRX8uTX3z7ok8+60xRo7QdTu3i4lBHNatuEEkNjM3crBpR
         91m32TX5/xk0OOgW/LDjRalyT2ydSv66JONZMxDrO9JWHcbDiSUPLNmq6njfR4Jsi98m
         bzw4658qVNuckUVNRCEZ5/XhBYSj1vkjgUyhM0e6tSiNOUktCOh2VXbwP5eddW1XrI5m
         DFFw==
X-Gm-Message-State: AFqh2kqxvEvORv6HLF8NLxDVAI+cUlx6ZZXmM7PgSvsZ4xVAeajQZvNv
	5kM7ydsbDHRhsvQFCrloTtbweEc3QBWacsnJ
X-Google-Smtp-Source: AMrXdXtejaeCic0Krve8ArpgewZ5oAi0jUSsD4lK/sgmiHZFOc1fwcfCY/4tcCRMstxIA2T2/7YxDw==
X-Received: by 2002:a05:6a21:999c:b0:ac:6d11:1ec7 with SMTP id ve28-20020a056a21999c00b000ac6d111ec7mr86001378pzb.17.1673033143884;
        Fri, 06 Jan 2023 11:25:43 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with ESMTPSA id 22-20020a621816000000b00577c5915138sm1442698pfy.128.2023.01.06.11.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 11:25:43 -0800 (PST)
Date: Fri, 6 Jan 2023 11:25:41 -0800
From: Brian Norris <briannorris@chromium.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7h1tVRI8qsBK9D8@google.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hjte/w8yP2TPlB@google.com>
 <Y7hmeBBRqgnwQ2O6@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7hmeBBRqgnwQ2O6@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_112548_647352_E38B15B4 
X-CRM114-Status: GOOD (  26.42  )
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

On Fri, Jan 06, 2023 at 07:20:40PM +0100, Daniel Vetter wrote:
> On Fri, Jan 06, 2023 at 10:08:53AM -0800, Brian Norris wrote:
> > OK! Then that sounds like it at least ACKs my general idea for this
> > series. (Michel and I poked at a few ideas in the thread at [1] and
> > landed on approx. this solution, or else a fake/timer like you suggest.)
> 
> Yeah once I stopped looking at this the wrong way round it does make sense
> what you're doing. See my other reply, I think with just this series here
> the vblanks still stall out? Or does your hw actually keep generating
> vblank irq with the display off?

I might not be understanding all of the IGT tests that I've run through,
but the display is not actually off -- it's sitting on a still frame.
But yes, IRQs still come, and I see no hangs.

This is also ref'd in patch 2:

  bed030a49f3e drm/rockchip: Don't fully disable vop on self refresh

So, we're not even doing that much to power-down the CRTC/VOP. That's
probably why IRQs are still active, contrary to your expectation?

NB: this is how Rockchip Chromebooks implemented PSR from essentially
day 1.

> > On Fri, Jan 06, 2023 at 06:53:49PM +0100, Daniel Vetter wrote:
> > > We might need a few more helpers. Also, probably more igt, or is this
> > > something igt testing has uncovered? If so, please cite the igt testcase
> > > which hits this.
> > 
> > The current patch only fixes a warning that comes when I try to do the
> > second patch. The second patch is a direct product of an IGT test
> > failure (a few of kms_vblank's subtests), and I linked [1] the KernelCI
> > report there.
> 
> Ah yeah that makes sense. Would be good to cite that in this patch too,
> because I guess the same kms_vblank tests can also hit this warning here?

Well, before this series: no, those tests don't hit this warning. The
warning is only uncovered after patch 2. If I do just patch 2, it's
super-trivial to hit the warning. You just have to turn the display on
and go idle long enough for PSR to activate once. I suppose that can
count as "caught by a test", with a little stretch of the imagination.

At any rate, I'll improve this description to refer precisely to the
"next patch" (as Greg suggested already), and that might involve
describing this test case a little.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
