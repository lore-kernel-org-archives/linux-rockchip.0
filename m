Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F288FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 23:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XYToJL9QOs9cr5GctizrZbMmufI9IR3gfVpBAmrHiw=; b=lheiSC89/W+vAr
	LACIawpyBZ6ft5VJ+ehepj5o7uC4xanuGoxotpMUssZ3AVnBSRbINMlXIo1ifQUDGtmPTBV8RqGIA
	4lr0YrY1mexnfcJhekschQNEc1unC0XvGEXpg2EGvJwBP/klHH/9b2yQeP6+tJJycKFjTJk6gJMZb
	U+jN83eUc3zvWVpgHOkoa2wNUBFT5OwEq1P8p9QYcJiqizl4mHWflq1eRIQGqiF7CQnJTpChn4ChM
	3S8WOenzlWPtrikI+//IvdjOik+ff2jI8EO1/p9FzcFvDc60j+mn+WZMGhNaW0ySljCFACwljakls
	dP9rduTZDMUE0EGoO7Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPuSy-0081yM-Tp; Thu, 03 Mar 2022 23:02:36 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPuSw-0081x8-K6
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 23:02:35 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r13so13850205ejd.5
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 15:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QYz72xS4UEUEZyA/zmJjeRPqsPKoO6eSb+1q4FNlVR8=;
 b=l6FIj3aats2SLjz57UHUFzeX+1E7k3S4Dlpstfnlv80RVlxrN8PxjndVH7iYewpCSq
 Xyhxd+QRKRv3vVvSZb2z4KiSw3xMy1qgAriSSd2zu2wTAj9I5snO+A0DBK9Sv3Cr4A7n
 f39aaXyoc2P3YxjLzmAQQ0cYuuX07Cz/93Qug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QYz72xS4UEUEZyA/zmJjeRPqsPKoO6eSb+1q4FNlVR8=;
 b=Ghb+wPtyzTw6QzdS9VVjVZkJe8L2qzi12C9h/eswvp4YnvDy7dgHtDdgEpzYzVg2IM
 htfg/4JMd2sgnMjODJlRG9CyvlmQ4QbqR3LC8+6QnWEGVOk3izxz/xbNOU/XtKAHw+Dx
 DSZfpyjaObNClS8vtspCYozEZvE0TZO8l0QR/iyUy39FBC9z3v5BetHcC1rHKitvohg2
 sQItq8ijGsWZDUxpkY9MyqhGv7AMiN0Y0khGCGoTJMDEd8OVV4W8dpXHL17pbjISjpwy
 HPFBswa9lMIlEnVWviN35HWWPiGLAaePiVVfCFiqvjg6IYd8EaAlqqS1wApKhqMVFE/h
 69yg==
X-Gm-Message-State: AOAM532SaSE4UE9KWdKewNPZGGmkGxGmOOD8f0CY9eFIdEeLi+0MQNlk
 IL0Mx62Xa4BaHET5i1ZWE2uTyPnioUu7AQ==
X-Google-Smtp-Source: ABdhPJwfSgQBsTJWgX0CqHY5mXYDSIhASXoByzoJ3SA8ud8L0Y//gvZAUYZIaB0TyfcPGQYj5OZvSQ==
X-Received: by 2002:a17:906:5ad6:b0:6cf:5d7d:45e1 with SMTP id
 x22-20020a1709065ad600b006cf5d7d45e1mr28650681ejs.226.1646348552856; 
 Thu, 03 Mar 2022 15:02:32 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46]) by smtp.gmail.com with ESMTPSA id
 d4-20020a056402000400b00412d60fee38sm1385453edu.11.2022.03.03.15.02.31
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Mar 2022 15:02:32 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id bk29so10044006wrb.4
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 15:02:31 -0800 (PST)
X-Received: by 2002:a5d:64ed:0:b0:1f0:6672:f10c with SMTP id
 g13-20020a5d64ed000000b001f06672f10cmr1270642wri.679.1646348551347; Thu, 03
 Mar 2022 15:02:31 -0800 (PST)
MIME-Version: 1.0
References: <20220301181107.v4.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <20220301181107.v4.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
In-Reply-To: <20220301181107.v4.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 3 Mar 2022 15:02:18 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X6jf-UbCzB23MjBWwfs0HcHuoE9ozd3FZxN1U-H_8Saw@mail.gmail.com>
Message-ID: <CAD=FV=X6jf-UbCzB23MjBWwfs0HcHuoE9ozd3FZxN1U-H_8Saw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220303_150234_682995_BAA3F534 
X-CRM114-Status: GOOD (  17.95  )
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

On Tue, Mar 1, 2022 at 6:11 PM Brian Norris <briannorris@chromium.org> wrote:
>
> DP AUX transactions can consist of many short operations. There's no
> need to power things up/down in short intervals.
>
> I pick an arbitrary 100ms; for the systems I'm testing (Rockchip
> RK3399), runtime-PM transitions only take a few microseconds.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v4:
>  - call pm_runtime_mark_last_busy() and
>    pm_runtime_dont_use_autosuspend()
>  - drop excess pm references around drm_get_edid(), now that we grab and
>    hold in the dp-aux helper
>
> Changes in v3:
>  - New in v3
>
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

This looks great to me now, thanks.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Though I'm not a massive expert on the Analogix DP driver, I'm pretty
confident about the DP AUX stuff that Brian is touching. I just
checked and I see that this driver isn't changing lots and the last
change landed in drm-misc, which means that I can commit this. Thus,
unless someone else shouts, I'll plan to wait until next week and
commit these two patches to drm-misc.

The first of the two patches is a "Fix" but since it's been broken
since 2016 I'll assume that nobody is chomping at the bit for these to
get into stable and that it would be easier to land both in
"drm-misc-next". Please yell if someone disagrees.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
