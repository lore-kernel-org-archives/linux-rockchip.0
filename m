Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A4FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 20:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfgT8YR0PnPBaQwwXC74wIPJ8zCiOcvf3qRmM2bcMZU=; b=DocqVUzqp3RVMW
	OYd63ZwW3enZad6OQen9gRTAI3yISVkkyxxX2b8fxhdYxBEOjg1q5+mlhX6ZeSMWWT0vID0yYjPnL
	OR0zb7TUVVuKkLlhv4uIKwkmoZMilCj2O1vVYZRohLvuwFD5mQzmODxMTIUi8chcYdfWK0ia3zkGo
	UhQAyFu5IE1RlE+Xy3ic9GqVw6Sb9m21SasiPYdomlddak1Gwz1aZKP/QrYoToa1+OPcCGj/oXDql
	1WJ6TX5C0v5/+1JQIo9FUZXRzKvmIQDTzBnKFWbkPFJU6cE8nwGbsjrc7h4nZCPSHJb4Lid7MIQ0/
	WaMdefRPRa+L1P2ITm9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4q3z-003lEX-U2; Fri, 24 Jun 2022 20:37:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4q3x-003lDO-0J
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 20:37:58 +0000
Received: from p57b77c73.dip0.t-ipconnect.de ([87.183.124.115] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o4q3s-0003j9-0C; Fri, 24 Jun 2022 22:37:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH] drm/rockchip: vop: Don't crash for invalid duplicate_state()
Date: Fri, 24 Jun 2022 22:37:50 +0200
Message-ID: <4134988.X513TT2pbd@phil>
In-Reply-To: <CA+ASDXOzhoooDDJUWV7rKpz-7GkMR5v=3gKQt4XazTSgnY51WQ@mail.gmail.com>
References: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid> <4196825.8hzESeGDPO@phil> <CA+ASDXOzhoooDDJUWV7rKpz-7GkMR5v=3gKQt4XazTSgnY51WQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_133757_090609_7150F4FC 
X-CRM114-Status: GOOD (  19.19  )
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

Am Freitag, 24. Juni 2022, 19:57:53 CEST schrieb Brian Norris:
> On Fri, Jun 24, 2022 at 12:23 AM Heiko Stuebner <heiko@sntech.de> wrote:
> > The interesting question would be, do we want some fixes tag for it?
> 
> I'm not aware of any currently-upstream code that will hit this [1].
> I've hit it in out-of-tree code (or, code that I submitted to
> dri-devel, but wasn't accepted as-is), and this is the "belt and
> braces" part -- the primary fix is that we should avoid calling things
> like drm_atomic_get_crtc_state() at inappropriate times.
> 
> So, is the "extra safety" check really something that should go to
> -stable? (Because let's be honest, everything with a Fixes tag goes
> there.) Maybe?
> 
> Anyway, if you want to "blame" anything, this commit actually dropped
> the safety check:
> 
> 4e257d9eee23 drm/rockchip: get rid of rockchip_drm_crtc_mode_config

I tend to think, if we know that connection we should also include it :-) .
I wouldn't include a cc-stable for the reason you mentioned, but to me
it makes sense if someone reading the git history in the future can easily
know that information - so it doesn't hurt :-) .

So I'll add that when applying.

Thanks for supplying the origin commit
Heiko

> 
> Brian
> 
> [1] But I'm not omniscient. So maybe it's good to have anyway.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
