Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A374C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 18:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w40dVpehV9EJhv2UHreoz7jqpuPU03/vHwgcfTaU9Uw=; b=rmzsXB7wGDdro7
	rlR3qalzDYbPpObW0hZFYcbKYQNN5w5tnYkXf8LmFAC5dlIfJbbAP6811dqYV5a8RMZOD/RYFHXMX
	yKA5PPb+s8Kksj+1CckcRUMaspcCQvUoWDvtitjz03A70Plh/7Rp84asf2f1WQJBT7/cLiJPiT61e
	PyP0Ywr8xaKBrdZ9e25OTOywTKRgGqhRLVvuFIsj/RnOaUpZFZ6AOfpxN0igjKIoc60mDTbIjzZyY
	1RAiQ948HIsNItnDGQCvyHRMYp9A4/uM2U7H8Y7wj0YFv93PyYDTdN6cQnX4h42YjLjBuJAPvy698
	Glls16jLDdZc3kkhcL4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKOlA-0083tu-Ax; Wed, 16 Feb 2022 18:10:36 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKOl7-0083sN-3S
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 18:10:34 +0000
Received: by mail-io1-xd32.google.com with SMTP id e79so652392iof.13
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Feb 2022 10:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dhg8ObNqJqU9MXgC8htbZHEYozTLZfTKNUE4M3ppPEQ=;
 b=X3YBCQPLYrjbSwdYieYTzfp5aHHmxsfeg3RTf4qZg0wFQ6+c9DxcKdaAJmOlc37Dsv
 CTdEpl0BzCTg87o7PF2lX4vr7saXRgNN4zH/iPLgcyLTPMZGhRdeuiUlyPMWzB1yffkQ
 L1SizYyjHV+Gfh5MA9OSmEyn4e1glalJ49FS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhg8ObNqJqU9MXgC8htbZHEYozTLZfTKNUE4M3ppPEQ=;
 b=HHrxjElJuSs2lPgGcVYjwPP4gb/wrpQ5NZ6WkWPRliHe/npX7yUgyNeChCOG3dUdEn
 Qec6ZKGwlVoNUrLG6QaPPLb3PVxUn648ZGN/mKBoM/h8eDH4ckng5yUWrsmMcMih8tp3
 +p5R5ICXmPfYiHLrU/oD54wX6tVXFF0z5+yVy7HzKDjcaqZ5osOILvy6HjTQD7xrZEVJ
 gVUAr1lnm3466P0b0/AotD91rOzuC92Fo1dH43Y/alfdU3oWs2Xwl1BY3gDSbMMQs4q/
 yjRENDkdquPbKtCb2Tc+58kKbxRpRwayiwTPB9/uC2Yn20tQdWTkeAcZfZFHv3HlWyUp
 hnJg==
X-Gm-Message-State: AOAM532kR076ddq1ndxq+SRpyGZ/hW93lwyXj4ed4QmxpWCfRmE/LU6+
 dwnej9JYJ+oChHP80G7cWjm+o++7CF9E2A==
X-Google-Smtp-Source: ABdhPJwJc6JMzcyU3wsgK9uamm4mcb/fWWbEeE3JkgDD0CwO59Hrr+RLf1InH5ukUhPwx2DnQ4I9Cw==
X-Received: by 2002:a5d:9301:0:b0:614:549c:4c40 with SMTP id
 l1-20020a5d9301000000b00614549c4c40mr2629739ion.50.1645035031765; 
 Wed, 16 Feb 2022 10:10:31 -0800 (PST)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com.
 [209.85.166.179])
 by smtp.gmail.com with ESMTPSA id f13sm280499ion.18.2022.02.16.10.10.28
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Feb 2022 10:10:29 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id o10so454026ilh.0
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Feb 2022 10:10:28 -0800 (PST)
X-Received: by 2002:a05:6e02:144f:b0:2bd:da3d:f50b with SMTP id
 p15-20020a056e02144f00b002bdda3df50bmr2425111ilo.165.1645035028535; Wed, 16
 Feb 2022 10:10:28 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <CAD=FV=XU0bYVZk+-jPWZVoODW79QXOJ=NQy+RH=fYyX+LCZb2Q@mail.gmail.com>
 <CA+ASDXPXKVwcZGYoagJYPm4E7DzaJmEVEv2FANhLH-juJw+r+Q@mail.gmail.com>
 <CAD=FV=VYe1rLKANQ8eom7g8x1v6_s_OYnX819Ax4m7O3UwDHmg@mail.gmail.com>
 <CA+ASDXO8c4dK31p=kvBABJQsDUs20qVHM6NxYf1JQDCr2oswAw@mail.gmail.com>
In-Reply-To: <CA+ASDXO8c4dK31p=kvBABJQsDUs20qVHM6NxYf1JQDCr2oswAw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Feb 2022 10:10:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XivCxy-7Wszv9pnHELi=gRCMeVasEweza17XTtEoiT4A@mail.gmail.com>
Message-ID: <CAD=FV=XivCxy-7Wszv9pnHELi=gRCMeVasEweza17XTtEoiT4A@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "# 4.0+" <stable@vger.kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_101033_173515_88EA649B 
X-CRM114-Status: GOOD (  22.86  )
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

Hi,

On Tue, Feb 15, 2022 at 4:41 PM Brian Norris <briannorris@chromium.org> wrote:
>
> On Tue, Feb 15, 2022 at 3:46 PM Doug Anderson <dianders@chromium.org> wrote:
> > On Tue, Feb 15, 2022 at 2:52 PM Brian Norris <briannorris@chromium.org> wrote:
> > > It still makes me wonder what the point
> > > of the /dev/drm_dp_aux<N> interface is though, because it seems like
> > > you're pretty much destined to not have reliable operation through
> > > that means.
> >
> > I can't say I have tons of history for those files. I seem to recall
> > maybe someone using them to have userspace tweak the embedded
> > backlight on some external DP connected panels? I think we also might
> > use it in Chrome OS to update the firmware of panels (dunno if
> > internal or external) in some cases too? I suspect that it works OK
> > for certain situations but it's really not going to work in all
> > cases...
>
> Yes, I believe I'm only submitting patches like this because fwupd
> apparently likes to indiscriminately whack at dpaux devices:
> https://github.com/fwupd/fwupd/tree/main/plugins/synaptics-mst#kernel-dp-aux-interface
>
> That seems like a bad idea.
>
> (We've already disabled that plugin on these systems, but it seems
> wise not to leave the stumbling block here for the next time.)

Yeah, it doesn't seem great. I guess it's _slightly_ less bad since
it's for an external device. As I understand it, they never really
turn off in the same way. It still feels like letting userspace
indiscriminately whack at DP AUX registers isn't a great idea, though.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
