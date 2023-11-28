Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4932CC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 08:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxmExkr2ZLvpKiQwSzdKHyHHQoXFgradeEYvRK3Tcfo=; b=TE/Y95KSCb+rHB
	srvapHDwYK+wbvEKo78e0BI5W4kUILYXfJwqQfbu8q0U+G6oyzM4QpSVkJ1+Wqs6Vi9J9aNJSFMbt
	ypnAPfqpHZuhYf/ncDr5XPeQ3gdRdqNSjGpLFXG92fvDTQpbmAtD9hEMRhMlGTScRCgsElwOG6sWI
	QDC4YIfUkeiCcJnyrhBf2Nsra93qLfiQw7aOFzzoSVsAbm626BNxqkyxUuPDO3x1hbznoeZ2pGnyj
	hOrF1nsB/WmdmpmUNH6Zu6awT5wuNAlN9JrQQ6tG6nvqtrJ81oMsHqEqocRBnRwjB3NsBe+ONrS8m
	maphqdV4iVgnEOixCVAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7tUR-004Xbc-1B;
	Tue, 28 Nov 2023 08:30:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7tUO-004XZq-2I
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 08:30:41 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7tUD-0002DK-Ck; Tue, 28 Nov 2023 09:30:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform bit for
 cluster window at linear mode
Date: Tue, 28 Nov 2023 09:30:28 +0100
Message-ID: <15178289.EVyyLHbfrO@diego>
In-Reply-To: <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
References: <20231122125316.3454268-1-andyshrk@163.com> <3927498.QCnGb9OGeP@diego>
 <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_003040_749019_B2496073 
X-CRM114-Status: GOOD (  19.82  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 28. November 2023, 09:03:46 CET schrieb Andy Yan:
> Hi Heiko:
> =

> On 11/27/23 23:02, Heiko St=FCbner wrote:
> > Am Mittwoch, 22. November 2023, 13:54:25 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> The enable bit and transform offset of cluster windows should be
> >> cleared when it work at linear mode, or we may have a iommu fault
> >> issue.
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > I guess same here?
> >
> > Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> =

> =

> I'm not sure if we need a Fixes tag here,  in fact this issue never happe=
ns on
> =

> rk3566/8 , because the cluster windows of rk356x only support afbc format,
> =

> they don't have a chance to switch between afbc and linear mode.
> =

> Of course, the lack support of linear mode of rk356x cluster windows is a=
 thoughtless
> =

> of IC design, if it really support both afbc and linear format, we indeed=
 need this fix.
> =

> The situation is the same as patch 03/12.
> =

> So I hope follow your advice, if it need a Fixes tag here.

ah ok, thanks for the explanation. Then I guess we don't need a fixes tag
when the rk3568 is not affected by this.

Same for the other patch. If you're re-sending you could add this informati=
on
to the commit message though. (existing support for rk3568 only supports
afbc cluster windows and is therefore not affected)


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
