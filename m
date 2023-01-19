Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75D20C00A5A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 15:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUF3gNYH6JfH62jbIkHQ6PpkIlmsN1nVp83HAxeSWyA=; b=e5jHLT8EzJU3If
	8QSY9xlpm9jx95atEAG/nZap02cxIU+H9wsFhWI8egO0v6Uo3lhEM34P31vg0lWbBYnSkVTz+e/Lq
	OK3jcUgm2IwXSXUU33JirCdMyNI2G/h3jpw/mQNkidmrA/6FwsT6JQdyk/vBdVPCoTyZmu0L1wukZ
	JNUZ3PM3/kDZ6ZxTdxcbSG6UUM/wbYp2FcUXbMFt21RuaEc3f/Xw+73EcWwnus4l7xa++5fQWJaVr
	bCkPvt8NWLn3VhOdlTTcXMU9zaYxn4nyYpZ2k2QdaFhVyS1ZYTeGLb1ugfAM8UJynNFy/JE/JVur4
	up68uKpkf06OpfwC2lxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWfn-005cL8-UZ; Thu, 19 Jan 2023 15:17:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWfj-005cJJ-P4
	for linux-rockchip@lists.infradead.org; Thu, 19 Jan 2023 15:17:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIWfe-0000BA-C4; Thu, 19 Jan 2023 16:17:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIWfW-0001oM-RK; Thu, 19 Jan 2023 16:17:34 +0100
Date: Thu, 19 Jan 2023 16:17:34 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 5/6] drm/rockchip: vop2: add support for the rgb
 output block
Message-ID: <20230119151734.GH24755@pengutronix.de>
References: <20230119143911.3793654-1-michael.riesch@wolfvision.net>
 <20230119143911.3793654-6-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230119143911.3793654-6-michael.riesch@wolfvision.net>
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
X-CRM114-CacheID: sfid-20230119_071747_892227_B1528834 
X-CRM114-Status: GOOD (  30.64  )
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

Hi Michael,

On Thu, Jan 19, 2023 at 03:39:10PM +0100, Michael Riesch wrote:
> The Rockchip VOP2 features an internal RGB output block, which can be
> attached to the video port 2 of the VOP2. Add support for this output
> block.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
>  - move away from wrong assumption that the RGB block is always
>    connected to video port 2 -> check devicetree to find RGB block

Traces of that assumption are still in the commmit message.

> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 44 ++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> +static int vop2_find_rgb_encoder(struct vop2 *vop2)
> +{
> +	struct device_node *node = vop2->dev->of_node;
> +	struct device_node *endpoint;
> +	int i;
> +
> +	for (i = 0; i < vop2->data->nr_vps; i++) {
> +		endpoint = of_graph_get_endpoint_by_regs(node, i,
> +							 ROCKCHIP_VOP2_EP_RGB0);
> +		if (!endpoint)
> +			continue;
> +
> +		of_node_put(endpoint);
> +		return i;
> +	}
> +
> +	return -ENOENT;
> +}
> +
>  static struct reg_field vop2_cluster_regs[VOP2_WIN_MAX_REG] = {
>  	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 0, 0),
>  	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 1, 5),
> @@ -2698,11 +2721,29 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  	if (ret)
>  		return ret;
>  
> +	ret = vop2_find_rgb_encoder(vop2);
> +	if (ret > 0) {

'0' seems to be a valid vp as well. Shouldn't this be ret >= 0?

> +		vop2->rgb = rockchip_rgb_init(dev, &vop2->vps[ret].crtc,
> +					      vop2->drm, ret);
> +		if (IS_ERR(vop2->rgb)) {
> +			if (PTR_ERR(vop2->rgb) == -EPROBE_DEFER) {
> +				ret = PTR_ERR(vop2->rgb);
> +				goto err_crtcs;
> +			}
> +			vop2->rgb = NULL;
> +		}
> +	}
> +

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
