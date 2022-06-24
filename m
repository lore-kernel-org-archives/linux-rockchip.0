Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DEA7C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 07:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzxRS8lM/8Mlp6umbtDAgFKW8d52/oQy3FdDW/Ui/4g=; b=K6/F9WPKBg5Vhe
	l1mRzlGox/lWAWiqXOHS4aIwNIwNCJcvLADPPGJtZLGBTk9WDGZpgIeeb127aw/SazgGpsGscDUKU
	cz73Ir885HGiL4Wl3e/XPzOWmkoRHD2/7orlwsbYveqAqmrrpNm+oExRGv7n0l4pz+AvKpqbosMiV
	GtCEcVEhpejPTf4hsuqd7dOHRTu9uHlwdPb7q7jNGh4tIOX2yTmr3YcuJ7vGzjXpppni77z0kCNWB
	77PdFbn+0AZy8YLbDfUtQ7Z+IzxX/0S/BqteiOgSmzMbmkYEblU5ZOrViEFBaroTAR10svZRATcZE
	38rJyQPN2doUT2CP64xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4dfB-000zIU-TD; Fri, 24 Jun 2022 07:23:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4df9-000zHO-0W
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 07:23:32 +0000
Received: from p508fdadf.dip0.t-ipconnect.de ([80.143.218.223] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o4df4-00074z-Ip; Fri, 24 Jun 2022 09:23:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH] drm/rockchip: vop: Don't crash for invalid duplicate_state()
Date: Fri, 24 Jun 2022 09:23:24 +0200
Message-ID: <4196825.8hzESeGDPO@phil>
In-Reply-To: <CAD=FV=Wsp6GA=L4GsEVjMqazgtw4qG40gtLq1HT++5e9eRrvTw@mail.gmail.com>
References: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid> <CAD=FV=Wsp6GA=L4GsEVjMqazgtw4qG40gtLq1HT++5e9eRrvTw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_002331_095969_156312B0 
X-CRM114-Status: GOOD (  18.04  )
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

Am Freitag, 24. Juni 2022, 01:44:52 CEST schrieb Doug Anderson:
> Hi,
> 
> On Fri, Jun 17, 2022 at 5:27 PM Brian Norris <briannorris@chromium.org> wrote:
> >
> > It's possible for users to try to duplicate the CRTC state even when the
> > state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
> > users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
> > with a WARN_ON() instead of crashing, so let's do that here too.
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +++
> >  1 file changed, 3 insertions(+)
> 
> I'm not an expert in this area, but it makes sense to me to match
> drm_atomic_helper_crtc_duplicate_state() in this way. Thus:
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> I would tend to assume that this would be landed in drm-misc by Heiko
> if he's good with it. After several weeks of silence, however, I'll
> commit it myself.

I do tend to batch up drm-misc patches, as that is always a different
workflow but I'll pick that up :-)

The interesting question would be, do we want some fixes tag for it?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
