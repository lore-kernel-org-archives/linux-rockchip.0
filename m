From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 0/3] media: rkvdec: Add a VP9 backend
Date: Fri, 13 Dec 2019 14:37:30 +0100
Message-ID: <20191213143730.3b1e4d9e@collabora.com>
References: <20191213133157.105554-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191213133157.105554-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 13 Dec 2019 14:31:54 +0100
Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:

> Hello,
> 
> This patch series adds controls for stateless VP9 decoders plus a VP9
> backend to the rkvdec driver showing how those controls can be used in
> a real implementation. This means this series depends on the rkvdec
> series posted here [1].
> 

Forgot to mention that this implementation has been tested with a
modified version of FFmpeg (please don't look at the code/commits it's
all ugly...)

> Regards,
> 
> Boris
> 
> [1]https://patchwork.linuxtv.org/project/linux-media/list/?series=1483

[2]https://github.com/bbrezillon/FFmpeg/commits/v4l2-vp9

> 
> Boris Brezillon (3):
>   media: v4l2-ctrls: Add the [__]v4l2_ctrl_s_ctrl_compound() helpers
>   media: uapi: Add VP9 stateless decoder controls
>   media: rkvdec: Add the VP9 backend
> 
>  Documentation/media/uapi/v4l/biblio.rst       |   10 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        |  584 ++++++
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  258 +++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1572 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   56 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>  include/media/v4l2-ctrls.h                    |   44 +
>  include/media/vp9-ctrls.h                     |  515 ++++++
>  10 files changed, 3044 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>  create mode 100644 include/media/vp9-ctrls.h
> 
