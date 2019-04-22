From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 14/15] rockchip/vpu: Add support for MPEG-2 decoding
Date: Mon, 22 Apr 2019 14:59:17 +0000
Message-ID: <DB8PR03MB5898C649C628B6FDEF4E2C80AC220@DB8PR03MB5898.eurprd03.prod.outlook.com>
References: <20190422080818.29130-1-boris.brezillon@collabora.com>
 <20190422080818.29130-15-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190422080818.29130-15-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Content-ID: <EB973E92AA36734E9CD149EBCAE20546-yI6K9L9iJZCcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-04-22 10:08, Boris Brezillon wrote:
> From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Please restore my commit authorship, it seems to have changed in v3.

I would appreciate if you can pick the fixups from [1] and [2] to sync rk3288/rk3399 code.
Please also squash both MPEG-2 commits, that is closer to the original commit at [4].

This module seems to crash after repeated rmmod / insmod, calls to video_device_release
seems to be the culprit for crash. There is also an issue with uneven pm runtime autosuspend calls
leaving clocks enabled when module is unloaded.

Feel free to pick/squash any of the changes at [3], they fixes the crash and uneven autosuspend for me.

MPEG-2 decoding is working on my RK3288 and RK3399 devices.

Fixup commits:
[1] https://github.com/Kwiboo/linux-rockchip/commit/8d8b5aca522176d17b6a0f13da57fd9b8e7d1e9a
[2] https://github.com/Kwiboo/linux-rockchip/commit/75de5f322ffe889154832f6ebfb08e48257af526
[3] https://github.com/Kwiboo/linux-rockchip/commit/0729b53c825a630c9040d28541d2635a42177361

Original MPEG-2 commit:
[4] https://github.com/Kwiboo/linux-rockchip/commit/25d9502927540c6f17c65d52a350b28c664cbf5a

Thanks,
Jonas

>
> Add MPEG-2 decoding, only on RK3399. Other SoCs
> and support for other codecs will be added in the future.
>
> Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> --
> Changes from v2:
> * Remove uneeded check from rockchip_vpu_get_ctrl.
> * Use user negotiated resolution when programming the hardware.
> ---
>  drivers/staging/media/rockchip/vpu/Makefile   |   4 +-
>  .../media/rockchip/vpu/rk3399_vpu_hw.c        |  40 ++-
>  .../rockchip/vpu/rk3399_vpu_hw_mpeg2_dec.c    | 273 ++++++++++++++++++
>  .../staging/media/rockchip/vpu/rockchip_vpu.h |   9 +
>  .../media/rockchip/vpu/rockchip_vpu_common.h  |   3 +
>  .../media/rockchip/vpu/rockchip_vpu_drv.c     |  30 ++
>  .../media/rockchip/vpu/rockchip_vpu_hw.h      |  15 +
>  .../media/rockchip/vpu/rockchip_vpu_mpeg2.c   |  61 ++++
>  8 files changed, 433 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_mpeg2_dec.c
>  create mode 100644 drivers/staging/media/rockchip/vpu/rockchip_vpu_mpeg2.c
>
> ...
