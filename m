From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/1] drm/rockchip: fix integer type used for storing dp
 data rate and lane count
Date: Thu, 09 Jan 2020 01:15:40 +0100
Message-ID: <2028959.b8b8FNkPgY@diego>
References: <20200108223949.355975-1-t.schramm@manjaro.org>
 <20200108223949.355975-2-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20200108223949.355975-2-t.schramm@manjaro.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 8. Januar 2020, 23:39:49 CET schrieb Tobias Schramm:
> commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
> the type of variables used to store the display port data rate and
> number of lanes to u8. However u8 is not sufficient to store the link
> data rate of the display port.
> This commit reverts the type of both the number of lanes and the data
> rate to unsigned int.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.h b/drivers/gpu/drm/rockchip/cdn-dp-core.h
> index 83c4586665b4..806cb0b08982 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.h
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.h
> @@ -94,8 +94,8 @@ struct cdn_dp_device {
>  	struct video_info video_info;
>  	struct cdn_dp_port *port[MAX_PHY];
>  	u8 ports;
> -	u8 max_lanes;
> -	u8 max_rate;
> +	unsigned int max_lanes;

although I would think u8 should be enough for max_lanes?
There shouldn't be be more than 255 dp lanes?


Heiko

> +	unsigned int max_rate;
>  	u8 lanes;
>  	int active_port;
>  
> 
