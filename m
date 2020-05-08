From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 3/3] media: rkvdec: Add the VP9 backend
Date: Fri, 08 May 2020 11:21:08 +0000 (UTC)
Message-ID: <4ac628c6-0845-7bca-2c1a-4d6ef2a4019f@kwiboo.se>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-4-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200505134110.3435-4-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: sv
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, gustavo.padovan-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-05-05 15:41, Ezequiel Garcia wrote:
> From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> 
> The Rockchip VDEC supports VP9 profile 0 up to 4096x2304@30fps. Add
> a backend for this new format.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

I have tested this series on a Rock Pi 4 RK3399 device using
the ffmpeg vp9 request api hwaccel at [1].
Decoding up to 3840x2160@30fps media is working great.
(frame scaling was not tested or fully implemented in ffmpeg hwaccel)

Tested-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>

[1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.2.2

Regards,
Jonas

> ---
>  drivers/staging/media/rkvdec/Makefile     |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1577 +++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c     |   56 +-
>  drivers/staging/media/rkvdec/rkvdec.h     |    6 +
>  4 files changed, 1637 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> 

[...]
