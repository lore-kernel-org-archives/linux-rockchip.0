Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8101EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 08:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwGfKpmim4fe8Ebx2rDynDFFqHxTnLTmt+awxpb5iE0=; b=bbcPQkaeYlMsPf
	fNVLAimLuxMTaO4jLqWbUhIQZL/2w9r0QDYgfSBxe1zyA1q8O1X1zSPomnVIqZI82n2o45zq2p6xJ
	k+xMe+8htnGybHJsCNL71W5YR5Pt+eHqTwAIZg4VF97y+tONjKSZG8Biy72twedHT2C4MLBPFpM8b
	5+oZmyrE7rHyTVpt/QAH/JXImSlOUo68zXQrB6J2Z0TQdZEdkb9CKC3QC4+/5e6DpumkItM726PX4
	As5Ujhni2HvLCpUerjgBkC22B62/pR+6YM2TxZ/D+pwU53lK4406pi+uRKucfFu6/XVU8FVwFol09
	vtCq1e85oCWIfLIdL9nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBswh-00Df6k-0F;
	Wed, 21 Jun 2023 08:12:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBswd-00Df5P-2F
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 08:12:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBswS-000166-OV; Wed, 21 Jun 2023 10:11:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBswR-0005Fo-R0; Wed, 21 Jun 2023 10:11:51 +0200
Date: Wed, 21 Jun 2023 10:11:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] drm/rockchip: vop2: Add missing call to crtc reset
 helper
Message-ID: <20230621081151.GY18491@pengutronix.de>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
 <20230620064732.1525594-5-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620064732.1525594-5-jonas@kwiboo.se>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_011203_730329_227F4D72 
X-CRM114-Status: GOOD (  24.50  )
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

On Tue, Jun 20, 2023 at 06:47:39AM +0000, Jonas Karlman wrote:
> Add missing call to crtc reset helper to properly vblank reset.
> 
> Also move vop2_crtc_reset and call vop2_crtc_destroy_state to simplify
> and remove duplicated code.
> 
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 28 ++++++++------------
>  1 file changed, 11 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index f725487d02ef..1be84fe0208f 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2080,23 +2080,6 @@ static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
>  	.atomic_disable = vop2_crtc_atomic_disable,
>  };
>  
> -static void vop2_crtc_reset(struct drm_crtc *crtc)
> -{
> -	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
> -
> -	if (crtc->state) {
> -		__drm_atomic_helper_crtc_destroy_state(crtc->state);
> -		kfree(vcstate);
> -	}
> -
> -	vcstate = kzalloc(sizeof(*vcstate), GFP_KERNEL);
> -	if (!vcstate)
> -		return;
> -
> -	crtc->state = &vcstate->base;
> -	crtc->state->crtc = crtc;
> -}
> -
>  static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
>  {
>  	struct rockchip_crtc_state *vcstate;
> @@ -2123,6 +2106,17 @@ static void vop2_crtc_destroy_state(struct drm_crtc *crtc,
>  	kfree(vcstate);
>  }
>  
> +static void vop2_crtc_reset(struct drm_crtc *crtc)
> +{
> +	struct rockchip_crtc_state *vcstate =
> +		kzalloc(sizeof(*vcstate), GFP_KERNEL);
> +
> +	if (crtc->state)
> +		vop2_crtc_destroy_state(crtc, crtc->state);
> +
> +	__drm_atomic_helper_crtc_reset(crtc, &vcstate->base);
> +}

You missed to check for allocation failures before using vcstate.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
