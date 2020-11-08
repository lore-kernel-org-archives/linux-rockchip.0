Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CDC4C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 10:48:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B372206ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 10:48:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MaS2njVx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B372206ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NvPsuhOMxiBcIEZ/OxVGf5xJoBtSKdA2b/RtN1TQMPQ=; b=MaS2njVxMxeOn3T1+oGep7s7Q
	mfdLyMZzcD5jYzdVgn4Orj9hMEJYXlTXQRLWi7eYL+8OSZbua4B6CebtLR2Wd8c7liT3DoKGAoXX3
	zHCNDYnkVoDbPbp0qtCOHtTzIYfFme32b517yJ5/c883skS3MHvHXjr/puw0rr7lM0JXZNKOoAvf4
	M9A8uDqL853826FYzyAhCgbw97AHX8dqOpjbX0mmHAgOiZdZJTPvew9kLVsLcwacssAt3OeSg/0Uo
	7EPW2YzLi992tXVQCLyv6hPyl9cZ68MIw3lBBgRo7Yqd4eVY8uteSCnenuP1lDJQyMVoTTdfNTyK0
	zrUiPshtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbiEh-0007Dp-Ma; Sun, 08 Nov 2020 10:47:51 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbiEe-0007DB-Ll; Sun, 08 Nov 2020 10:47:49 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id DD80980518;
 Sun,  8 Nov 2020 11:47:43 +0100 (CET)
Date: Sun, 8 Nov 2020 11:47:42 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: Avoid resetting force in the
 detect function
Message-ID: <20201108104742.GA1161483@ravnborg.org>
References: <20201031081747.372599-1-net147@gmail.com>
 <20201108095322.GA1129714@ravnborg.org>
 <20201108095724.GW1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201108095724.GW1551@shell.armlinux.org.uk>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8 a=2388smbMItZUPG-p9eEA:9
 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_054748_855679_A8BF50A8 
X-CRM114-Status: GOOD (  22.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fabio Estevam <fabio.estevam@freescale.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Jonas Karlman <jonas@kwiboo.se>, Jonathan Liu <net147@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Liu Ying <victor.liu@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Russell,

On Sun, Nov 08, 2020 at 09:57:25AM +0000, Russell King - ARM Linux admin wrote:
> On Sun, Nov 08, 2020 at 10:53:22AM +0100, Sam Ravnborg wrote:
> > Russell,
> > 
> > On Sat, Oct 31, 2020 at 07:17:47PM +1100, Jonathan Liu wrote:
> > > It has been observed that resetting force in the detect function can
> > > result in the PHY being powered down in response to hot-plug detect
> > > being asserted, even when the HDMI connector is forced on.
> > > 
> > > Enabling debug messages and adding a call to dump_stack() in
> > > dw_hdmi_phy_power_off() shows the following in dmesg:
> > > [  160.637413] dwhdmi-rockchip ff940000.hdmi: EVENT=plugin
> > > [  160.637433] dwhdmi-rockchip ff940000.hdmi: PHY powered down in 0 iterations
> > > 
> > > Call trace:
> > > dw_hdmi_phy_power_off
> > > dw_hdmi_phy_disable
> > > dw_hdmi_update_power
> > > dw_hdmi_detect
> > > dw_hdmi_connector_detect
> > > drm_helper_probe_detect_ctx
> > > drm_helper_hpd_irq_event
> > > dw_hdmi_irq
> > > irq_thread_fn
> > > irq_thread
> > > kthread
> > > ret_from_fork
> > > 
> > > Fixes: 381f05a7a842 ("drm: bridge/dw_hdmi: add connector mode forcing")
> > > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > 
> > you are the original author of this code - any comments on this patch?
> 
> No further comments beyond what has already been discussed, and the
> long and short of it is it's been so long that I don't remember why
> that code was there. Given that, I'm not even in a position to ack
> the change. Sorry.
Thanks for the quick reply.

Given that this fixes a problem for Jonathan I will apply this to -fixes
if there is no other feedback the next couple of days.
If it introduces regression we can take it from there.

Jonathan - please ping me if I forget.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
