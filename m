Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AF44C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 22:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYhx3DFo+5mq21JUDCes1Wqh9OYsFlKtD9EzTHG2bZs=; b=dLhxNry2iPCE1/
	5bIcm4GHrfYJtMqMEJdVTCtlMYlXsCMJlZ9gJkYuhV23NqfQ67dOmUGF8xHHizZcpJ9a2vZe8Co+M
	0DR7A6w0+qb0EuGwhttg/G8yEkR940PDZ1dgdbUbDzDW7TcSN0LGIP+zV9jSTJbUpo4UrC7PvVnAn
	8TgwH1wk/2tF6IZkqIKVQ1X9yrT4eDnSgKVtvFZcG88R9rGp8cBFlQbBz0+Fhpwtwsm4k864wy1fQ
	wnarD4AkFQ3aHm9YQYt/rHfs54MX1q+4McrWF2i9F26LOwROO00u4j6SLPitI8o8+vR4iNXryhRVX
	Wzt35xyZecl/A37eealA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMdMW-00BkzR-LV; Tue, 22 Feb 2022 22:10:24 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMdMT-00Bky5-5H
 for linux-rockchip@lists.infradead.org; Tue, 22 Feb 2022 22:10:22 +0000
Received: by mail-ej1-x62c.google.com with SMTP id bg10so47154749ejb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 14:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MwFKzwhh8vOvVeS07pTWz4ZTdQ5Z+NLOUhpyVBv4D9Q=;
 b=O/jITcbrb5aoH7sPwYaBWxEd+YJ1x5KXbkQkrtCB64fkBBeXrwXPwYjpNDLLVqLhLE
 6P0xsF4mDd7F1fKigupRlFmDpfR0WeyGmbS0FOt+X0dNG1Hek8yTglcMvfFxiWjE0hib
 JI1CvKC/XX+jb6fFHdB6lGrJYWiPMqlROrssQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MwFKzwhh8vOvVeS07pTWz4ZTdQ5Z+NLOUhpyVBv4D9Q=;
 b=Ypo1ymTXzfLmypi2xkHXwraL+xwGbf6oa2Tf/WNitMK11b1KGNMrffzb+OjtbDpeGF
 k5hC2YfKGsCibCAk9Di+Von35NtkWsutn6e2YEUGa4xAw9E17Q41mB2nRWKHbyX4a4mZ
 XEvFmZk0DAIgUKMmhuSKfbiIwmXPuzzq5e0m8iboxRd77/T6u7JEQ8+EcXPmWLrMTQiQ
 W5wPv2gWvwt0i9qyZJFLTm00hKMcIqgFAKpWZ98nVM9pvcQyO3gZ30cdY8y7Y48Ubp0T
 bXdyfGal9Uz6kwmiNKDzUnXYlAXK2Ugv/iCXqwCUo9rJocSAKLDqkcQ9QsiK+yf1MURX
 xUkw==
X-Gm-Message-State: AOAM5301xjt62dE1/j6eNqOdl3L1Ly5Pi1B1z8eQm3fszALST9tLJ5Cx
 gV5hU9htbhU3DXP4ElCreZ0wIf5IopK/E3fvPIY=
X-Google-Smtp-Source: ABdhPJxgAiiMoJW03sWmRyLihVq826xdISQISoiga/S1xZC7sXY/plLynGtXQaoiZYgE6YRAnI0F/g==
X-Received: by 2002:a17:906:f2cc:b0:6ce:7164:ac9a with SMTP id
 gz12-20020a170906f2cc00b006ce7164ac9amr20450134ejb.629.1645567819726; 
 Tue, 22 Feb 2022 14:10:19 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id u4sm6737858ejn.216.2022.02.22.14.10.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Feb 2022 14:10:18 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id c192so12514218wma.4
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 14:10:18 -0800 (PST)
X-Received: by 2002:a05:600c:228e:b0:37c:2eef:7bf with SMTP id
 14-20020a05600c228e00b0037c2eef07bfmr4903688wmf.73.1645567818110; Tue, 22 Feb
 2022 14:10:18 -0800 (PST)
MIME-Version: 1.0
References: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
In-Reply-To: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 22 Feb 2022 14:10:04 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XmqG13QuyxpcS9sN2UCtPWDyhD_T1xjkDf8tp-_bSOWw@mail.gmail.com>
Message-ID: <CAD=FV=XmqG13QuyxpcS9sN2UCtPWDyhD_T1xjkDf8tp-_bSOWw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/bridge: analogix_dp: Grab runtime PM reference
 for DP-AUX
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 "# 4.0+" <stable@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_141021_221501_150911BE 
X-CRM114-Status: GOOD (  15.50  )
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

On Thu, Feb 17, 2022 at 2:42 PM Brian Norris <briannorris@chromium.org> wrote:
>
> If the display is not enable()d, then we aren't holding a runtime PM
> reference here. Thus, it's easy to accidentally cause a hang, if user
> space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
>
> Let's get a runtime PM reference, and check that we "see" the panel.
> Don't force any panel power-up, etc., because that can be intrusive, and
> that's not what other drivers do (see
> drivers/gpu/drm/bridge/ti-sn65dsi86.c and
> drivers/gpu/drm/bridge/parade-ps8640.c.)
>
> Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
> Cc: <stable@vger.kernel.org>
> Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v3:
> - Avoid panel power-up; just check for HPD state, and let the rest
>   happen "as-is" (e.g., time out, if the caller hasn't prepared things
>   properly)
>
> Changes in v2:
> - Fix spelling in Subject
> - DRM_DEV_ERROR() -> drm_err()
> - Propagate errors from un-analogix_dp_prepare_panel()
>
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
