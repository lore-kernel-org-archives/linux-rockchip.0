Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E072C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:09:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E728761528
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:09:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E728761528
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wdzzr261VTwvJTBn4YCnX1x9MluMZ3CWCxtX5Kg5xQI=; b=c+ldlMbi3I2gMw
	GyZSga3u/HCwxcDTsppb0IP/1sdZ8E6d5BcXnrDlAlVjkdfqSEhnYBm+iOto6TixemgiCyecVYw/I
	GvBDTUq+kHyiUodEY1d22AOagEQFymhnsXg2l4dnXv8+P/Gno4QzUXzOZHKsSTQhImu4L5oNjeNn3
	bIJMgNUpqrontxR1slrutEUQCR7yi7VF5YwxZ5sgg3omQQTJxMrF2wK2ZxrRFoZESMZy3AQn6r1iS
	A1uF27xm7wK0R510H22gWREWTL6k6s/x3igaAO8gin+6cqLlZa3mVP0IM/Fkmzn0ENHAGLS4gvI4t
	K1ZEcKWsIfhDrWbI4c+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVe1M-00C20G-Ok; Wed, 29 Sep 2021 18:09:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVe1J-00C1z5-LL
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 18:09:31 +0000
Received: from notapiano (unknown [IPv6:2804:14c:1a9:2434:b693:c9:5cb6:b688])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: nfraprado)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C9D6B1F44852;
 Wed, 29 Sep 2021 19:09:25 +0100 (BST)
Date: Wed, 29 Sep 2021 15:09:20 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Thomas Hebb <tommyhebb@gmail.com>
Subject: Re: [PATCH v3 3/4] drm/rockchip: dsi: Fix unbalanced clock on probe
 error
Message-ID: <20210929180920.mczakda7msbojrxx@notapiano>
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.3.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928143413.v3.3.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_110929_854619_BE5F3C2D 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 28, 2021 at 02:35:51PM -0700, Brian Norris wrote:
> Our probe() function never enabled this clock, so we shouldn't disable
> it if we fail to probe the bridge.
> =

> Noted by inspection.
> =

> Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridg=
e driver")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Tested-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
