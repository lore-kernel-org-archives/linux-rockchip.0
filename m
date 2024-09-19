Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 805FDCF395D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 15:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4BtVw6upFlGeMvcTDCZwSN43RRbanfMjKcnJ4VCdgg=; b=D1QlNFA1LSlfrb
	uAVNQnP5+1z1aOo0f61NQSxfC4IBxUur4aFm0DEJ1QI8mUi0z9cA7CsZ3sicMynHVkealE0AIwNAm
	CJcEXo2Q/nzhAbfrfLWBMUsUgawO6LjB42qZQ/TswcQMNy34X+M8orcvntoXQqEmKJTsShV7PRbxk
	LecmUuln29udQxAgwVfLrHkvAQUocLgbpLYEYtdQW3AvEtixChDIRU6j/gW9xdgYrzjZnII+oMam1
	0n4zALkm56OvU+XaKX69EPb7JAG1MsZIDN/IiN/Nv72s9lldtqKnKPVxuiJxI+xVWzyEROqIyM24u
	D+S0GHIX616yBx+TGoog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srIwE-0000000AX7j-3con;
	Thu, 19 Sep 2024 15:19:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srIpD-0000000AW7x-02Eu;
	Thu, 19 Sep 2024 15:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SzhrwNTWqn3op7Q7MK/yO/jfaDhB8Okd6g5JGwQ4o9U=; b=yd/iGmcBt65hY8mQMYla7iQyun
	oXFUDn1kHH5781TXxv2MJhOpALlVXWmXKEabRYIeL8ZfCAAikgXM5r5vvyKOM0MQawUBz2YwkME1z
	VUYbzK0x4k3Rbe4flSQBQGhHnOVrqeHcCsTRxnrvTHAII5g+uo230hHyyAKl1Lk5xPX+LsM2FGVu7
	daMhHGEUv8Spz1RKNBm5nRNdu2cpRgTc87GKQpdXKJ7jGvoASa9vXGUyxEm6A3n9fzH/0OYnwN4pl
	Pl3/lReLV+jgxgxfIkilGDp0GJY+MxzyrQTcTbcC+7ilpCbBSc9Sr9PDzppdHbBphmPEaJBBtMgsN
	my89kAwQ==;
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1srIoy-0003k2-9j; Thu, 19 Sep 2024 17:11:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jinjie Ruan <ruanjinjie@huawei.com>
Cc: ruanjinjie@huawei.com
Subject: Re: [PATCH -next v2] drm/rockchip: Use for_each_child_of_node_scoped()
Date: Thu, 19 Sep 2024 17:11:51 +0200
Message-ID: <1846591.8hzESeGDPO@phil>
In-Reply-To: <20240830073454.3539590-1-ruanjinjie@huawei.com>
References: <20240830073454.3539590-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_081207_238684_4A3582EA 
X-CRM114-Status: GOOD (  20.62  )
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

Am Freitag, 30. August 2024, 09:34:54 CEST schrieb Jinjie Ruan:
> Avoids the need for manual cleanup of_node_put() in early exits
> from the loop.
> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> v2:
> - Add Reviewed-by.
> - Split out from the PATCH set.

This patch also appears in your series
"[PATCH -next v2 0/3] drm/rockchip: Simplified with for_each_child_of_node_scoped()"
it seems, so I think you could describe why it was split from there now.

Also patch subject "drm/rockchip: lvds: ...."


Thanks
Heiko

> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 9a01aa450741..f5b3f18794dd 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -548,7 +548,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  	struct drm_encoder *encoder;
>  	struct drm_connector *connector;
>  	struct device_node *remote = NULL;
> -	struct device_node  *port, *endpoint;
> +	struct device_node  *port;
>  	int ret = 0, child_count = 0;
>  	const char *name;
>  	u32 endpoint_id = 0;
> @@ -560,15 +560,13 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  			      "can't found port point, please init lvds panel port!\n");
>  		return -EINVAL;
>  	}
> -	for_each_child_of_node(port, endpoint) {
> +	for_each_child_of_node_scoped(port, endpoint) {
>  		child_count++;
>  		of_property_read_u32(endpoint, "reg", &endpoint_id);
>  		ret = drm_of_find_panel_or_bridge(dev->of_node, 1, endpoint_id,
>  						  &lvds->panel, &lvds->bridge);
> -		if (!ret) {
> -			of_node_put(endpoint);
> +		if (!ret)
>  			break;
> -		}
>  	}
>  	if (!child_count) {
>  		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
