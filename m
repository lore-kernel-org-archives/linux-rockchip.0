Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82844C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 09:53:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1FA7206ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 09:53:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="b8eE2Nd/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1FA7206ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cy4yjgsWhgjDakDALGM+MMtSrzQRB9HI9Im51VLb6uI=; b=b8eE2Nd/VuxWKQxQGJ5k39XBA
	60Ki7RxAEulNV8f7FQ27zrv4t1UrGr7IOt2H6zghI0gEcOkcsElB1f0gClbAVrw/qhxz1zO7WKEJ2
	R5az9ohoI8iOFfozkId56qlTKKmYVZUc80orzx/pYA1qInUNtVrGTGnVbsAkhbPWDxBcjciVwbjM8
	FggzBarCDf+mIwLf0xpl9SHBGoono2fcbYz5Ix16PnALruUgDG1KAocu3ru/5OP+j86am0kn+sBM5
	hFjlQ+V0IAW29zkbFKmajUj4r6yk3giq7DtLgvhqtGHGXPLIPet5l2sNCPuCQcP4OPPJeVepwZ58q
	ODX5shdIA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbhOE-0004fi-CO; Sun, 08 Nov 2020 09:53:38 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbhOA-0004eY-Da; Sun, 08 Nov 2020 09:53:35 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 0A07E8051F;
 Sun,  8 Nov 2020 10:53:23 +0100 (CET)
Date: Sun, 8 Nov 2020 10:53:22 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Jonathan Liu <net147@gmail.com>, Russell King <rmk+kernel@arm.linux.org.uk>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: Avoid resetting force in the
 detect function
Message-ID: <20201108095322.GA1129714@ravnborg.org>
References: <20201031081747.372599-1-net147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031081747.372599-1-net147@gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8 a=e5mUnYsNAAAA:8
 a=O2yIyfgj_DPdiSikqUcA:9 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_045334_590790_8BBAFED3 
X-CRM114-Status: GOOD (  20.56  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Liu Ying <victor.liu@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Russell,

On Sat, Oct 31, 2020 at 07:17:47PM +1100, Jonathan Liu wrote:
> It has been observed that resetting force in the detect function can
> result in the PHY being powered down in response to hot-plug detect
> being asserted, even when the HDMI connector is forced on.
> 
> Enabling debug messages and adding a call to dump_stack() in
> dw_hdmi_phy_power_off() shows the following in dmesg:
> [  160.637413] dwhdmi-rockchip ff940000.hdmi: EVENT=plugin
> [  160.637433] dwhdmi-rockchip ff940000.hdmi: PHY powered down in 0 iterations
> 
> Call trace:
> dw_hdmi_phy_power_off
> dw_hdmi_phy_disable
> dw_hdmi_update_power
> dw_hdmi_detect
> dw_hdmi_connector_detect
> drm_helper_probe_detect_ctx
> drm_helper_hpd_irq_event
> dw_hdmi_irq
> irq_thread_fn
> irq_thread
> kthread
> ret_from_fork
> 
> Fixes: 381f05a7a842 ("drm: bridge/dw_hdmi: add connector mode forcing")
> Signed-off-by: Jonathan Liu <net147@gmail.com>

you are the original author of this code - any comments on this patch?

	Sam

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 748df1cacd2b..0c79a9ba48bb 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2327,12 +2327,6 @@ static enum drm_connector_status dw_hdmi_detect(struct dw_hdmi *hdmi)
>  {
>  	enum drm_connector_status result;
>  
> -	mutex_lock(&hdmi->mutex);
> -	hdmi->force = DRM_FORCE_UNSPECIFIED;
> -	dw_hdmi_update_power(hdmi);
> -	dw_hdmi_update_phy_mask(hdmi);
> -	mutex_unlock(&hdmi->mutex);
> -
>  	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
>  
>  	mutex_lock(&hdmi->mutex);
> -- 
> 2.29.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
