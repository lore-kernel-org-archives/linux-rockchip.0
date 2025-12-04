Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7AA8D2168E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 15:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XSBwPPuvDowfy4VdbhSVcf2PZriKge1AbZnmpR+hOo=; b=ZnogRGeGwN0IRt
	ERG41TtRAXOMchgV6gzB+DFR+EYAOh6i0jN5N/QL+0+7sy6qWJkz4iz+12++QxnwO8LQcF+g8O28r
	goS9snusFr4PxFDOT62EUFNTq14ohNrAZQq4Va6kp/rUR2Ke33b0kRk4HY1WMaIapcqJVX7Cab0Fu
	r5Os/+Q2uzPcBojKD0llO8KAHNerMyZZXA1OGiRzbM8jqx5+wiZj6YUOxjYasq1+s4FyTQH+mLIQd
	MUQjEHKIX4qsuDUv4ZzXdIt7BkqSvtiiVecj4fm3GSQtIrlkfXDZHkc3vJ+tt0jY3X2I9KOYuGg+j
	UScFefN+I4PX2dGyIX6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBRp-00000008DnK-2UXV;
	Thu, 04 Dec 2025 15:40:49 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBRn-00000008Dmr-17pE
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Dec 2025 15:40:48 +0000
Message-ID: <e46f5376-6ec2-41dd-a536-125ff51fd5d5@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1764862843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6mtncvbK5kK9osOeRblxF2+16bxpTOg5JufwUEhd5uo=;
	b=fXeFGKpTl1Cb6hiHT37NJyy3pEAORUdfRzJSh24lyjmktZ7Whvq3cBukQPC5ET73tPWWdY
	AzAS+FL5JTPYxvOHp8OKN1C7gSNpJHo/LCClDlnyhwAhVP2hVprcl8SDPnV/XcFyV92N+r
	/7ddRFibh0ZlZ79NgnYZmZOjsW9cpUA=
Date: Thu, 4 Dec 2025 15:40:13 +0000
MIME-Version: 1.0
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
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
 linux-rockchip@lists.infradead.org
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_074047_604976_D97CC48E 
X-CRM114-Status: GOOD (  17.36  )
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
> commit c9b1150a68d9362a0827609fc0dc1664c0d8bfe1
> "drm/atomic-helper: Re-order bridge chain pre-enable and post-disable"
> caused a series of regressions in all panels that send
> DSI commands in their .prepare() and .unprepare()
> callbacks when used with the Rockchip driver.
> 
> As the CRTC is no longer online at bridge_pre_enable()
> and gone at brige_post_disable() which maps to the panel
> bridge .prepare()/.unprepare() callbacks, any CRTC that
> enable/disable the DSI transmitter in it's enable/disable
> callbacks will be unable to send any DSI commands in the
> .prepare() and .unprepare() callbacks.
> 
> However the Rockchip driver definitely need the CRTC to be
> enabled during .prepare()/.unprepare().
> 
> Solve this by implementing a custom commit tail function
> in the Rockchip driver that always enables the CRTC first
> and disables it last, using the newly exported helpers.
> 
> This patch is an edited carbon-copy of the same patch to
> the ST-Ericsson MCDE driver.
> 
> Link: https://lore.kernel.org/all/CAAMcf8Di8sc_XVZAnzQ9sUiUf-Ayvg2yjhx2dWmvvCnfF3pBRA@mail.gmail.com/
> Reported-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
> Reported-by: Vicente Bergas <vicencb@gmail.com>
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
> Rockchip people: can you please test this patch (along
> with patch 1 of course).
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 50 +++++++++++++++++++++++++++++-
>  1 file changed, 49 insertions(+), 1 deletion(-)
> 
Acked-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
