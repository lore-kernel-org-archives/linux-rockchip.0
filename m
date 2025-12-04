Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7CBD2168B
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsOI2u8WCOZ6YhaFWaxzof5ivKpn0dp6CvgZ0QGy/1c=; b=p/KxCZMqOv4MZr
	SFZB93PsppLRDH8XJj+FT4H00IqG2DGLQ2ZnuKgVg/81FH3bS85eyrfZsMRiCIFl0Q1jQjPvvrMQA
	oxkttFoiAexvm87E3cVvRR/CRaO0YwiaOKk3mCX6duFEZxtYm1s/vSHh/2irH3bCxZAmBiYl/FX9Z
	eIi+bOI+QbTCEIrxGWdlAAL9hfwlWZDq7HtSrD2QZWaK4swQZ+QVblJiK7trrlfLgGDvyO1vayrrF
	TxXkJJOtJ0OUmxCt26dJZQKHpVQ+nfbgj34M7OsTQkedE1eWIDvO1Z5MrivocFqagHbAtxV88MIOx
	nUVZlW4ZwyLKn5lIZNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRB4B-00000008CEn-2OBF;
	Thu, 04 Dec 2025 15:16:23 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRB49-00000008CE9-0LRZ
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Dec 2025 15:16:22 +0000
Message-ID: <369afee2-2ae9-4dee-ab0c-c9f196c8dbb1@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1764861375;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C1WFKmJAqdQOsrn5LBL7ihECviyJrkF8uPSQqPQKLmw=;
	b=Muw99Q3oLkmh1GuLJgjVocivZRtHEuRhrWoQoFNBg0w4a3Ls2dUzsY7oeA/sGkzfk9x3ql
	HrtQbATnA74HAQFpZw+uAFrZra1Kaj8/4p6+YtXR4BXBkjUMgBsT7oHR7gUXN/KZ47a8OP
	wwl5iU0UrWDxHndsG6QlPgaGmCldnBI=
Date: Thu, 4 Dec 2025 15:16:10 +0000
MIME-Version: 1.0
Subject: Re: [PATCH v6 0/4] drm/atomic-helpers: Fix MCDE/R-Car DU regressions
To: Linus Walleij <linusw@kernel.org>, Vicente Bergas <vicencb@gmail.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Geert Uytterhoeven <geert@linux-m68k.org>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_071621_546587_BAE2BA0C 
X-CRM114-Status: GOOD (  13.24  )
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

Hi,


On 02/12/2025 21:02, Linus Walleij wrote:
> This fixes two regressions experienced in the MCDE and
> R-Car DU DRM drivers after
> commit c9b1150a68d9362a0827609fc0dc1664c0d8bfe1
> "drm/atomic-helper: Re-order bridge chain pre-enable and post-disable"
> caused a series of regressions in all panels that send
> DSI commands in their .prepare() and .unprepare()
> callbacks.>
> This series make it possible to selectively bring back the
> old behaviour with explicit semantics and implements
> the old behaviour as modified commit tails in MCDE and
> R-Car DU.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---

Thank you for your patches, Linus. I am sorry multiple drivers had
regressed due the original patches.

I haven't been tracking the mailing lists actively past few weeks, and
only came across this when Laurent mentioned a patch from the v3 of this
series a couple days back in a discussion for the Rockchip drivers.

My email-id that is indeed used in all those conversations is long gone,
and I had hoped having the newer email-id in the sign-off-by tags would
make up for it. Perhaps that wasn't the case.


I am a little late, but I did give a look at the v6. I don't for-see any
concerns with it.


--
Regards
Aradhya



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
