From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
Date: Tue, 07 Jul 2020 13:33:05 +0200
Message-ID: <3580478.W0C5q6Mt6N@diego>
References: <20200707112526.18438-1-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200707112526.18438-1-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, huangtao@rock-chips.com, andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, kever.yang@rock-chips.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. Juli 2020, 13:25:26 CEST schrieb Sandy Huang:
> don't mask possible_crtcs if remote-point is disabled.
> 
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I guess this could've benefitted from a "changelog":

changes in v2:
- drop additional of_node_put, as ep will be put with the next
  iteration of for_each_endpoint_of_node()


> ---
>  drivers/gpu/drm/drm_of.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index fdb05fbf72a0..565f05f5f11b 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -66,6 +66,9 @@ uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>  	uint32_t possible_crtcs = 0;
>  
>  	for_each_endpoint_of_node(port, ep) {
> +		if (!of_device_is_available(ep))
> +			continue;
> +
>  		remote_port = of_graph_get_remote_port(ep);
>  		if (!remote_port) {
>  			of_node_put(ep);
> 
