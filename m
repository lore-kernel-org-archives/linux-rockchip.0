Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB82C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YQ7SyQdsrjG9+yNQdsZXNd4/8tj0W2610kPcVwWX2I=; b=BKxb6JDAhXQVSZ
	UYzb4e29YyZXTKX3vNPqyF0wGfKwU1pO1hJA/9+KvfCUHVWLYqcmq6f9v6lr9C7Vw/scsciudpFRB
	Rq1vLLFPAMYyKu5zQEd/k8ABigo30cvAkiLfwA1iGzhI9Vc8YiF4ZrFp2h8k2zyTYR78NcuDoKIC7
	EcjCEjYlSkxI/EJXIJEebmYCnQDm+Yz7fgGJM09aghDjL7ZH/Ip7RjMieubb5Tu11/sR44wwZIfVy
	TfmTC5w9d/lq33vAf9U6VZHtbGTTuIk3x+wgxElARp/j1IdaxJ0xV3i7pyIePrYThYDJ78AYxbGZB
	6wfjtT19qVVBhjwkaQ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRynW-009Fru-Kp; Wed, 09 Mar 2022 16:04:22 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRynT-009FqV-TR
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 16:04:21 +0000
Received: by mail-ed1-x531.google.com with SMTP id h13so3479147ede.5
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Mar 2022 08:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fZqCvAf0xgF95WkOEHDGm/vV6tt9EczTXGvjsdd1WwE=;
 b=OrxNHdDIFcqZV/a5MLxU2Ga+L+3AhRk/xIdWG4X6CSM8T9JSvLsWCzqG2gdhBVtm+w
 I2R5dYX3JEgvMByVLyxwG5LU9G7iMJGA2/St5e+WlHM3UHASFMB+Be4NEXN3uJRfKZt4
 fqSO0EYAd4ll6cQJ3PUK1BZcENVS1MwedBTio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fZqCvAf0xgF95WkOEHDGm/vV6tt9EczTXGvjsdd1WwE=;
 b=7ymY/W8/QntCJ36jt9htMP7CTaljsCdxyCMR7ZmwILXYLtTztg/O+UMqd2JBF9gD0C
 3YHpfnNZBR21DntmEKHvVnbey2OWr4bbVORqMUY60I5iGNKZFKRnUtdQXMwT4Hqxn8Bc
 3sOUx4M45ys4KWIV+f0HLgiKAXVGR+7ZRYS6t9qP7FJjfqDZTg/3uXKDNiNsbMQGbTfy
 1Zh3AnFM16jsRptHivgYiBPRcf19bO2Zwa3eIQO4UNRCni/Y4JMh02ii0KefsCPwdeqN
 IS2h8qM2EpYI2R8TYD7rISNaT5wlMJHJZQ29w44+0zmrzk1JF3rTF79IEnZFxRjlmsoe
 xHQQ==
X-Gm-Message-State: AOAM53365c6aLaX3fXcaSCs/Kx13PsTTRcWV0+SZw5m+7uRA1tBE7RHN
 sSE3GAg/6A2MhRFkvBg35K1Q6v+JKwkjUrZG
X-Google-Smtp-Source: ABdhPJznUipwnKucjDEK2C2LOrowFgy/uRutld/xRMSpgIQq3zoItLZ4TRgMHDo6w0EGqKsUlSNoyw==
X-Received: by 2002:a05:6402:35d2:b0:416:4c38:1537 with SMTP id
 z18-20020a05640235d200b004164c381537mr138874edc.260.1646841856262; 
 Wed, 09 Mar 2022 08:04:16 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51]) by smtp.gmail.com with ESMTPSA id
 u9-20020a170906124900b006ce88a505a1sm921825eja.179.2022.03.09.08.04.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Mar 2022 08:04:14 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id
 7-20020a05600c228700b00385fd860f49so1795588wmf.0
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Mar 2022 08:04:14 -0800 (PST)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr8067411wmc.29.1646841853982; Wed, 09
 Mar 2022 08:04:13 -0800 (PST)
MIME-Version: 1.0
References: <20220301181107.v4.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <20220301181107.v4.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
 <CAD=FV=X6jf-UbCzB23MjBWwfs0HcHuoE9ozd3FZxN1U-H_8Saw@mail.gmail.com>
In-Reply-To: <CAD=FV=X6jf-UbCzB23MjBWwfs0HcHuoE9ozd3FZxN1U-H_8Saw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 9 Mar 2022 08:04:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V+HNSihpg+nMS52w9VWhfkbv+HR4F-XfS+GZ8JdSJBJw@mail.gmail.com>
Message-ID: <CAD=FV=V+HNSihpg+nMS52w9VWhfkbv+HR4F-XfS+GZ8JdSJBJw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/bridge: analogix_dp: Enable autosuspend
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Jonas Karlman <jonas@kwiboo.se>, dri-devel <dri-devel@lists.freedesktop.org>, 
 LKML <linux-kernel@vger.kernel.org>, Sean Paul <sean@poorly.run>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_080419_983709_20D6C278 
X-CRM114-Status: GOOD (  23.86  )
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

On Thu, Mar 3, 2022 at 3:02 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Mar 1, 2022 at 6:11 PM Brian Norris <briannorris@chromium.org> wrote:
> >
> > DP AUX transactions can consist of many short operations. There's no
> > need to power things up/down in short intervals.
> >
> > I pick an arbitrary 100ms; for the systems I'm testing (Rockchip
> > RK3399), runtime-PM transitions only take a few microseconds.
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >
> > Changes in v4:
> >  - call pm_runtime_mark_last_busy() and
> >    pm_runtime_dont_use_autosuspend()
> >  - drop excess pm references around drm_get_edid(), now that we grab and
> >    hold in the dp-aux helper
> >
> > Changes in v3:
> >  - New in v3
> >
> >  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
>
> This looks great to me now, thanks.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Though I'm not a massive expert on the Analogix DP driver, I'm pretty
> confident about the DP AUX stuff that Brian is touching. I just
> checked and I see that this driver isn't changing lots and the last
> change landed in drm-misc, which means that I can commit this. Thus,
> unless someone else shouts, I'll plan to wait until next week and
> commit these two patches to drm-misc.
>
> The first of the two patches is a "Fix" but since it's been broken
> since 2016 I'll assume that nobody is chomping at the bit for these to
> get into stable and that it would be easier to land both in
> "drm-misc-next". Please yell if someone disagrees.

Pushed both to drm-misc-next:

f28dd5075675 drm/bridge: analogix_dp: Enable autosuspend
8fb6c44fe846 drm/bridge: analogix_dp: Grab runtime PM reference for DP-AUX

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
